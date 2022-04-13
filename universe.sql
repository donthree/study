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
    name character varying(30) NOT NULL,
    age_in_m_years integer,
    dist_from_earth integer,
    has_life boolean,
    galaxy_id integer NOT NULL,
    galaxy_type character varying(15) NOT NULL
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
    name character varying(30) NOT NULL,
    description text,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    exoplanet boolean
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
-- Name: observable_universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.observable_universe (
    name character varying(30) NOT NULL,
    is_there_life_on_mars text,
    what_could_be_beyond text,
    breathtaking boolean NOT NULL,
    observable_universe_id integer NOT NULL
);


ALTER TABLE public.observable_universe OWNER TO freecodecamp;

--
-- Name: observable_universe_observable_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.observable_universe_observable_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.observable_universe_observable_universe_id_seq OWNER TO freecodecamp;

--
-- Name: observable_universe_observable_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.observable_universe_observable_universe_id_seq OWNED BY public.observable_universe.observable_universe_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_type character varying(15),
    number_of_moons integer
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
    name character varying(30) NOT NULL,
    age_in_m_years numeric(4,1),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    dist_from_earth numeric(4,1),
    color character varying(10)
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: observable_universe observable_universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observable_universe ALTER COLUMN observable_universe_id SET DEFAULT nextval('public.observable_universe_observable_universe_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', NULL, NULL, NULL, 1, 'Spiral');
INSERT INTO public.galaxy VALUES ('Milky Way Galaxy', NULL, NULL, NULL, 2, 'Spiral');
INSERT INTO public.galaxy VALUES ('Centauras A', NULL, NULL, NULL, 3, 'Elliptical');
INSERT INTO public.galaxy VALUES ('Triangulum Galaxy', NULL, NULL, NULL, 4, 'Spiral');
INSERT INTO public.galaxy VALUES ('Galaxy IC342', NULL, NULL, NULL, 5, 'Irregular');
INSERT INTO public.galaxy VALUES ('Galaxy NGC 4696', NULL, NULL, NULL, 6, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Kepler-1625b I', NULL, 1, 1, NULL);
INSERT INTO public.moon VALUES ('Luna', NULL, 2, 4, NULL);
INSERT INTO public.moon VALUES ('Deimos', NULL, 3, 5, NULL);
INSERT INTO public.moon VALUES ('Phobos', NULL, 4, 5, NULL);
INSERT INTO public.moon VALUES ('Ganymede', NULL, 5, 6, NULL);
INSERT INTO public.moon VALUES ('Callisto', NULL, 6, 6, NULL);
INSERT INTO public.moon VALUES ('Io', NULL, 7, 6, NULL);
INSERT INTO public.moon VALUES ('Europa', NULL, 8, 6, NULL);
INSERT INTO public.moon VALUES ('Eupheme', NULL, 9, 6, NULL);
INSERT INTO public.moon VALUES ('Titan', NULL, 10, 7, NULL);
INSERT INTO public.moon VALUES ('Rhea', NULL, 11, 7, NULL);
INSERT INTO public.moon VALUES ('Iapetus', NULL, 12, 7, NULL);
INSERT INTO public.moon VALUES ('Dione', NULL, 13, 7, NULL);
INSERT INTO public.moon VALUES ('Tethys', NULL, 14, 7, NULL);
INSERT INTO public.moon VALUES ('Titania', NULL, 15, 8, NULL);
INSERT INTO public.moon VALUES ('Oberon', NULL, 16, 8, NULL);
INSERT INTO public.moon VALUES ('Umbriel', NULL, 17, 8, NULL);
INSERT INTO public.moon VALUES ('Ariel', NULL, 18, 8, NULL);
INSERT INTO public.moon VALUES ('Prospero', NULL, 19, 8, NULL);
INSERT INTO public.moon VALUES ('Triton', NULL, 20, 9, NULL);


--
-- Data for Name: observable_universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.observable_universe VALUES ('microwave', NULL, NULL, true, 1);
INSERT INTO public.observable_universe VALUES ('observable', NULL, NULL, true, 2);
INSERT INTO public.observable_universe VALUES ('cosmic', NULL, NULL, true, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Kepler-1625b', NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Mercury', NULL, 2, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', NULL, 3, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Earth', NULL, 4, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Mars', NULL, 5, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Jupiter', NULL, 6, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Saturn', NULL, 7, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Uranus', NULL, 8, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Neptune', NULL, 9, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Pluto', NULL, 10, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Ceres', NULL, 11, 7, NULL, NULL);
INSERT INTO public.planet VALUES ('Charon', NULL, 12, 7, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Kepler 1625', NULL, 1, 2, NULL, 'Yellow');
INSERT INTO public.star VALUES ('Proxima Centauri', NULL, 2, 2, NULL, 'Red');
INSERT INTO public.star VALUES ('Rigel', NULL, 3, 2, NULL, 'Blue');
INSERT INTO public.star VALUES ('Sirius', NULL, 4, 2, NULL, 'White');
INSERT INTO public.star VALUES ('Betelguese', NULL, 5, 2, NULL, 'Orange');
INSERT INTO public.star VALUES ('Altair', NULL, 6, 2, NULL, 'Blue');
INSERT INTO public.star VALUES ('Sun', NULL, 7, 2, NULL, 'Orange');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: observable_universe_observable_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.observable_universe_observable_universe_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: observable_universe name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observable_universe
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: observable_universe observable_universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.observable_universe
    ADD CONSTRAINT observable_universe_pkey PRIMARY KEY (observable_universe_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

