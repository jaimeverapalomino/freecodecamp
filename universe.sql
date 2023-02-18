--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100),
    size integer NOT NULL,
    distance_from_earth numeric(12,2) NOT NULL,
    has_life boolean,
    color text
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
    name character varying(100),
    size integer NOT NULL,
    distance_from_earth numeric(12,2) NOT NULL,
    has_life boolean,
    color text,
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
    name character varying(100),
    size integer NOT NULL,
    distance_from_earth numeric(12,2) NOT NULL,
    has_life boolean,
    color text,
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
    name character varying(100),
    size integer NOT NULL,
    distance_from_earth numeric(12,2) NOT NULL,
    has_life boolean,
    color text,
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
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(100),
    size integer NOT NULL,
    distance_from_earth numeric(12,2) NOT NULL,
    has_life boolean,
    color text
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


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
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxia 1', 10, 10000.22, true, 'black');
INSERT INTO public.galaxy VALUES (2, 'galaxia 2', 20, 20000.22, true, 'black');
INSERT INTO public.galaxy VALUES (3, 'galaxia 3', 30, 30000.22, true, 'black');
INSERT INTO public.galaxy VALUES (4, 'galaxia 4', 30, 30000.22, true, 'black');
INSERT INTO public.galaxy VALUES (5, 'galaxia 5', 30, 30000.22, true, 'black');
INSERT INTO public.galaxy VALUES (6, 'galaxia 6', 30, 30000.22, true, 'black');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (2, 'moon 2', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (3, 'moon 3', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (4, 'moon 4', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (5, 'moon 5', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (6, 'moon 6', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (7, 'moon 7', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (8, 'moon 8', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (9, 'moon 9', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (10, 'moon 10', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (11, 'moon 11', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (12, 'moon 12', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (13, 'moon 13', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (14, 'moon 14', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (15, 'moon 15', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (16, 'moon 16', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (17, 'moon 17', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (18, 'moon 18', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (19, 'moon 19', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.moon VALUES (20, 'moon 20', 60, 60000.22, false, 'black', NULL);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (2, 'planet 2', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (3, 'planet 3', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (4, 'planet 4', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (5, 'planet 5', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (6, 'planet 6', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (7, 'planet 7', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (8, 'planet 8', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (9, 'planet 9', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (10, 'planet 10', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (11, 'planet 11', 60, 60000.22, false, 'black', NULL);
INSERT INTO public.planet VALUES (12, 'planet 12', 60, 60000.22, false, 'black', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', 10, 10000.22, false, 'black', NULL);
INSERT INTO public.star VALUES (2, 'star 2', 20, 20000.22, false, 'black', NULL);
INSERT INTO public.star VALUES (3, 'star 3', 30, 30000.22, false, 'black', NULL);
INSERT INTO public.star VALUES (4, 'star 4', 40, 40000.22, false, 'black', NULL);
INSERT INTO public.star VALUES (5, 'star 5', 50, 50000.22, false, 'black', NULL);
INSERT INTO public.star VALUES (6, 'star 6', 60, 60000.22, false, 'black', NULL);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'universe 1', 60, 60000.22, false, 'black');
INSERT INTO public.universe VALUES (2, 'universe 2', 60, 60000.22, false, 'black');
INSERT INTO public.universe VALUES (3, 'universe 3', 60, 60000.22, false, 'black');


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);

--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: planet fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--


ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--