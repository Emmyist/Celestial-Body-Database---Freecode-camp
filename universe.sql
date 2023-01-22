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
    lightyear numeric,
    checkers character varying(10),
    checkeres character varying(10),
    nuller character varying(10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: misc; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.misc (
    misc_id integer NOT NULL,
    misc_name character varying(20) NOT NULL,
    misc_description character varying(20) NOT NULL,
    name character varying(10)
);


ALTER TABLE public.misc OWNER TO freecodecamp;

--
-- Name: misc_misc_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.misc_misc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.misc_misc_id_seq OWNER TO freecodecamp;

--
-- Name: misc_misc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.misc_misc_id_seq OWNED BY public.misc.misc_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    colour text,
    planet_id integer NOT NULL,
    checker character varying(20) NOT NULL,
    checker2 character varying(10) NOT NULL,
    nuller character varying(10)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    in_solar_system boolean,
    age integer NOT NULL,
    star_id integer NOT NULL,
    nuller character varying(10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    burning boolean,
    age integer,
    nuller character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: misc misc_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc ALTER COLUMN misc_id SET DEFAULT nextval('public.misc_misc_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 10000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Red', 12000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Trent', 15000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Atlass', 20000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Cupernicus', 2000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Fiverr', 50000, NULL, NULL, NULL);


--
-- Data for Name: misc; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.misc VALUES (3, 'create', 'your', 'code');
INSERT INTO public.misc VALUES (4, 'fill', 'the', 'data');
INSERT INTO public.misc VALUES (5, 'complete', 'a', 'project');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'pupa', 'red', 1, 'zag', 'zig', NULL);
INSERT INTO public.moon VALUES (2, 'benzo', 'green', 2, 'set', 'soo', NULL);
INSERT INTO public.moon VALUES (3, 'gera', 'blue', 2, 'vee', 'mix', NULL);
INSERT INTO public.moon VALUES (4, 'fixa', 'white', 3, 'irx', 'ds', NULL);
INSERT INTO public.moon VALUES (5, 'agra', 'red', 3, 'gx', 'nx', NULL);
INSERT INTO public.moon VALUES (6, 'baxars', 'purple', 4, 'ist', 'alx', NULL);
INSERT INTO public.moon VALUES (7, 'zed', 'indigo', 6, 'fve', 'xss', NULL);
INSERT INTO public.moon VALUES (8, 'asta', 'brown', 6, 'xsz', 'fed', NULL);
INSERT INTO public.moon VALUES (9, 'rusto', 'violet', 8, 'cc', 'tt', NULL);
INSERT INTO public.moon VALUES (10, 'mapam', 'vela', 1, 'sxx', 'ted', NULL);
INSERT INTO public.moon VALUES (11, 'uht', 'yellow', 4, 'hot', 'yet', NULL);
INSERT INTO public.moon VALUES (12, 'haxa', 'gree', 5, 'toj', 'klo', NULL);
INSERT INTO public.moon VALUES (13, 'ifix', 'olli', 2, 'cssv', 'llk', NULL);
INSERT INTO public.moon VALUES (14, 'ncnc', 'kii', 3, 'iiu', 'eer', NULL);
INSERT INTO public.moon VALUES (15, 'aws', 'uui', 6, 'oii', 'ioo', NULL);
INSERT INTO public.moon VALUES (16, 'yut', 'orange', 6, 'uii', 'pool', NULL);
INSERT INTO public.moon VALUES (17, 'pok', 'tre', 6, 'wert', 'tha', NULL);
INSERT INTO public.moon VALUES (18, 'kio', 'red', 1, 'uit', 'ool', NULL);
INSERT INTO public.moon VALUES (19, 'degen', 'gene', 3, 'tro', 'jee', NULL);
INSERT INTO public.moon VALUES (20, 'vexa', 'black', 5, 'eet', 'oke', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 1, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', true, 2, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', true, 3, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', true, 4, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Saturn', true, 4, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Jupiter', true, 5, 3, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 1, 3, NULL);
INSERT INTO public.planet VALUES (8, 'Pluto', false, 3, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Titanus', false, 3, 3, NULL);
INSERT INTO public.planet VALUES (10, 'Runx', false, 3, 1, NULL);
INSERT INTO public.planet VALUES (11, 'Sita', false, 2, 2, NULL);
INSERT INTO public.planet VALUES (12, 'Grega', true, 4, 1, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 2000, NULL);
INSERT INTO public.star VALUES (2, 'Bogal', 2, true, 500, NULL);
INSERT INTO public.star VALUES (3, 'Infernate', 2, true, 200, NULL);
INSERT INTO public.star VALUES (4, 'Orion', 1, true, 10000, NULL);
INSERT INTO public.star VALUES (5, 'Pegasus', 4, false, 300, NULL);
INSERT INTO public.star VALUES (6, 'Recht', 1, false, 8000, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: misc_misc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.misc_misc_id_seq', 5, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_lightyear_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_lightyear_key UNIQUE (lightyear);


--
-- Name: galaxy galaxy_nuller_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nuller_key UNIQUE (nuller);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: misc misc_misc_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc
    ADD CONSTRAINT misc_misc_description_key UNIQUE (misc_description);


--
-- Name: misc misc_misc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc
    ADD CONSTRAINT misc_misc_name_key UNIQUE (misc_name);


--
-- Name: moon moon_nuller_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nuller_key UNIQUE (nuller);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: misc pk_misc_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.misc
    ADD CONSTRAINT pk_misc_id PRIMARY KEY (misc_id);


--
-- Name: planet planet_nuller_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nuller_key UNIQUE (nuller);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_nuller_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nuller_key UNIQUE (nuller);


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

