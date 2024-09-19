--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(10) NOT NULL,
    e_speed integer,
    e_distance integer,
    e_age integer,
    e_color character varying(20),
    has_food boolean DEFAULT false
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    g_rank integer,
    g_distance numeric,
    g_age integer,
    g_color text,
    has_life boolean DEFAULT false
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(10) NOT NULL,
    m_speed integer,
    m_distance integer,
    m_age integer,
    m_color character varying(20),
    has_air boolean DEFAULT false,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(10) NOT NULL,
    p_speed integer,
    p_age integer,
    p_color character varying(20),
    has_water boolean DEFAULT false,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(10) NOT NULL,
    s_rank integer,
    s_distance integer,
    s_age integer,
    s_color character varying(20),
    time_travel boolean DEFAULT false,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Terra', 413, 630, 113, 'red', false);
INSERT INTO public.earth VALUES (2, ' Galia', 112, 500, 1023, 'blue', false);
INSERT INTO public.earth VALUES (3, 'eplano', 32003, 6073, 1303, 'blue', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 43, 63, 13, 'green', false);
INSERT INTO public.galaxy VALUES (2, 'Black Eye', 412, 6343, 1123, 'blue', false);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', 323, 673, 133, 'green', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlphool', 4443, 2463, 1233, 'white', false);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 1303, 32163, 12443, 'black', false);
INSERT INTO public.galaxy VALUES (6, 'Traingle', 423, 3363, 16323, 'yellow', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lo', NULL, NULL, 1, 'red', false, 37);
INSERT INTO public.moon VALUES (2, 'europa', NULL, NULL, 2, 'black', false, 38);
INSERT INTO public.moon VALUES (3, 'ganey', NULL, NULL, 132, 'brown', false, 39);
INSERT INTO public.moon VALUES (4, 'love', NULL, NULL, 10, 'blue', false, 40);
INSERT INTO public.moon VALUES (5, 'loft', NULL, NULL, 1122, 'red', false, 41);
INSERT INTO public.moon VALUES (6, 'hi', NULL, NULL, 108, 'pink', false, 42);
INSERT INTO public.moon VALUES (7, 'hello', NULL, NULL, 41, 'brown', false, 43);
INSERT INTO public.moon VALUES (8, 'rhea', NULL, NULL, 21, 'black', false, 44);
INSERT INTO public.moon VALUES (9, 'triton', NULL, NULL, 1987, 'red', false, 45);
INSERT INTO public.moon VALUES (10, 'nerd', NULL, NULL, 765, 'grey', false, 46);
INSERT INTO public.moon VALUES (11, 'umbrella', NULL, NULL, 104327, 'white', false, 47);
INSERT INTO public.moon VALUES (12, 'demo', NULL, NULL, 6098, 'red', false, 48);
INSERT INTO public.moon VALUES (13, 'teta', NULL, NULL, 1650, 'black', false, 38);
INSERT INTO public.moon VALUES (14, 'mimi', NULL, NULL, 30, 'white', false, 39);
INSERT INTO public.moon VALUES (15, 'area', NULL, NULL, 901, 'red', false, 41);
INSERT INTO public.moon VALUES (16, 'surya', NULL, NULL, 980, 'black', false, 42);
INSERT INTO public.moon VALUES (17, 'hyd', NULL, NULL, 1023, 'brown', false, 43);
INSERT INTO public.moon VALUES (18, 'delhi', NULL, NULL, 1430, 'blue', false, 44);
INSERT INTO public.moon VALUES (19, 'dallas', NULL, NULL, 1002, 'red', false, 45);
INSERT INTO public.moon VALUES (20, 'elicot', NULL, NULL, 30987, 'pink', false, 46);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (37, 'mercury', 1231, 20033, 'black', false, 1);
INSERT INTO public.planet VALUES (38, 'venus', 7463, 1176, 'red', false, 2);
INSERT INTO public.planet VALUES (39, 'mars', 7563, 1827, 'black', false, 5);
INSERT INTO public.planet VALUES (40, 'earth', 753, 17, 'pink', false, 3);
INSERT INTO public.planet VALUES (41, 'jupiter', 563, 827, 'white', false, 6);
INSERT INTO public.planet VALUES (42, 'saturn', 1563, 127, 'yellow', false, 5);
INSERT INTO public.planet VALUES (43, 'uranus', 7003, 8730, 'red', false, 3);
INSERT INTO public.planet VALUES (44, 'neptune', 752, 12, 'red', false, 5);
INSERT INTO public.planet VALUES (45, 'pluto', 363, 196, 'grey', false, 4);
INSERT INTO public.planet VALUES (46, 'eris', 93, 8123, 'orange', false, 2);
INSERT INTO public.planet VALUES (47, 'pizza', 126, 3679, 'white', false, 1);
INSERT INTO public.planet VALUES (48, 'burger', 3645, 1996, 'blue', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sirius', 123, 345, 233, 'green', false, 1);
INSERT INTO public.star VALUES (2, 'vega', 234, 3452, 13, 'black', false, 2);
INSERT INTO public.star VALUES (3, 'rigel', 908, 1209, 64, 'brown', false, 3);
INSERT INTO public.star VALUES (4, 'sitara', 10, 112, 12, 'red', false, 4);
INSERT INTO public.star VALUES (5, 'tara', 34, 456, 235, 'yellow', false, 5);
INSERT INTO public.star VALUES (6, 'capella', 4567, 876, 9860, 'pink', false, 6);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_e_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_e_age_key UNIQUE (e_age);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_g_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_g_age_key UNIQUE (g_age);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_m_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_m_age_key UNIQUE (m_age);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_p_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_p_age_key UNIQUE (p_age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_s_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_s_age_key UNIQUE (s_age);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

