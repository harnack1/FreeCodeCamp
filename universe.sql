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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    galaxy_type character varying(40),
    diameter integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean,
    radius integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_type character varying(40),
    has_life boolean,
    diameter integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    star_type character varying(40),
    galaxy_id integer NOT NULL,
    distance numeric(8,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'Virgo Cluster', 'Nearest massive cluster');
INSERT INTO public.cluster VALUES (2, 'Norma Cluster', 'At heart of Great Attractor');
INSERT INTO public.cluster VALUES (3, 'Bullet Cluster', 'seperation of dark and normal matter');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Galaxy', 'SBc', 87400);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'M31', 'SAb', 152000);
INSERT INTO public.galaxy VALUES (3, 'LMC', 'Nubecula Major', 'SBm', 32200);
INSERT INTO public.galaxy VALUES (4, 'SMC', 'Nubecula Minor', 'SBm', 18900);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'M33', 'SAcd', 61120);
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', 'M81', 'SAab', 96000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', false, 11, 2);
INSERT INTO public.moon VALUES (1, 'Earth 1', false, 1750, 1);
INSERT INTO public.moon VALUES (3, 'Ganymede', false, 2634, 3);
INSERT INTO public.moon VALUES (4, 'Callisto', false, 2410, 3);
INSERT INTO public.moon VALUES (5, 'Io', false, 1821, 3);
INSERT INTO public.moon VALUES (6, 'Europa', true, 1561, 3);
INSERT INTO public.moon VALUES (7, 'Titan', true, 2574, 4);
INSERT INTO public.moon VALUES (8, 'Triton', false, 1353, 6);
INSERT INTO public.moon VALUES (9, 'Titania', false, 789, 5);
INSERT INTO public.moon VALUES (10, 'Rhea', false, 764, 4);
INSERT INTO public.moon VALUES (11, 'Oberon', false, 761, 5);
INSERT INTO public.moon VALUES (12, 'Iapetus', false, 736, 4);
INSERT INTO public.moon VALUES (13, 'Charon', false, 606, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', false, 585, 5);
INSERT INTO public.moon VALUES (15, 'Ariel', false, 579, 5);
INSERT INTO public.moon VALUES (16, 'Dione', false, 561, 4);
INSERT INTO public.moon VALUES (17, 'Tethys', false, 533, 4);
INSERT INTO public.moon VALUES (18, 'Miranda', false, 236, 5);
INSERT INTO public.moon VALUES (19, 'Mimas', false, 199, 4);
INSERT INTO public.moon VALUES (20, 'Proteus', false, 211, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Rocky', true, 12742, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Rocky', true, 3390, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas', false, 71492, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Gas', false, 58232, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 'Gas', false, 25362, 1);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Gas', false, 24622, 1);
INSERT INTO public.planet VALUES (7, 'Pluto', 'Rocky', false, 1188, 1);
INSERT INTO public.planet VALUES (8, 'Proxima Centauri b', 'Rocky', false, 16500, 2);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri c', 'Gas', false, 1, 2);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri d', 'Rocky', false, 10300, 2);
INSERT INTO public.planet VALUES (11, 'AEgir', 'Gas', false, 1, 4);
INSERT INTO public.planet VALUES (12, 'Ross 128 b', 'Rocky', true, 19000, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Local Star', 'G2V', 1, NULL);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Nearest star', 'M5.5', 1, NULL);
INSERT INTO public.star VALUES (3, 'Gliese 411', '8.31 ly away', 'M2V', 1, NULL);
INSERT INTO public.star VALUES (4, 'Epsilon Eridani', '10.5 ly away', 'K2V', 1, NULL);
INSERT INTO public.star VALUES (5, 'Ross 128', '11.0 ly away', 'M4V', 1, 11.01);
INSERT INTO public.star VALUES (6, 'Gliese 674', '14.85 ly away', 'M3V', 1, 14.85);


--
-- Name: cluster cluster_cluster_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_cluster_id_key UNIQUE (cluster_id);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
