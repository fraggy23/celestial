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
    name character varying(60),
    "int" integer,
    galaxy_num numeric NOT NULL,
    galaxy_text text NOT NULL,
    galaxy_boolean1 boolean,
    galaxy_boolean2 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_pkey_seq OWNER TO freecodecamp;

--
-- Name: galaxy_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_pkey_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    "int" integer,
    moon_num numeric NOT NULL,
    moon_text text NOT NULL,
    moon_boolean1 boolean,
    moon_boolean2 boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_pkey_seq OWNER TO freecodecamp;

--
-- Name: moon_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_pkey_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    "int" integer,
    planet_num numeric NOT NULL,
    planet_text text NOT NULL,
    planet_boolean1 boolean,
    planet_boolean2 boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_pkey_seq OWNER TO freecodecamp;

--
-- Name: planet_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_pkey_seq OWNED BY public.planet.planet_id;


--
-- Name: random; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.random (
    name character varying(60),
    random_id integer NOT NULL,
    nonull1 boolean NOT NULL,
    nonull2 boolean NOT NULL,
    uniq text
);


ALTER TABLE public.random OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.random_random_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.random_random_id_seq OWNER TO freecodecamp;

--
-- Name: random_random_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.random_random_id_seq OWNED BY public.random.random_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    "int" integer,
    star_num numeric NOT NULL,
    star_text text NOT NULL,
    star_boolean1 boolean,
    star_boolean2 boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_pkey_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_pkey_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_pkey_seq OWNER TO freecodecamp;

--
-- Name: star_pkey_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_pkey_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_pkey_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_pkey_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_pkey_seq'::regclass);


--
-- Name: random random_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random ALTER COLUMN random_id SET DEFAULT nextval('public.random_random_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_pkey_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', 1, 1, '1', true, true);
INSERT INTO public.galaxy VALUES (2, 'g2', 2, 2, '2', true, true);
INSERT INTO public.galaxy VALUES (3, 'g3', 3, 3, '3', true, true);
INSERT INTO public.galaxy VALUES (4, 'g4', 4, 4, '4', true, true);
INSERT INTO public.galaxy VALUES (5, 'g5', 5, 5, '5', true, true);
INSERT INTO public.galaxy VALUES (6, 'g6', 6, 6, '6', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (16, 'm16', 16, 16, '16', true, true, 2);
INSERT INTO public.moon VALUES (17, 'm17', 17, 17, '17', true, true, 2);
INSERT INTO public.moon VALUES (18, 'm18', 18, 18, '18', true, true, 2);
INSERT INTO public.moon VALUES (19, 'm19', 19, 19, '19', true, true, 2);
INSERT INTO public.moon VALUES (20, 'm20', 20, 20, '20', true, true, 2);
INSERT INTO public.moon VALUES (13, 'm13', 13, 13, '13', true, true, 2);
INSERT INTO public.moon VALUES (14, 'm14', 14, 14, '14', true, true, 2);
INSERT INTO public.moon VALUES (15, 'm15', 15, 15, '15', true, true, 2);
INSERT INTO public.moon VALUES (1, 'm1', 1, 1, '1', true, true, 2);
INSERT INTO public.moon VALUES (2, 'm2', 2, 2, '2', true, true, 2);
INSERT INTO public.moon VALUES (3, 'm3', 3, 3, '3', true, true, 2);
INSERT INTO public.moon VALUES (4, 'm4', 4, 4, '4', true, true, 2);
INSERT INTO public.moon VALUES (5, 'm5', 5, 5, '5', true, true, 2);
INSERT INTO public.moon VALUES (6, 'm6', 6, 6, '6', true, true, 2);
INSERT INTO public.moon VALUES (7, 'm7', 7, 7, '7', true, true, 2);
INSERT INTO public.moon VALUES (8, 'm8', 8, 8, '8', true, true, 2);
INSERT INTO public.moon VALUES (9, 'm9', 9, 9, '9', true, true, 2);
INSERT INTO public.moon VALUES (11, 'm11', 11, 11, '11', true, true, 2);
INSERT INTO public.moon VALUES (12, 'm12', 12, 12, '12', true, true, 2);
INSERT INTO public.moon VALUES (10, 'm10', 10, 10, '10', true, true, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 1, 1, '1', true, true, 2);
INSERT INTO public.planet VALUES (2, 'p2', 2, 2, '2', true, true, 2);
INSERT INTO public.planet VALUES (3, 'p3', 3, 3, '3', true, true, 2);
INSERT INTO public.planet VALUES (4, 'p4', 4, 4, '4', true, true, 2);
INSERT INTO public.planet VALUES (5, 'p5', 5, 5, '5', true, true, 2);
INSERT INTO public.planet VALUES (6, 'p6', 6, 6, '6', true, true, 2);
INSERT INTO public.planet VALUES (7, 'p7', 7, 7, '7', true, true, 2);
INSERT INTO public.planet VALUES (8, 'p8', 8, 8, '8', true, true, 2);
INSERT INTO public.planet VALUES (9, 'p9', 9, 9, '9', true, true, 2);
INSERT INTO public.planet VALUES (10, 'p10', 1, 10, '10', true, true, 2);
INSERT INTO public.planet VALUES (11, 'p11', 1, 11, '11', true, true, 2);
INSERT INTO public.planet VALUES (12, 'p21', 12, 12, '12', true, true, 2);


--
-- Data for Name: random; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.random VALUES ('r1', 1, true, true, 'rand1');
INSERT INTO public.random VALUES ('r2', 2, true, true, 'rand2');
INSERT INTO public.random VALUES ('r3', 3, true, true, 'rand3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 1, 1, '1', true, true, 2);
INSERT INTO public.star VALUES (2, 's2', 2, 2, '2', true, true, 2);
INSERT INTO public.star VALUES (3, 's3', 3, 3, '3', true, true, 2);
INSERT INTO public.star VALUES (4, 's4', 4, 4, '4', true, true, 2);
INSERT INTO public.star VALUES (5, 's5', 5, 5, '5', true, true, 2);
INSERT INTO public.star VALUES (6, 's6', 6, 6, '6', true, true, 2);


--
-- Name: galaxy_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_pkey_seq', 7, true);


--
-- Name: moon_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_pkey_seq', 1, false);


--
-- Name: planet_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_pkey_seq', 1, false);


--
-- Name: random_random_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.random_random_id_seq', 1, false);


--
-- Name: star_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_pkey_seq', 22, true);


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
-- Name: random random_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_pkey PRIMARY KEY (random_id);


--
-- Name: random random_uniq_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.random
    ADD CONSTRAINT random_uniq_key UNIQUE (uniq);


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
-- Name: planet fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon fk_moon_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planet fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

