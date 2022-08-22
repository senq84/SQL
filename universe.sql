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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_types integer,
    distance_from_earth numeric
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
-- Name: known_in_antiquity; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.known_in_antiquity (
    known_in_antiquity_id integer NOT NULL,
    galaxy_id integer,
    star_id integer,
    planet_id integer,
    moon_id integer,
    was_known boolean,
    culture character varying(40),
    name character varying(40) NOT NULL
);


ALTER TABLE public.known_in_antiquity OWNER TO freecodecamp;

--
-- Name: known_in_antiquity_known_in_antiquity_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.known_in_antiquity_known_in_antiquity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.known_in_antiquity_known_in_antiquity_id_seq OWNER TO freecodecamp;

--
-- Name: known_in_antiquity_known_in_antiquity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.known_in_antiquity_known_in_antiquity_id_seq OWNED BY public.known_in_antiquity.known_in_antiquity_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    moon_types integer,
    distance_from_earth numeric,
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types integer,
    distance_from_earth numeric,
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    star_types integer,
    distance_from_earth numeric,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: known_in_antiquity known_in_antiquity_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_in_antiquity ALTER COLUMN known_in_antiquity_id SET DEFAULT nextval('public.known_in_antiquity_known_in_antiquity_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, NULL, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'M53', false, NULL, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'NCC1056', false, NULL, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'M456', false, NULL, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'M3000', false, NULL, false, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, NULL, false, NULL, NULL, NULL);


--
-- Data for Name: known_in_antiquity; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.known_in_antiquity VALUES (1, 1, 1, 1, 1, true, 'Judeo-Christian', 'Sumerians');
INSERT INTO public.known_in_antiquity VALUES (3, NULL, NULL, 3, NULL, true, 'Judeo-Christian', 'Romans');
INSERT INTO public.known_in_antiquity VALUES (4, NULL, NULL, 5, NULL, true, 'Judeo-Christian', 'Greeks');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Ganimede', false, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (3, 'Europa', false, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Titan', false, NULL, true, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (4, 'Calisto', false, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Io', false, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Rea', false, NULL, true, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Kallisto', false, NULL, true, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (10, 'Mimas', false, NULL, true, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (5, 'Phobos', false, NULL, false, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, 'Deimos', false, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'Oberon', false, NULL, true, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'Tytania', false, NULL, true, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', false, NULL, true, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (15, 'Miranda', false, NULL, true, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Ariel', false, NULL, true, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Puk', false, NULL, true, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Enceladus', false, NULL, true, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Dione', false, NULL, true, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Japet', false, NULL, true, NULL, NULL, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'Dimidium', false, NULL, true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Venus', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'PA-99-N2', false, NULL, true, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (12, 'Andoria', false, NULL, true, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Vulcan', false, NULL, true, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (1, 'Earth', true, NULL, true, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Proxima B', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Zeta Reticuli', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Betelgeuse', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', false, NULL, true, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'Alpheratz', false, NULL, true, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: known_in_antiquity_known_in_antiquity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.known_in_antiquity_known_in_antiquity_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


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
-- Name: known_in_antiquity known_in_antiquity_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_in_antiquity
    ADD CONSTRAINT known_in_antiquity_name_key UNIQUE (name);


--
-- Name: known_in_antiquity known_in_antiquity_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_in_antiquity
    ADD CONSTRAINT known_in_antiquity_pkey PRIMARY KEY (known_in_antiquity_id);


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
-- Name: known_in_antiquity known_in_antiquity_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_in_antiquity
    ADD CONSTRAINT known_in_antiquity_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: known_in_antiquity known_in_antiquity_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_in_antiquity
    ADD CONSTRAINT known_in_antiquity_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: known_in_antiquity known_in_antiquity_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_in_antiquity
    ADD CONSTRAINT known_in_antiquity_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: known_in_antiquity known_in_antiquity_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.known_in_antiquity
    ADD CONSTRAINT known_in_antiquity_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

