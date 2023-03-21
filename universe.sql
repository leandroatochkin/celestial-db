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
-- Name: added_by_me; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.added_by_me (
    name character varying(30),
    added_by_me_id integer NOT NULL,
    rows integer NOT NULL
);


ALTER TABLE public.added_by_me OWNER TO freecodecamp;

--
-- Name: added_by_me_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.added_by_me_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.added_by_me_table_id_seq OWNER TO freecodecamp;

--
-- Name: added_by_me_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.added_by_me_table_id_seq OWNED BY public.added_by_me.added_by_me_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(40) NOT NULL,
    length numeric,
    stars integer,
    black_hole boolean,
    galaxy_id integer NOT NULL
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
    name character varying(40),
    diameter numeric,
    description text NOT NULL,
    moon_id integer NOT NULL,
    small boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(40),
    moons integer,
    diameter numeric,
    description text NOT NULL,
    planet_id integer NOT NULL,
    habitable boolean,
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
    name character varying(40),
    diameter numeric NOT NULL,
    planets integer,
    cold boolean,
    star_id integer NOT NULL,
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
-- Name: added_by_me added_by_me_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.added_by_me ALTER COLUMN added_by_me_id SET DEFAULT nextval('public.added_by_me_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: added_by_me; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.added_by_me VALUES ('galaxy', 1, 6);
INSERT INTO public.added_by_me VALUES ('star', 2, 7);
INSERT INTO public.added_by_me VALUES ('planet', 3, 8);
INSERT INTO public.added_by_me VALUES ('moon', 4, 20);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky way', 3.5, 10, true, 1);
INSERT INTO public.galaxy VALUES ('andromeda', 4.5, 15, true, 2);
INSERT INTO public.galaxy VALUES ('madeupgalaxy', 6.5, 20, false, 3);
INSERT INTO public.galaxy VALUES ('madeupgalaxy2', 8.5, 25, false, 4);
INSERT INTO public.galaxy VALUES ('madeupgalaxy3', 9.0, 25, true, 5);
INSERT INTO public.galaxy VALUES ('madeupgalaxy4', 5.1, 5, false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('luna', 2.3, 'a moon', 1, true, NULL);
INSERT INTO public.moon VALUES ('luna2', 2.3, 'a moon', 2, true, NULL);
INSERT INTO public.moon VALUES ('luna3', 2.3, 'a moon', 3, true, NULL);
INSERT INTO public.moon VALUES ('luna4', 2.3, 'a moon', 4, true, NULL);
INSERT INTO public.moon VALUES ('luna5', 2.3, 'a moon', 5, true, NULL);
INSERT INTO public.moon VALUES ('luna6', 1.3, 'a moon', 6, false, NULL);
INSERT INTO public.moon VALUES ('luna7', 2.0, 'a moon', 7, false, NULL);
INSERT INTO public.moon VALUES ('luna8', 2.8, 'a moon', 8, false, NULL);
INSERT INTO public.moon VALUES ('luna9', 3.0, 'a moon', 9, false, NULL);
INSERT INTO public.moon VALUES ('luna10', 3.0, 'a moon', 10, false, NULL);
INSERT INTO public.moon VALUES ('luna11', 5.1, 'a moon', 11, true, NULL);
INSERT INTO public.moon VALUES ('luna12', 2.0, 'a moon', 12, true, NULL);
INSERT INTO public.moon VALUES ('luna13', 2.0, 'a moon', 13, true, NULL);
INSERT INTO public.moon VALUES ('luna14', 2.7, 'a moon', 14, true, NULL);
INSERT INTO public.moon VALUES ('luna15', 2.9, 'a moon', 15, true, NULL);
INSERT INTO public.moon VALUES ('luna16', 2.4, 'a moon', 16, false, NULL);
INSERT INTO public.moon VALUES ('luna17', 2.7, 'a moon', 17, false, NULL);
INSERT INTO public.moon VALUES ('luna18', 2.9, 'a moon', 18, false, NULL);
INSERT INTO public.moon VALUES ('luna19', 1.9, 'a moon', 19, false, NULL);
INSERT INTO public.moon VALUES ('luna20', 1.3, 'a moon', 20, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet 1', 3, 4.5, 'descripcion basica', 3, true, NULL);
INSERT INTO public.planet VALUES ('planet 2', 3, 4.5, 'descripcion basica', 4, true, NULL);
INSERT INTO public.planet VALUES ('planet 3', 5, 7.5, 'descripcion basica', 5, true, NULL);
INSERT INTO public.planet VALUES ('planet 4', 6, 8.5, 'descripcion basica', 6, true, NULL);
INSERT INTO public.planet VALUES ('planet 5', 6, 1.5, 'descripcion basica', 7, false, NULL);
INSERT INTO public.planet VALUES ('planet 6', 7, 2.5, 'descripcion basica', 8, false, NULL);
INSERT INTO public.planet VALUES ('planet 7', 0, 2.5, 'descripcion basica', 9, false, NULL);
INSERT INTO public.planet VALUES ('planet 8', 4, 9.5, 'descripcion basica', 10, false, NULL);
INSERT INTO public.planet VALUES ('planet 9', 4, 10.0, 'descripcion basica', 11, true, NULL);
INSERT INTO public.planet VALUES ('planet 10', 4, 6.0, 'descripcion basica', 12, true, NULL);
INSERT INTO public.planet VALUES ('planet 11', 24, 8.0, 'descripcion basica', 13, true, NULL);
INSERT INTO public.planet VALUES ('planet 12', 4, 8.9, 'descripcion basica', 14, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sun', 2.4, 8, false, 1, NULL);
INSERT INTO public.star VALUES ('sun2', 3.1, 3, false, 2, NULL);
INSERT INTO public.star VALUES ('sun3', 4.3, 7, true, 3, NULL);
INSERT INTO public.star VALUES ('sun4', 5.6, 9, true, 4, NULL);
INSERT INTO public.star VALUES ('sun5', 10.0, 1, false, 5, NULL);
INSERT INTO public.star VALUES ('sun6', 1.2, 0, true, 6, NULL);


--
-- Name: added_by_me_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.added_by_me_table_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: added_by_me added_by_me_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.added_by_me
    ADD CONSTRAINT added_by_me_pkey PRIMARY KEY (added_by_me_id);


--
-- Name: added_by_me added_by_me_rows_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.added_by_me
    ADD CONSTRAINT added_by_me_rows_key UNIQUE (rows);


--
-- Name: added_by_me added_by_me_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.added_by_me
    ADD CONSTRAINT added_by_me_table_id_key UNIQUE (added_by_me_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet serial; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT serial UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: added_by_me unique_added; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.added_by_me
    ADD CONSTRAINT unique_added UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: star from_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT from_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon from_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT from_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet from_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT from_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

