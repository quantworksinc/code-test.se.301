--
-- PostgreSQL database dump
--

-- Dumped from database version 10.7
-- Dumped by pg_dump version 10.7

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: char_death_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.char_death_details (
    id integer NOT NULL,
    season_died integer NOT NULL,
    name character varying(30) NOT NULL,
    episode_died integer NOT NULL,
    killed_by character varying(30) NOT NULL
);


--
-- Name: char_death_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.char_death_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: char_death_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.char_death_details_id_seq OWNED BY public.char_death_details.id;


--
-- Name: char_death_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.char_death_details ALTER COLUMN id SET DEFAULT nextval('public.char_death_details_id_seq'::regclass);


--
-- Data for Name: char_death_details; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.char_death_details (id, season_died, name, episode_died, killed_by) FROM stdin;
1	1	Waymar Royce	1	White Walker
2	1	Gared	1	White Walker
3	2	Maester Cressen	1	Suicide
4	2	Barra	1	Janos Slynt
5	3	Hoster Tully	2	Old age
6	3	Master Torturer	3	Ramsay Snow
7	4	Lowell	1	Hound
8	4	Polliver	1	Arya Stark
9	5	White Rat	1	Sons of the Harpy
10	5	Mance Rayder	1	Jon Snow
11	6	Bolton officer	1	Brienne of Tarth
12	6	Areo Hotah	1	Tyene Sand
13	7	Olenna Tyrell	3	Jamie Lannister
14	7	Peter Baelish	8	Arya Stark
19	1	Will	1	Ned Stark
20	1	Jon Arryn	1	Lysa
21	1	Assassin	2	Wolf
22	1	Mycah	2	Hound
23	1	Ser Hugh	4	Mountain
24	1	Kurleket	5	Hill Tribesmen
25	1	Willis Wode	5	Hill Tribesmen
26	1	Wyl	5	Lannister guardsmen
27	1	Heward	5	Lannister guardsmen
28	1	Jory Cassel	5	Jamie Lannister
29	1	Wallen	6	Rob Stark
30	1	Stiv	6	Theon Greyjoy
31	1	Vardis Egen	6	Bronn
32	1	Viserys Targaryen	6	Khal Drogo
33	1	Robert Baratheon	7	Boar
34	1	Vayon Poole	8	House Lannister
35	1	Mordane	8	House Lannister
36	1	Syrio Forel	8	House Lannister
37	1	Stableboy	8	Arya
38	1	Mago	8	Khal Drogo
39	1	Othor	8	Jon Snow
40	1	Qotho	9	Jorah Mormont
41	1	Eddard Stark	9	Ilyn Payne
42	1	Khal Drogo	10	Daenerys
43	1	Mirri Maz Duur	10	Daenerys
44	2	Rakharo	2	Dothrakis
45	2	Yoren	3	Amory Lorch
46	2	Lommy	3	Polliver
47	2	Rennick	4	Wolf
48	2	Lannister guardsmen	4	Wolf
49	2	Renly Baratheon	5	Shadow creature
50	2	Emmon Cuy	5	Brienne of Tarth
51	2	Robar Royce	5	Brienne of Tarth
52	2	The Tickler	5	Jaqen H'ghar
53	2	Rodrik Cassel	6	Theon Greyjoy
54	2	The High Septon	6	Rioters
55	2	Armory Lorch	6	Jagen H'ghar
56	2	Drennan	6	Osha
57	2	Irri	6	Xaro Xhoan Daxos
58	2	Alton Lannister	7	Jamie Lannister
59	2	Torrhen Karstark	7	Jamie Lannister
60	2	Eleven of the Thirteen	7	Pyat Pree
61	2	Billy	7	Theon Greyjoy
62	2	Jack	7	Theon Greyjoy
63	2	Stonesnake	8	Wildlings
64	2	Harker	8	Wildlings
65	2	Borba	8	Wildlings
66	2	Matthos Seaworth	9	Wildfire
67	2	Mandon Moore	9	Podrik
68	2	Tom	10	Brienne of Tarth
69	2	Maester Luwin	10	Dagmer
70	2	Pyat Pree	10	Daenerys' dragons
71	2	Qhorin	10	Jon Snow
72	2	Doreah	10	Xaro Xhoan Daxos
73	2	Xaro Xhoan Daxos	10	Locked in his vault
74	3	Bannen	4	Starving
75	3	Caster	4	Karl Tanner
76	3	Jeor Mormont	4	Rast
77	3	Kraznys mo Nakloz	4	dragon
78	3	Willen Lannister	5	Richard Karstark
79	3	Martyn Lannister	5	Richard Karstark
80	3	Richard Karstark	5	Robb Stark
81	3	Ros	6	Joffrey
82	3	Mero	8	Daario Naharis
83	3	Prendahl na Ghezn	8	Daario Naharis
84	3	White Walker	8	White Walker
85	3	Old Man	9	Ygritte
86	3	Orell	9	Jon Snow
87	3	Talisa Stark	9	Lorthar Frey
88	3	Robb Stark	9	Roose Bolton
89	3	Joyeuse Erenford	9	Catelyn Stark
90	3	Catelyn Stark	9	Walder Rivers
91	3	Frey Soldier	10	Arya
92	4	Tansy	2	Ramsey's Dogs
93	4	Axell Florent	2	Melisandre
94	4	Joffrey Baratheon	2	Olenna Tyrell
95	4	Dontos Hollar	3	Petyr Baelish's men
96	4	Guymon	3	Ygritte
97	4	Olly's Mother	3	Styr
98	4	Oznak zo Pahl	3	Daario Naharis
99	4	Karl Tanner	5	Jon Snow
100	4	Rast	5	Jon Snow's wolf
101	4	Man	7	Hound
102	4	Biter	7	Hound
103	4	Rorge	7	Arya
104	4	Lysa Arryn	7	Littlefinger
105	4	Mole's Town whore	8	Ygritte
106	4	Ralf Kenning	8	Adrack Humble
107	4	Adrack Humble	8	Ramsay Snow's men
108	4	Oberyn Martell	8	Mountain
109	4	Pypar	9	Ygritte
110	4	Thenn warg	9	Samwell Tarly
111	4	Dongo	9	Black Brothers
112	4	Smitty	9	Fell off the wall
113	4	Styr	9	Jon Snow
114	4	Ygritte	9	Olly
115	4	Mag Mar Tun Doh Weg	9	Grenn
116	4	Grenn	9	Mag Mar Tun Doh Weg
117	4	Cooper	9	Mag Mar Tun Doh Weg
118	4	Done Hill	9	Mag Mar Tun Doh Weg
119	4	Zalla	10	Dragon
120	4	Jojen Reed	10	Wight
121	4	Shae	10	Tyrion Lannister
122	4	Tywin Lannister	10	Tyrion Lannister
123	5	Sons of the Harpy	2	Mossador
124	5	Mossador	2	Daario Naharis
125	5	Janos Slynt	3	Jon Snow
126	5	Lead Dornish guard	4	Bronn
127	5	Merchant captain	4	Obara Sand
128	5	Ser Barristan Selmy	4	Sons of Harpy
129	5	Great Master	5	Dragon
130	5	Ghita	6	Poison
131	5	Master Aemon	7	Natural causes
132	5	Old lady	7	Ramsay Bolton
133	5	Lord of Bones	8	Tormund
134	5	White Walker	8	Jon Snow
135	5	Karsi	8	child-wights
136	5	Shrine Baratheon	9	Melisandre
137	5	Hizdahr zo Loraq	9	Sons of Harpy
138	5	Selyse Baratheon	10	Suicide
139	5	Stannis Baratheon	10	Brienne of Tarth
140	5	Myranda	10	Theon Greyjoy
141	5	Meryn Trant	10	Arya
142	5	Myrcella Baratheon	10	Ellaria Sand
143	5	Jon Snow	10	Black brothers
144	6	Doran Martell	1	Ellaria Sand
145	6	Master Caleotte	1	Tyene Sand
147	6	Trystane Martell	1	Obara Sand
148	6	King's Landing boaster	2	Mountain
149	6	Roose Bolton	2	Ramsay Bolton
150	6	Walda Bolton	2	Ramsay Bolton
151	6	Newborn Bolton	2	Ramsay Bolton
152	6	Balon Greyjoy	2	Euron Greyjoy
153	6	Gerold Hightower	3	Ned Stark
154	6	Arthur Dayne	3	Ned Stark
155	6	Jon Umber	3	War of the Five Kings
156	6	Bowen Marsh	3	Jon Snow
157	6	Othell Yarwyck	3	Jon Snow
158	6	Alliser Thorne	3	Jon Snow
159	6	Olly	3	Jon Snow
160	6	Iggo	4	Daario Naharis
161	6	Akho	4	Daario Naharis
162	6	Osha	4	Ramsay Bolton
163	6	Moro and 9 other Khals	4	Daenerys
164	6	White Walker	5	Meera Reed
165	6	Three-eyed raven	5	Night King
166	6	Leaf	5	Suicide
167	6	Hodor	5	Torn apart by wights
168	6	Aerys Targaryen	6	Jaime Lannister
169	6	Maege Mormont	7	War of the Five Kings
170	6	Brother Ray & villagers	7	Brotherhood Without Banners
171	6	Steve	8	Sandor Clegane
172	6	Riddell	8	Sandor Clegane
173	6	Morgan	8	Sandor Clegane
174	6	Gatins	8	Sandor Clegane
175	6	Faith Militant	8	Mountain
176	6	Brynden Tully	8	lannister soldier
177	6	Outlaw	8	Sandor Clegane
178	6	Lem Lemoncloak	8	Sandor Clegane
179	6	Lady Crane	8	Waif
180	6	Waif	8	Arya
181	6	Belicho Paenymion	9	Grey Worm
182	6	Razdal mo Eraz	9	Grey Worm
183	6	Rickon Stark	9	Ramsay Bolton
184	6	Smalljon Umber	9	Tormund
185	6	Wun Weg Wun Dar Wun	9	Ramsay Bolton
186	6	Ramsay Bolton	9	his own dogs
187	6	Grand Maester Pycelle	10	Kids
188	6	Lancel Lannister	10	Widfire
189	6	High Sparrow	10	Widfire
190	6	Margaery Tyrell	10	Widfire
191	6	Loras Tyrell	10	Widfire
192	6	Mace Tyrell	10	Widfire
193	6	Kevan Lannister	10	Widfire
194	6	Tommen Baratheon	10	Jumped out of a window
195	6	Walder Rivers	10	Arya
196	6	Lothar Frey	10	Arya
197	6	Walder Frey	10	Arya
198	7	The Freys	1	Arya
199	7	The Sand Snakes	2	Euron
200	7	Lady Olenna Tyrell	1	Jamie Lannister
201	7	Lord Randyll Tarly	2	Drogon
202	7	Thoros of Myr	2	Frozen to death
203	7	Viserion	3	Night King's spear.
204	7	Benjen Stark	7	Wights
\.


--
-- Name: char_death_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.char_death_details_id_seq', 214, true);


--
-- Name: char_death_details char_death_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.char_death_details
    ADD CONSTRAINT char_death_details_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

