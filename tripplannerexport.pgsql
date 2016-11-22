--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE activities (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    age_range character varying(255) NOT NULL,
    image character varying(255) DEFAULT NULL::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "placeId" integer
);


--
-- Name: activities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE activities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: activities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE activities_id_seq OWNED BY activities.id;


--
-- Name: hotels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE hotels (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    num_stars numeric NOT NULL,
    amenities character varying(255),
    image character varying(255) DEFAULT NULL::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "placeId" integer
);


--
-- Name: hotels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE hotels_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: hotels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE hotels_id_seq OWNED BY hotels.id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE places (
    id integer NOT NULL,
    address character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    location numeric[] NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE places_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE places_id_seq OWNED BY places.id;


--
-- Name: restaurants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE restaurants (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    cuisine character varying(255) NOT NULL,
    price integer NOT NULL,
    image character varying(255) DEFAULT NULL::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "placeId" integer
);


--
-- Name: restaurants_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE restaurants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: restaurants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE restaurants_id_seq OWNED BY restaurants.id;


--
-- Name: activities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY activities ALTER COLUMN id SET DEFAULT nextval('activities_id_seq'::regclass);


--
-- Name: hotels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY hotels ALTER COLUMN id SET DEFAULT nextval('hotels_id_seq'::regclass);


--
-- Name: places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY places ALTER COLUMN id SET DEFAULT nextval('places_id_seq'::regclass);


--
-- Name: restaurants id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY restaurants ALTER COLUMN id SET DEFAULT nextval('restaurants_id_seq'::regclass);


--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY activities (id, name, age_range, image, "createdAt", "updatedAt", "placeId") FROM stdin;
6	Staten Island Ferry Whitehall Terminal	All	https://s3-media2.fl.yelpcdn.com/bphoto/f_BnSBMcmhcf02S9h57i5Q/l.jpg	2016-11-21 21:29:48.094-05	2016-11-21 21:48:26.044-05	36
2	South Street Seaport	All	https://s3-media2.fl.yelpcdn.com/bphoto/_jg1ZwsXikMtfkC3yuiBJQ/l.jpg	2016-11-21 21:29:48.092-05	2016-11-21 21:57:57.55-05	32
3	Ground Zero	All	https://s3-media4.fl.yelpcdn.com/bphoto/5Kr-uhwE5k_Tt9CvGfSGpw/l.jpg	2016-11-21 21:29:48.092-05	2016-11-21 21:58:53.59-05	33
4	National September 11th Memorial & Museum	All	https://s3-media2.fl.yelpcdn.com/bphoto/gu_txBwP4MM0eU8DJb3l9A/l.jpg	2016-11-21 21:29:48.093-05	2016-11-21 21:59:41.922-05	34
11	Brooklyn Bridge Park	All	https://s3-media3.fl.yelpcdn.com/bphoto/MC9G6eP7YeWYH29XYlTNkA/l.jpg	2016-11-21 21:29:48.097-05	2016-11-21 22:00:23.635-05	41
15	Strand Bookstore	All	https://s3-media1.fl.yelpcdn.com/bphoto/fi-Iezn0TMnMWGQn61TXaA/l.jpg	2016-11-21 21:29:48.1-05	2016-11-21 22:00:54.608-05	45
14	Union Square Holiday Market	All	https://s3-media1.fl.yelpcdn.com/bphoto/FhM0MUfJEGWuPrmLZTY6Pg/l.jpg	2016-11-21 21:29:48.099-05	2016-11-21 22:18:10.28-05	44
8	Blue Man Group	All	https://s3-media3.fl.yelpcdn.com/bphoto/nce0KIqPs-ajm2Ge2Of1pA/l.jpg	2016-11-21 21:29:48.094-05	2016-11-21 22:18:10.302-05	38
9	Scott's Pizza Tours	All	https://s3-media3.fl.yelpcdn.com/bphoto/oWaAiYL93xlE1yhvy0ssIw/l.jpg	2016-11-21 21:29:48.094-05	2016-11-21 22:18:10.303-05	39
7	Chinatown Ice Cream Factory	All	https://s3-media2.fl.yelpcdn.com/bphoto/H-57bJWdkIAZPN1_crPFxA/l.jpg	2016-11-21 21:29:48.094-05	2016-11-21 22:18:10.305-05	37
5	Battery Park	All	https://s3-media4.fl.yelpcdn.com/bphoto/kEHzFgzZHPoO2Qztctn69Q/l.jpg	2016-11-21 21:29:48.093-05	2016-11-21 22:18:10.305-05	35
13	Washington Square Park	All	https://s3-media2.fl.yelpcdn.com/bphoto/7vKSqmapAZY8iGGo6YcHzA/l.jpg	2016-11-21 21:29:48.098-05	2016-11-21 22:18:10.304-05	43
1	Mahayana Temple Buddhist Association	All	https://s3-media1.fl.yelpcdn.com/bphoto/eDZsSguQzvkl0iJhfLR_PA/l.jpg	2016-11-21 21:29:48.092-05	2016-11-21 22:18:10.341-05	31
12	Ellis Island Immigration Museum	All	https://s3-media2.fl.yelpcdn.com/bphoto/ikUsgG4B75UdryrFn2HAiw/l.jpg	2016-11-21 21:29:48.098-05	2016-11-21 22:18:10.341-05	42
10	Apple Store	All	http://cbsnews1.cbsistatic.com/hub/i/2011/05/19/cf8d47be-a643-11e2-a3f0-029118418759/FifthAve-Apple.jpg	2016-11-21 21:29:48.097-05	2016-11-22 00:00:52.791-05	40
\.


--
-- Name: activities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('activities_id_seq', 15, true);


--
-- Data for Name: hotels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY hotels (id, name, num_stars, amenities, image, "createdAt", "updatedAt", "placeId") FROM stdin;
4	Smyth TriBeCa	3.5	24 hour Gym	https://s3-media2.fl.yelpcdn.com/bphoto/6FJ6uV2vrieDS0Sy3ZCJvg/l.jpg	2016-11-21 21:29:48.077-05	2016-11-21 21:31:14.804-05	5
1	Hotel Mulberry	4.5	Free Wi-Fi	https://s3-media3.fl.yelpcdn.com/bphoto/-CcCE3zQgUnPvTlnDwTneA/l.jpg	2016-11-21 21:29:48.075-05	2016-11-21 22:15:09.927-05	2
2	Andaz Wall Street	4	Pool, Free Wi-Fi	https://s3-media4.fl.yelpcdn.com/bphoto/dvLUKBfczCG29_TtGHek2g/l.jpg	2016-11-21 21:29:48.074-05	2016-11-21 22:15:09.961-05	1
15	Club Quarters	4	Free Wif-Fi	https://s3-media2.fl.yelpcdn.com/bphoto/wjc3UIFzehSkT4S1iElUYQ/l.jpg	2016-11-21 21:29:48.084-05	2016-11-21 22:15:09.962-05	14
9	Millenium Hilton Hotel	3.5	Paid Wi-Fi	https://s3-media3.fl.yelpcdn.com/bphoto/opFpurIC4KTeLAkzMoH92A/l.jpg	2016-11-21 21:29:48.08-05	2016-11-21 22:15:09.963-05	9
10	US Pacific Hotel	2	Accepts Credit Cards	https://s3-media1.fl.yelpcdn.com/bphoto/RZyjWwOpIKaWwhayj_wRzg/l.jpg	2016-11-21 21:29:48.081-05	2016-11-21 22:15:09.966-05	10
14	Cosmopolitan Hotel	3.5	Free Wif-Fi	https://s3-media3.fl.yelpcdn.com/bphoto/hDdQFznRpkayxYOHG7Mnxg/l.jpg	2016-11-21 21:29:48.084-05	2016-11-21 22:15:09.997-05	15
3	Hotel 91	3.5	Free Wi-Fi	https://s3-media4.fl.yelpcdn.com/bphoto/XNJp96K6S4aOLB_Rak9MnA/l.jpg	2016-11-21 21:29:48.078-05	2016-11-21 22:15:09.962-05	7
6	The Ritz-Carlton New York, Battery Park	4.5	24 hour Gym, Paid Wi-Fi	https://s3-media3.fl.yelpcdn.com/bphoto/YU3lXIQxYy3UM6Hl2VUHXA/l.jpg	2016-11-21 21:29:48.075-05	2016-11-21 22:15:09.997-05	3
13	New York Marriott Downtown	3.5	24 hour Gym, Paid Wi-Fi	https://s3-media3.fl.yelpcdn.com/bphoto/gMy2udxTzx1CpP62M6Bd2Q/l.jpg	2016-11-21 21:29:48.083-05	2016-11-21 22:15:10-05	13
11	Gild Hall, a Thompson Hotel	4	Paid Wi-Fi	https://s3-media1.fl.yelpcdn.com/bphoto/cVdthjZkG95IPlchph7ziQ/l.jpg	2016-11-21 21:29:48.082-05	2016-11-21 22:15:10.001-05	11
8	Conrad New York Hotel	3.5	Paid Wi-Fi, Dogs Allowed	https://s3-media3.fl.yelpcdn.com/bphoto/YNZBf86mw7JPNFG1-uZ09A/l.jpg	2016-11-21 21:29:48.078-05	2016-11-21 22:15:10.015-05	8
5	Double Tree	3.5	24 hour Gym	https://s3-media1.fl.yelpcdn.com/bphoto/GH6CS6W2r4WFOZs1rpzujg/l.jpg	2016-11-21 21:29:48.077-05	2016-11-21 22:15:10.016-05	6
12	W New York	3.5	Pool, 24 hour Gym, Paid Wi-Fi	https://s3-media3.fl.yelpcdn.com/bphoto/8vqXNIgw_VocN7nGIKnftA/l.jpg	2016-11-21 21:29:48.083-05	2016-11-21 22:15:10.016-05	12
7	Wall Street Inn	4	Free Wi-Fi	https://s3-media3.fl.yelpcdn.com/bphoto/clHosfoENalDp4i6I-jpVw/l.jpg	2016-11-21 21:29:48.076-05	2016-11-21 22:15:10.055-05	4
\.


--
-- Name: hotels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('hotels_id_seq', 15, true);


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: -
--

COPY places (id, address, city, state, phone, location, "createdAt", "updatedAt") FROM stdin;
1	75 Wall St	New York	NY	123-456-7890	{40.705137,-74.007624}	2016-11-21 21:29:48.151-05	2016-11-21 21:29:48.151-05
2	52 Mulberry St	New York	NY	123-456-7890	{40.715317,-73.999542}	2016-11-21 21:29:48.154-05	2016-11-21 21:29:48.154-05
3	Two West Street	New York	NY	123-456-7890	{40.705417,-74.017241}	2016-11-21 21:29:48.155-05	2016-11-21 21:29:48.155-05
4	9 S William St	New York	NY	123-456-7890	{40.704581,-74.010273}	2016-11-21 21:29:48.156-05	2016-11-21 21:29:48.156-05
5	85 West Broadway	New York	NY	123-456-7890	{40.715076,-74.009301}	2016-11-21 21:29:48.157-05	2016-11-21 21:29:48.157-05
6	8 Stone St	New York	NY	123-456-7890	{40.703961,-74.01235}	2016-11-21 21:29:48.157-05	2016-11-21 21:29:48.157-05
7	91 E Broadway	New York	NY	123-456-7890	{40.713427,-73.993624}	2016-11-21 21:29:48.16-05	2016-11-21 21:29:48.16-05
8	102 N End Ave	New York	NY	123-456-7890	{40.714985,-74.015841}	2016-11-21 21:29:48.16-05	2016-11-21 21:29:48.16-05
9	55 Church St	New York	NY	123-456-7890	{40.711597,-74.010392}	2016-11-21 21:29:48.161-05	2016-11-21 21:29:48.161-05
10	106 Bowery	New York	NY	123-456-7890	{40.717873,-73.995231}	2016-11-21 21:29:48.161-05	2016-11-21 21:29:48.161-05
11	15 Gold Street	New York	NY	123-456-7890	{40.707894,-74.007108}	2016-11-21 21:29:48.162-05	2016-11-21 21:29:48.162-05
12	123 Washington Street	New York	NY	123-456-7890	{40.709102,-74.013997}	2016-11-21 21:29:48.162-05	2016-11-21 21:29:48.162-05
13	85 W St at Albany St	New York	NY	123-456-7890	{40.731131,-73.989568}	2016-11-21 21:29:48.162-05	2016-11-21 21:29:48.162-05
14	140 Washington St	New York	NY	123-456-7890	{40.70963,-74.01394}	2016-11-21 21:29:48.163-05	2016-11-21 21:29:48.163-05
15	95 W Broadway	New York	NY	123-456-7890	{40.715681,-74.008922}	2016-11-21 21:29:48.163-05	2016-11-21 21:29:48.163-05
16	75 Wall St	New York	NY	123-456-7890	{40.705137,-74.01394}	2016-11-21 21:29:48.164-05	2016-11-21 21:29:48.164-05
17	134 Reade St	New York	NY	123-456-7890	{40.716526,-74.009567}	2016-11-21 21:29:48.164-05	2016-11-21 21:29:48.164-05
18	99 Hudson St	New York	NY	123-456-7890	{40.718977,-74.008929}	2016-11-21 21:29:48.165-05	2016-11-21 21:29:48.165-05
19	16 Mott St	New York	NY	123-456-7890	{40.71423,-73.998509}	2016-11-21 21:29:48.165-05	2016-11-21 21:29:48.165-05
20	2 Harrison St	New York	NY	123-456-7890	{40.718679,-74.0089}	2016-11-21 21:29:48.166-05	2016-11-21 21:29:48.166-05
21	120 Broadway	New York	NY	123-456-7890	{40.708475,-74.010846}	2016-11-21 21:29:48.167-05	2016-11-21 21:29:48.167-05
22	128 E 7th St	New York	NY	123-456-7890	{40.726096,-73.984152}	2016-11-21 21:29:48.167-05	2016-11-21 21:29:48.167-05
23	9 Pell St	New York	NY	123-456-7890	{40.714601,-73.997761}	2016-11-21 21:29:48.167-05	2016-11-21 21:29:48.167-05
24	79 Orchard St	New York	NY	123-456-7890	{40.717719,-73.990565}	2016-11-21 21:29:48.168-05	2016-11-21 21:29:48.168-05
25	141 Duane St	New York	NY	123-456-7890	{40.716403,-74.007724}	2016-11-21 21:29:48.168-05	2016-11-21 21:29:48.168-05
27	60 Thompson St	New York	NY	123-456-7890	{40.724014,-74.003242}	2016-11-21 21:29:48.168-05	2016-11-21 21:29:48.168-05
26	5 Bleecker St	New York	NY	123-456-7890	{40.725495,-73.992662}	2016-11-21 21:29:48.169-05	2016-11-21 21:29:48.169-05
28	165 Allen St	New York	NY	123-456-7890	{40.721266,-73.989756}	2016-11-21 21:29:48.169-05	2016-11-21 21:29:48.169-05
29	39 Downing St	New York	NY	123-456-7890	{40.729269,-74.003875}	2016-11-21 21:29:48.169-05	2016-11-21 21:29:48.169-05
30	86 Mulberry St	New York	NY	123-456-7890	{40.716544,-73.998626}	2016-11-21 21:29:48.17-05	2016-11-21 21:29:48.17-05
31	133 Canal St	New York	NY	123-456-7890	{40.716291,-73.995315}	2016-11-21 21:29:48.17-05	2016-11-21 21:29:48.17-05
32	19 Fulton St	New York	NY	123-456-7890	{40.707119,-74.003602}	2016-11-21 21:29:48.17-05	2016-11-21 21:29:48.17-05
33	1 Liberty Plz Lbby 2	New York	NY	123-456-7890	{40.709329,-74.01312}	2016-11-21 21:29:48.172-05	2016-11-21 21:29:48.172-05
34	1 Albany St	New York	NY	123-456-7890	{40.709189,-74.013157}	2016-11-21 21:29:48.172-05	2016-11-21 21:29:48.172-05
35	State St & Battery Pl	New York	NY	123-456-7890	{40.704531,-74.014334}	2016-11-21 21:29:48.172-05	2016-11-21 21:29:48.172-05
36	4 S St	New York	NY	123-456-7890	{40.729125,-73.98965}	2016-11-21 21:29:48.173-05	2016-11-21 21:29:48.173-05
37	65 Bayard St	New York	NY	123-456-7890	{40.715323,-73.99819}	2016-11-21 21:29:48.173-05	2016-11-21 21:29:48.173-05
38	434 Lafayette St	New York	NY	123-456-7890	{40.729373,-73.992104}	2016-11-21 21:29:48.173-05	2016-11-21 21:29:48.173-05
39	244 5th Ave	New York	NY	123-456-7890	{40.74461,-73.987708}	2016-11-21 21:29:48.174-05	2016-11-21 21:29:48.174-05
40	103 Prince St	New York	NY	123-456-7890	{40.724918,-73.999144}	2016-11-21 21:29:48.175-05	2016-11-21 21:29:48.175-05
41	Pier 1	New York	NY	123-456-7890	{40.702225,-73.996563}	2016-11-21 21:29:48.175-05	2016-11-21 21:29:48.175-05
42	Ellis Island	New York	NY	123-456-7890	{40.699297,-74.040317}	2016-11-21 21:29:48.176-05	2016-11-21 21:29:48.176-05
43	1 Washington Sq E	New York	NY	123-456-7890	{40.732204,-73.998649}	2016-11-21 21:29:48.176-05	2016-11-21 21:29:48.176-05
44	Union Sq & W 14th St	New York	NY	123-456-7890	{40.733615,-73.987995}	2016-11-21 21:29:48.177-05	2016-11-21 21:29:48.177-05
45	828 Broadway	New York	NY	123-456-7890	{40.733274,-73.99087}	2016-11-21 21:29:48.177-05	2016-11-21 21:29:48.177-05
\.


--
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('places_id_seq', 45, true);


--
-- Data for Name: restaurants; Type: TABLE DATA; Schema: public; Owner: -
--

COPY restaurants (id, name, cuisine, price, image, "createdAt", "updatedAt", "placeId") FROM stdin;
1	Bouley	French	4	https://s3-media4.fl.yelpcdn.com/bphoto/hM08RKH7KrSv1Z-giu-z5w/l.jpg	2016-11-21 21:29:48.085-05	2016-11-21 21:43:42.016-05	16
11	Kittichai	Thai	4	https://s3-media3.fl.yelpcdn.com/bphoto/mjoCWX7xdIWWfYwspl9TuQ/l.jpg	2016-11-21 21:29:48.089-05	2016-11-21 21:53:27.98-05	27
6	The Capital Grille	Steakhouses, American	4	https://s3-media1.fl.yelpcdn.com/bphoto/WVNp-ApSvbIAvu7Iggbfrg/l.jpg	2016-11-21 21:29:48.087-05	2016-11-21 22:17:03.969-05	21
15	Xe Lua	Vietnamese	1	https://s3-media3.fl.yelpcdn.com/bphoto/uxsx0XTyZYT6EZ0b0QEyIg/l.jpg	2016-11-21 21:29:48.091-05	2016-11-21 22:17:03.994-05	30
8	Joe's Shanghai	Shanghainese, Dim Sum	2	https://s3-media1.fl.yelpcdn.com/bphoto/0VV8b_PdmKnXcJ-ryXlGBw/l.jpg	2016-11-21 21:29:48.089-05	2016-11-21 22:17:03.994-05	23
7	Pylos	Greek	3	https://s3-media3.fl.yelpcdn.com/bphoto/gQdXP4qPNl1IVCWRcH6M4Q/l.jpg	2016-11-21 21:29:48.088-05	2016-11-21 22:17:03.995-05	22
4	Hop Lee Restaurant	Chinese	2	https://s3-media3.fl.yelpcdn.com/bphoto/QaRnbGLFOlG35cuWBGz24w/l.jpg	2016-11-21 21:29:48.087-05	2016-11-21 22:17:03.997-05	19
2	Marc Forgione	Seafood	3	https://s3-media4.fl.yelpcdn.com/bphoto/yQox1b4kz8M4fK5chZmQKQ/l.jpg	2016-11-21 21:29:48.086-05	2016-11-21 22:17:03.996-05	17
12	Bianca Restaurant	Italian	2	https://s3-media4.fl.yelpcdn.com/bphoto/3glESJvos_cumJXOyTM2AQ/l.jpg	2016-11-21 21:29:48.09-05	2016-11-21 22:17:04.036-05	26
5	Jungsik	Korean	4	https://s3-media1.fl.yelpcdn.com/bphoto/AOCHXf_qNZLWtarkx2J0iA/l.jpg	2016-11-21 21:29:48.087-05	2016-11-21 22:17:04.036-05	20
9	Cafe Katja	German, Austrian	2	https://s3-media1.fl.yelpcdn.com/bphoto/RXLtt93EJlMEjVwv2Ueczw/l.jpg	2016-11-21 21:29:48.089-05	2016-11-21 22:17:04.038-05	24
13	Rayuela	Spanish, Latin American	3	https://s3-media2.fl.yelpcdn.com/bphoto/_x433GViFkBQUk7M2Q1BwQ/l.jpg	2016-11-21 21:29:48.09-05	2016-11-21 22:17:04.039-05	28
14	Mas Farmhouse	New American, French	4	https://s3-media2.fl.yelpcdn.com/bphoto/SpNb0ZXIxVnQkyowD-BtPA/l.jpg	2016-11-21 21:29:48.09-05	2016-11-21 22:17:04.055-05	29
10	Rosanjin	Japanese	3	https://s3-media3.fl.yelpcdn.com/bphoto/YkMJsSpVdfW0_EaNGburrA/l.jpg	2016-11-21 21:29:48.089-05	2016-11-21 22:17:04.055-05	25
3	Tamarind	Indian	3	http://tamarindrestaurantsnyc.com/photos/foodPicTamarind.gif	2016-11-21 21:29:48.086-05	2016-11-21 23:18:45.611-05	18
\.


--
-- Name: restaurants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('restaurants_id_seq', 15, true);


--
-- Name: activities activities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (id);


--
-- Name: hotels hotels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY hotels
    ADD CONSTRAINT hotels_pkey PRIMARY KEY (id);


--
-- Name: places places_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY places
    ADD CONSTRAINT places_pkey PRIMARY KEY (id);


--
-- Name: restaurants restaurants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);


--
-- Name: activities activities_placeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY activities
    ADD CONSTRAINT "activities_placeId_fkey" FOREIGN KEY ("placeId") REFERENCES places(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: hotels hotels_placeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY hotels
    ADD CONSTRAINT "hotels_placeId_fkey" FOREIGN KEY ("placeId") REFERENCES places(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: restaurants restaurants_placeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY restaurants
    ADD CONSTRAINT "restaurants_placeId_fkey" FOREIGN KEY ("placeId") REFERENCES places(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

