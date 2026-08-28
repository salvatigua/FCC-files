--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50),
    dangerous boolean,
    scientific_name character varying(50) NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_to_earth integer,
    long_description text,
    number_of_planets numeric,
    scientific_name character varying(50) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_to_earth integer,
    scientific_name character varying(50) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_to_earth integer,
    visible_from_earth boolean,
    scientific_name character varying(50) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    age_in_millions_of_years integer,
    distance_to_earth integer,
    alive boolean,
    scientific_name character varying(50) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, NULL, NULL, 'Piedra Gigante');
INSERT INTO public.asteroid VALUES (2, NULL, NULL, 'Rocaza');
INSERT INTO public.asteroid VALUES (3, NULL, NULL, 'Peñón');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, NULL, 'Andromedum');
INSERT INTO public.galaxy VALUES (2, 'Via Láctea', NULL, NULL, NULL, NULL, 'Lacteumm');
INSERT INTO public.galaxy VALUES (3, 'Triángulo', NULL, NULL, NULL, NULL, 'Triangulum');
INSERT INTO public.galaxy VALUES (4, 'Molinete', NULL, NULL, NULL, NULL, 'Molinetum');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL, NULL, 'Sombrerum');
INSERT INTO public.galaxy VALUES (6, 'Cigarro', NULL, NULL, NULL, NULL, 'Cigarrum');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, NULL, NULL, 'Europa Alpha', 1);
INSERT INTO public.moon VALUES (2, NULL, NULL, NULL, 'Ganymede Beta', 1);
INSERT INTO public.moon VALUES (3, NULL, NULL, NULL, 'Io Prime', 2);
INSERT INTO public.moon VALUES (4, NULL, NULL, NULL, 'Callisto Gamma', 2);
INSERT INTO public.moon VALUES (5, NULL, NULL, NULL, 'Titan Delta', 3);
INSERT INTO public.moon VALUES (6, NULL, NULL, NULL, 'Enceladus Epsilon', 3);
INSERT INTO public.moon VALUES (7, NULL, NULL, NULL, 'Mimas Zeta', 4);
INSERT INTO public.moon VALUES (8, NULL, NULL, NULL, 'Rhea Eta', 4);
INSERT INTO public.moon VALUES (9, NULL, NULL, NULL, 'Iapetus Theta', 5);
INSERT INTO public.moon VALUES (10, NULL, NULL, NULL, 'Dione Iota', 5);
INSERT INTO public.moon VALUES (11, NULL, NULL, NULL, 'Tethys Kappa', 6);
INSERT INTO public.moon VALUES (12, NULL, NULL, NULL, 'Ariel Lambda', 6);
INSERT INTO public.moon VALUES (13, NULL, NULL, NULL, 'Umbriel Mu', 7);
INSERT INTO public.moon VALUES (14, NULL, NULL, NULL, 'Titania Nu', 7);
INSERT INTO public.moon VALUES (15, NULL, NULL, NULL, 'Oberon Xi', 8);
INSERT INTO public.moon VALUES (16, NULL, NULL, NULL, 'Miranda Omicron', 8);
INSERT INTO public.moon VALUES (17, NULL, NULL, NULL, 'Triton Pi', 9);
INSERT INTO public.moon VALUES (18, NULL, NULL, NULL, 'Proteus Rho', 9);
INSERT INTO public.moon VALUES (19, NULL, NULL, NULL, 'Nereid Sigma', 10);
INSERT INTO public.moon VALUES (20, NULL, NULL, NULL, 'Charon Tau', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, 'Kepler-186f', 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, 'HD 209458 b', 1);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, 'Gliese 667 Cc', 2);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, 'TRAPPIST-1e', 2);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, 'Proxima Centauri b', 3);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, 'HD 40307 g', 3);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, 'LHS 1140 b', 4);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, 'K2-18b', 4);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, 'WASP-12b', 5);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, 'HAT-P-7b', 5);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, 'TOI-700 d', 6);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, 'Kepler-22b', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, NULL, 'Estrellatium', 1);
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, NULL, 'Estrella Roja', 2);
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, NULL, 'María 1', 1);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, 'María 2', 1);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, 'María 3', 1);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, 'Orión', 3);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_scientific_name_key UNIQUE (scientific_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_scientific_name_key UNIQUE (scientific_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_scientific_name_key UNIQUE (scientific_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_scientific_name_key UNIQUE (scientific_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_scientific_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_scientific_name_key UNIQUE (scientific_name);


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

