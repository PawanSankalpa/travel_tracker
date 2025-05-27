--
-- PostgreSQL database dump
--

-- Dumped from database version 15.10
-- Dumped by pg_dump version 15.13 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.countries (
    id integer NOT NULL,
    country_code character(2) NOT NULL,
    country_name text
);


ALTER TABLE public.countries OWNER TO postgres;

--
-- Name: flags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.flags (
    id integer NOT NULL,
    name text,
    flag text
);


ALTER TABLE public.flags OWNER TO postgres;

--
-- Name: visited_countries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.visited_countries (
    id integer NOT NULL,
    country_code character(2) NOT NULL,
    country_name text
);


ALTER TABLE public.visited_countries OWNER TO postgres;

--
-- Name: visited_countries_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visited_countries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visited_countries_id_seq OWNER TO postgres;

--
-- Name: visited_countries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visited_countries_id_seq OWNED BY public.countries.id;


--
-- Name: visited_countries_id_seq1; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.visited_countries_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.visited_countries_id_seq1 OWNER TO postgres;

--
-- Name: visited_countries_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.visited_countries_id_seq1 OWNED BY public.visited_countries.id;


--
-- Name: countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.visited_countries_id_seq'::regclass);


--
-- Name: visited_countries id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited_countries ALTER COLUMN id SET DEFAULT nextval('public.visited_countries_id_seq1'::regclass);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.countries (id, country_code, country_name) FROM stdin;
6	AF	Afghanistan
7	AX	Aland Islands
8	AL	Albania
9	DZ	Algeria
10	AS	American Samoa
11	AD	Andorra
12	AO	Angola
13	AI	Anguilla
14	AQ	Antarctica
15	AG	Antigua and Barbuda
16	AR	Argentina
17	AM	Armenia
18	AW	Aruba
19	AU	Australia
20	AT	Austria
21	AZ	Azerbaijan
22	ST	Sao Tome and Principe
23	BS	Bahamas
24	BH	Bahrain
25	BD	Bangladesh
26	BB	Barbados
27	BY	Belarus
28	BE	Belgium
29	BZ	Belize
30	BJ	Benin
31	BT	Bhutan
32	BO	Bolivia
33	BA	Bosnia and Herzegovina
34	BW	Botswana
35	BV	Bouvet Island
36	BR	Brazil
37	VG	British Virgin Islands
38	IO	British Indian Ocean Territory
39	BN	Brunei Darussalam
40	BG	Bulgaria
41	BF	Burkina Faso
42	BI	Burundi
43	KH	Cambodia
44	CM	Cameroon
45	CA	Canada
46	CV	Cape Verde
47	KY	Cayman Islands
48	CF	Central African Republic
49	TD	Chad
50	CL	Chile
51	CN	China
52	HK	Hong Kong, SAR China
53	CR	Costa Rica
54	MO	Macao, SAR China
55	CX	Christmas Island
56	CC	Cocos (Keeling) Islands
57	CO	Colombia
58	KM	Comoros
59	CD	Congo, (Kinshasa)
60	CK	Cook Islands
61	CI	Côte d'Ivoire
62	HR	Croatia
63	CU	Cuba
64	CY	Cyprus
65	CZ	Czech Republic
66	DK	Denmark
67	DJ	Djibouti
68	DM	Dominica
69	DO	Dominican Republic
70	EC	Ecuador
71	EG	Egypt
72	SV	El Salvador
73	GQ	Equatorial Guinea
74	ER	Eritrea
75	EE	Estonia
76	ET	Ethiopia
77	FK	Falkland Islands (Malvinas)
78	FO	Faroe Islands
79	FJ	Fiji
80	FI	Finland
81	FR	France
82	GF	French Guiana
83	PF	French Polynesia
84	TF	French Southern Territories
85	GA	Gabon
86	GM	Gambia
87	GE	Georgia
88	DE	Germany
89	GH	Ghana
90	GI	Gibraltar
91	GR	Greece
92	GL	Greenland
93	GD	Grenada
94	GP	Guadeloupe
95	GU	Guam
96	GT	Guatemala
97	GG	Guernsey
98	GN	Guinea
99	GW	Guinea-Bissau
100	GY	Guyana
101	HT	Haiti
102	HM	Heard and Mcdonald Islands
103	VA	Holy See (Vatican City State)
104	HN	Honduras
105	HU	Hungary
106	IS	Iceland
107	FM	Micronesia, Federated States of
108	RE	Réunion
109	ID	Indonesia
110	IR	Iran, Islamic Republic of
111	IQ	Iraq
112	IE	Ireland
113	IM	Isle of Man
114	IL	Israel
115	IT	Italy
116	JM	Jamaica
117	JP	Japan
118	JE	Jersey
119	JO	Jordan
120	MD	Moldova
121	KZ	Kazakhstan
122	KE	Kenya
123	KI	Kiribati
124	KP	Korea (North)
125	KR	Korea (South)
126	KW	Kuwait
127	KG	Kyrgyzstan
128	LA	Lao PDR
129	LV	Latvia
130	LB	Lebanon
131	LS	Lesotho
132	LR	Liberia
133	LY	Libya
134	LI	Liechtenstein
135	LT	Lithuania
136	LU	Luxembourg
137	MK	Macedonia, Republic of
138	MG	Madagascar
139	MW	Malawi
140	MY	Malaysia
141	MV	Maldives
142	BM	Bermuda
143	ML	Mali
144	MT	Malta
145	MH	Marshall Islands
146	MQ	Martinique
147	MR	Mauritania
148	MU	Mauritius
149	YT	Mayotte
150	MX	Mexico
151	MC	Monaco
152	MN	Mongolia
153	ME	Montenegro
154	MS	Montserrat
155	MA	Morocco
156	MZ	Mozambique
157	MM	Myanmar
158	NA	Namibia
159	NR	Nauru
160	NP	Nepal
161	NL	Netherlands
162	AN	Netherlands Antilles
163	NC	New Caledonia
164	NZ	New Zealand
165	NI	Nicaragua
166	NE	Niger
167	NG	Nigeria
168	NU	Niue
169	NF	Norfolk Island
170	MP	Northern Mariana Islands
171	NO	Norway
172	OM	Oman
173	PK	Pakistan
174	PW	Palau
175	PS	Palestinian Territory
176	PA	Panama
177	PG	Papua New Guinea
178	PY	Paraguay
179	PE	Peru
180	PH	Philippines
181	PN	Pitcairn
182	PT	Portugal
183	PR	Puerto Rico
184	QA	Qatar
185	RO	Romania
186	RU	Russian Federation
187	RW	Rwanda
188	BL	Saint-Barthélemy
189	SH	Saint Helena
190	KN	Saint Kitts and Nevis
191	LC	Saint Lucia
192	MF	Saint-Martin (French part)
193	PM	Saint Pierre and Miquelon
194	VC	Saint Vincent and Grenadines
195	WS	Samoa
196	SM	San Marino
197	SA	Saudi Arabia
198	SN	Senegal
199	RS	Serbia
200	SC	Seychelles
201	SL	Sierra Leone
202	SG	Singapore
203	SK	Slovakia
204	SI	Slovenia
205	SB	Solomon Islands
206	SO	Somalia
207	ZA	South Africa
208	GS	South Georgia and the South Sandwich Islands
209	SS	South Sudan
210	ES	Spain
211	LK	Sri Lanka
212	SD	Sudan
213	SR	Suriname
214	SJ	Svalbard and Jan Mayen Islands
215	SZ	Swaziland
216	SE	Sweden
217	CH	Switzerland
218	SY	Syrian Arab Republic (Syria)
219	TW	Taiwan, Republic of China
220	TJ	Tajikistan
221	TZ	Tanzania, United Republic of
222	TH	Thailand
223	IN	India
224	CG	Congo (Brazzaville)
225	PL	Poland
226	TL	Timor-Leste
227	TG	Togo
228	TK	Tokelau
229	TO	Tonga
230	TT	Trinidad and Tobago
231	TN	Tunisia
232	TR	Turkey
233	TM	Turkmenistan
234	TC	Turks and Caicos Islands
235	TV	Tuvalu
236	UG	Uganda
237	UA	Ukraine
238	AE	United Arab Emirates
239	GB	United Kingdom
240	US	United States of America
241	UM	US Minor Outlying Islands
242	UY	Uruguay
243	UZ	Uzbekistan
244	VU	Vanuatu
245	VE	Venezuela (Bolivarian Republic)
246	VN	Viet Nam
247	VI	Virgin Islands, US
248	WF	Wallis and Futuna Islands
249	EH	Western Sahara
250	YE	Yemen
251	ZM	Zambia
252	ZW	Zimbabwe
\.


--
-- Data for Name: flags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.flags (id, name, flag) FROM stdin;
1	Afghanistan	🇦🇫
2	Aland Islands	🇦🇽
3	Albania	🇦🇱
4	Algeria	🇩🇿
5	American Samoa	🇦🇸
6	Andorra	🇦🇩
7	Angola	🇦🇴
8	Anguilla	🇦🇮
9	Antarctica	🇦🇶
10	Antigua And Barbuda	🇦🇬
11	Argentina	🇦🇷
12	Armenia	🇦🇲
13	Aruba	🇦🇼
14	Australia	🇦🇺
15	Austria	🇦🇹
16	Azerbaijan	🇦🇿
18	Bahrain	🇧🇭
19	Bangladesh	🇧🇩
20	Barbados	🇧🇧
21	Belarus	🇧🇾
22	Belgium	🇧🇪
23	Belize	🇧🇿
24	Benin	🇧🇯
25	Bermuda	🇧🇲
26	Bhutan	🇧🇹
27	Bolivia	🇧🇴
155	Bonaire, Sint Eustatius and Saba	🇧🇶
28	Bosnia and Herzegovina	🇧🇦
29	Botswana	🇧🇼
30	Bouvet Island	🇧🇻
31	Brazil	🇧🇷
32	British Indian Ocean Territory	🇮🇴
33	Brunei	🇧🇳
34	Bulgaria	🇧🇬
35	Burkina Faso	🇧🇫
36	Burundi	🇧🇮
37	Cambodia	🇰🇭
38	Cameroon	🇨🇲
39	Canada	🇨🇦
40	Cape Verde	🇨🇻
41	Cayman Islands	🇰🇾
42	Central African Republic	🇨🇫
43	Chad	🇹🇩
44	Chile	🇨🇱
45	China	🇨🇳
46	Christmas Island	🇨🇽
47	Cocos (Keeling) Islands	🇨🇨
48	Colombia	🇨🇴
49	Comoros	🇰🇲
50	Congo	🇨🇬
52	Cook Islands	🇨🇰
53	Costa Rica	🇨🇷
54	Cote D'Ivoire (Ivory Coast)	🇨🇮
55	Croatia	🇭🇷
56	Cuba	🇨🇺
249	Curaçao	🇨🇼
57	Cyprus	🇨🇾
58	Czech Republic	🇨🇿
51	Democratic Republic of the Congo	🇨🇩
59	Denmark	🇩🇰
60	Djibouti	🇩🇯
61	Dominica	🇩🇲
62	Dominican Republic	🇩🇴
63	East Timor	🇹🇱
64	Ecuador	🇪🇨
65	Egypt	🇪🇬
66	El Salvador	🇸🇻
67	Equatorial Guinea	🇬🇶
68	Eritrea	🇪🇷
69	Estonia	🇪🇪
70	Ethiopia	🇪🇹
71	Falkland Islands	🇫🇰
72	Faroe Islands	🇫🇴
73	Fiji Islands	🇫🇯
74	Finland	🇫🇮
75	France	🇫🇷
76	French Guiana	🇬🇫
77	French Polynesia	🇵🇫
78	French Southern Territories	🇹🇫
79	Gabon	🇬🇦
80	Gambia The	🇬🇲
81	Georgia	🇬🇪
82	Germany	🇩🇪
83	Ghana	🇬🇭
84	Gibraltar	🇬🇮
85	Greece	🇬🇷
86	Greenland	🇬🇱
87	Grenada	🇬🇩
88	Guadeloupe	🇬🇵
89	Guam	🇬🇺
90	Guatemala	🇬🇹
91	Guernsey and Alderney	🇬🇬
92	Guinea	🇬🇳
93	Guinea-Bissau	🇬🇼
94	Guyana	🇬🇾
95	Haiti	🇭🇹
96	Heard Island and McDonald Islands	🇭🇲
97	Honduras	🇭🇳
98	Hong Kong S.A.R.	🇭🇰
99	Hungary	🇭🇺
100	Iceland	🇮🇸
101	India	🇮🇳
102	Indonesia	🇮🇩
103	Iran	🇮🇷
104	Iraq	🇮🇶
105	Ireland	🇮🇪
106	Israel	🇮🇱
107	Italy	🇮🇹
108	Jamaica	🇯🇲
109	Japan	🇯🇵
110	Jersey	🇯🇪
111	Jordan	🇯🇴
112	Kazakhstan	🇰🇿
113	Kenya	🇰🇪
114	Kiribati	🇰🇮
248	Kosovo	🇽🇰
117	Kuwait	🇰🇼
118	Kyrgyzstan	🇰🇬
119	Laos	🇱🇦
120	Latvia	🇱🇻
121	Lebanon	🇱🇧
122	Lesotho	🇱🇸
123	Liberia	🇱🇷
124	Libya	🇱🇾
125	Liechtenstein	🇱🇮
126	Lithuania	🇱🇹
127	Luxembourg	🇱🇺
128	Macau S.A.R.	🇲🇴
130	Madagascar	🇲🇬
131	Malawi	🇲🇼
132	Malaysia	🇲🇾
133	Maldives	🇲🇻
134	Mali	🇲🇱
135	Malta	🇲🇹
136	Man (Isle of)	🇮🇲
137	Marshall Islands	🇲🇭
138	Martinique	🇲🇶
139	Mauritania	🇲🇷
140	Mauritius	🇲🇺
141	Mayotte	🇾🇹
142	Mexico	🇲🇽
143	Micronesia	🇫🇲
144	Moldova	🇲🇩
145	Monaco	🇲🇨
146	Mongolia	🇲🇳
147	Montenegro	🇲🇪
148	Montserrat	🇲🇸
149	Morocco	🇲🇦
150	Mozambique	🇲🇿
151	Myanmar	🇲🇲
152	Namibia	🇳🇦
153	Nauru	🇳🇷
154	Nepal	🇳🇵
156	Netherlands	🇳🇱
157	New Caledonia	🇳🇨
158	New Zealand	🇳🇿
159	Nicaragua	🇳🇮
160	Niger	🇳🇪
161	Nigeria	🇳🇬
162	Niue	🇳🇺
163	Norfolk Island	🇳🇫
115	North Korea	🇰🇵
129	North Macedonia	🇲🇰
164	Northern Mariana Islands	🇲🇵
165	Norway	🇳🇴
166	Oman	🇴🇲
167	Pakistan	🇵🇰
168	Palau	🇵🇼
169	Palestinian Territory Occupied	🇵🇸
170	Panama	🇵🇦
171	Papua new Guinea	🇵🇬
172	Paraguay	🇵🇾
173	Peru	🇵🇪
174	Philippines	🇵🇭
175	Pitcairn Island	🇵🇳
176	Poland	🇵🇱
177	Portugal	🇵🇹
178	Puerto Rico	🇵🇷
179	Qatar	🇶🇦
180	Reunion	🇷🇪
181	Romania	🇷🇴
182	Russia	🇷🇺
183	Rwanda	🇷🇼
184	Saint Helena	🇸🇭
185	Saint Kitts And Nevis	🇰🇳
186	Saint Lucia	🇱🇨
187	Saint Pierre and Miquelon	🇵🇲
188	Saint Vincent And The Grenadines	🇻🇨
189	Saint-Barthelemy	🇧🇱
190	Saint-Martin (French part)	🇲🇫
191	Samoa	🇼🇸
192	San Marino	🇸🇲
193	Sao Tome and Principe	🇸🇹
194	Saudi Arabia	🇸🇦
195	Senegal	🇸🇳
196	Serbia	🇷🇸
197	Seychelles	🇸🇨
198	Sierra Leone	🇸🇱
199	Singapore	🇸🇬
250	Sint Maarten (Dutch part)	🇸🇽
200	Slovakia	🇸🇰
201	Slovenia	🇸🇮
202	Solomon Islands	🇸🇧
203	Somalia	🇸🇴
204	South Africa	🇿🇦
205	South Georgia	🇬🇸
116	South Korea	🇰🇷
206	South Sudan	🇸🇸
207	Spain	🇪🇸
208	Sri Lanka	🇱🇰
209	Sudan	🇸🇩
210	Suriname	🇸🇷
211	Svalbard And Jan Mayen Islands	🇸🇯
212	Swaziland	🇸🇿
213	Sweden	🇸🇪
214	Switzerland	🇨🇭
215	Syria	🇸🇾
216	Taiwan	🇹🇼
217	Tajikistan	🇹🇯
218	Tanzania	🇹🇿
219	Thailand	🇹🇭
17	The Bahamas	🇧🇸
220	Togo	🇹🇬
221	Tokelau	🇹🇰
222	Tonga	🇹🇴
223	Trinidad And Tobago	🇹🇹
224	Tunisia	🇹🇳
225	Turkey	🇹🇷
226	Turkmenistan	🇹🇲
227	Turks And Caicos Islands	🇹🇨
228	Tuvalu	🇹🇻
229	Uganda	🇺🇬
230	Ukraine	🇺🇦
231	United Arab Emirates	🇦🇪
232	United Kingdom	🇬🇧
233	United States	🇺🇸
234	United States Minor Outlying Islands	🇺🇲
235	Uruguay	🇺🇾
236	Uzbekistan	🇺🇿
237	Vanuatu	🇻🇺
238	Vatican City State (Holy See)	🇻🇦
239	Venezuela	🇻🇪
240	Vietnam	🇻🇳
241	Virgin Islands (British)	🇻🇬
242	Virgin Islands (US)	🇻🇮
243	Wallis And Futuna Islands	🇼🇫
244	Western Sahara	🇪🇭
245	Yemen	🇾🇪
246	Zambia	🇿🇲
247	Zimbabwe	🇿🇼
\.


--
-- Data for Name: visited_countries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.visited_countries (id, country_code, country_name) FROM stdin;
1	LK	Sri Lanka
2	IN	India
3	AU	Australia
4	OM	Oman
5	CN	China
6	US	United States of America
7	IQ	Iraq
8	NZ	New Zealand
9	IT	Italy
10	MV	Maldives
\.


--
-- Name: visited_countries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visited_countries_id_seq', 252, true);


--
-- Name: visited_countries_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.visited_countries_id_seq1', 10, true);


--
-- Name: flags flags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.flags
    ADD CONSTRAINT flags_pkey PRIMARY KEY (id);


--
-- Name: countries visited_countries_country_code_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT visited_countries_country_code_key UNIQUE (country_code);


--
-- Name: visited_countries visited_countries_country_code_key1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_country_code_key1 UNIQUE (country_code);


--
-- Name: countries visited_countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.countries
    ADD CONSTRAINT visited_countries_pkey PRIMARY KEY (id);


--
-- Name: visited_countries visited_countries_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.visited_countries
    ADD CONSTRAINT visited_countries_pkey1 PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

