import express from "express";
import bodyParser from "body-parser";
import pg from "pg";
import env from "dotenv";
import fs, { fstat } from "fs";
import csv from "csv-parser";
import { count } from "console";
import { encode } from "querystring";

const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

env.config();

const db = new pg.Client({
  connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false, // Required for some hosted DBs like Supabase
    },
  }); 

db.connect();
/* --------------insert the csv file into the database--------------- */

// once you run this code you can comment it out (the data inserting part)

const countries_insert = [];

fs.createReadStream("countries.csv")
  .pipe(csv())
  .on("data", (row) => {
    countries_insert.push(row);
  })
  .on("end", async () => {
    for (const country of countries_insert) {
      const country_code = country.country_code;
      const country_name = country.country_name;

      try {
        await db.query(
          "INSERT INTO countries (country_code, country_name) VALUES ($1, $2)",
          [country_code, country_name]
        );
      } catch (error) {
        console.error(`❌ Error inserting ${country_name}:`, error.message);
      }
    }
  });




/* ----------Done inserting data into the database ----------------*/

app.get("/", async (req, res) => {
  try {
    const result = await db.query("SELECT country_code FROM visited_countries");
    // let countries = [];

    // result.rows.forEach((country) => {
    //   countries.push(country.country_code);
    // });
    const countries = result.rows.map((row) => row.country_code);
    console.log(result.rows);
    res.render("index.ejs", {
      countries: countries,
      total: countries.length,
      message: req.query.message || null,
    });

  } catch (error) {
    res.sendStatus(500);
  }
});

app.post("/add", async(req, res) => {

  try {
    const result_countries = await db.query("SELECT country_code FROM visited_countries");
    const countries = result_countries.rows.map((row) => row.country_code);

    const visited_country = req.body.country.trim().toLowerCase().replaceAll(" ", "");
    const result = await db.query("SELECT * FROM countries WHERE LOWER(REPLACE(country_name, ' ', '')) = $1", [
      visited_country
    ])

    if (result.rows.length === 0 ){
      console.log("❌ Country did not found", visited_country)
      return res.redirect("/?message=" + encodeURIComponent(`${req.body.country} did not found! Try again with the standard name`));

    }

    const { id, country_code, country_name } =result.rows[0]

    // check for the duplications
    const duplicateCheck = await db.query("SELECT * FROM visited_countries WHERE country_code = $1", [
      country_code
    ]);

    if (duplicateCheck.rows.length > 0){
      console.log("Country has already been added: ", duplicateCheck.rows[0].country_name);
      return res.redirect("/?message=" + encodeURIComponent(`${req.body.country} has already been added!`))
    }

    //insert the data into the visited_countries
    await db.query("INSERT INTO visited_countries (country_code, country_name) VALUES ($1, $2)", 
      [country_code, country_name]
    );
    console.log("✅ Country added!", country_name);
    res.redirect("/?message=" + encodeURIComponent(`✅ ${req.body.country} added!`));

  } catch (error) {
    console.error("❌ Error in /add route:", error.message);
    res.sendStatus(500);
  }
  
})


app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
