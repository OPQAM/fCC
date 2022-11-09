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
-- Name: exceptional_asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.exceptional_asteroid (
    exceptional_asteroid_id integer NOT NULL,
    name character varying(90),
    distance_from_sun numeric(4,3) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.exceptional_asteroid OWNER TO freecodecamp;

--
-- Name: exceptional_asteroid_exceptional_asteroid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.exceptional_asteroid_exceptional_asteroid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.exceptional_asteroid_exceptional_asteroid_seq OWNER TO freecodecamp;

--
-- Name: exceptional_asteroid_exceptional_asteroid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.exceptional_asteroid_exceptional_asteroid_seq OWNED BY public.exceptional_asteroid.exceptional_asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(90),
    distance_mly numeric(7,5) NOT NULL,
    galaxy_type character varying(30),
    group_membership character varying(30) NOT NULL,
    diameter integer
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
    name character varying(90),
    description text,
    has_life boolean,
    numeral integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(90),
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    star_id integer NOT NULL
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
    name character varying(90),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric(4,3),
    stellar_class character varying(30) NOT NULL
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
-- Name: exceptional_asteroid exceptional_asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exceptional_asteroid ALTER COLUMN exceptional_asteroid_id SET DEFAULT nextval('public.exceptional_asteroid_exceptional_asteroid_seq'::regclass);


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
-- Data for Name: exceptional_asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.exceptional_asteroid VALUES (1, 'Ceres', 2.766, 1);
INSERT INTO public.exceptional_asteroid VALUES (2, 'Vesta', 2.362, 1);
INSERT INTO public.exceptional_asteroid VALUES (3, 'Pallas', 2.773, 1);
INSERT INTO public.exceptional_asteroid VALUES (4, 'Hygiea', 3.139, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.02650, 'SBbc', 'Local Group', 100000);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 0.02500, 'Irr (disputed)', 'Local Group', NULL);
INSERT INTO public.galaxy VALUES (3, 'Saggitarius Dwarf Sphr', 0.07800, 'dSph/E7', 'Local Group', 10000);
INSERT INTO public.galaxy VALUES (4, 'Ursa Major II Dwarf', 0.09800, 'dSph', 'Local Group', 1800);
INSERT INTO public.galaxy VALUES (5, 'Triangulum II', 0.09800, NULL, 'Local Group', NULL);
INSERT INTO public.galaxy VALUES (6, 'Segue 2', 0.11400, 'dSph', 'Local Group', 220);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Our own satellite.', false, 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'A moon of Mars.', false, 1, 6);
INSERT INTO public.moon VALUES (3, 'Deimos', 'A moon of Mars.', false, 2, 6);
INSERT INTO public.moon VALUES (4, 'Io', 'A moon of Jupiter.', false, 1, 2);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'A moon of Jupiter.', false, 3, 2);
INSERT INTO public.moon VALUES (7, 'Callisto', 'A moon of Jupiter.', false, 4, 2);
INSERT INTO public.moon VALUES (8, 'Mimas', 'A moon of Saturn.', false, 1, 3);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'A moon of Saturn.', false, 2, 3);
INSERT INTO public.moon VALUES (10, 'Tethys', 'A moon of Saturn.', false, 3, 3);
INSERT INTO public.moon VALUES (11, 'Titania', 'A moon of Uranus.', false, 3, 7);
INSERT INTO public.moon VALUES (12, 'Miranda', 'A moon of Uranus.', false, 5, 7);
INSERT INTO public.moon VALUES (5, 'Europa', 'A moon of Jupiter.', false, 2, 2);
INSERT INTO public.moon VALUES (13, 'Ariel', 'A moon of Uranus.', false, 1, 7);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'A moon of Uranus.', false, 2, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 'A moon of Uranus.', false, 4, 7);
INSERT INTO public.moon VALUES (16, 'Dione', 'A moon of Saturn.', false, 4, 3);
INSERT INTO public.moon VALUES (17, 'Thea', 'A moon of Saturn.', false, 5, 3);
INSERT INTO public.moon VALUES (18, 'Titan', 'A moon of Saturn.', false, 6, 3);
INSERT INTO public.moon VALUES (19, 'Hyperion', 'A moon of Saturn.', false, 7, 3);
INSERT INTO public.moon VALUES (20, 'Iapetus', 'A moon of Saturn.', false, 8, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 1, 'Our Homeworld.', true, 1);
INSERT INTO public.planet VALUES ('Jupiter', 2, 'Largest planet in the solar system.', false, 1);
INSERT INTO public.planet VALUES ('Saturn', 3, 'Gas giant with beautiful icy rings.', false, 1);
INSERT INTO public.planet VALUES ('Mercury', 4, 'First planet from the Sun. Hot stuff.', false, 1);
INSERT INTO public.planet VALUES ('Venus', 5, 'Second planet from the Sun. Also hot stuff.', false, 1);
INSERT INTO public.planet VALUES ('Mars', 6, 'For a long time, humanity thought there was life on Mars. That still might hold true.', false, 1);
INSERT INTO public.planet VALUES ('Uranus', 7, 'Oh, the jokes just keep on coming.', false, 1);
INSERT INTO public.planet VALUES ('Neptune', 8, 'The farthest planet in the solas system. Take that, Pluto.', false, 1);
INSERT INTO public.planet VALUES ('Proxima Centauri b', 9, 'In the Habitable Zone.', false, 2);
INSERT INTO public.planet VALUES ('Proxima Centauri d', 10, 'Closest known exoplanet, outside the solar system.', false, 2);
INSERT INTO public.planet VALUES ('Barnards Star b', 11, 'The existence of this planet is disputed.', false, 3);
INSERT INTO public.planet VALUES ('Wolf 359 b', 12, 'A far, far away planet, of which we have little  information.', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Solar System', 1, 1, 1.000, 'G2V');
INSERT INTO public.star VALUES ('Alpha Centauri', 2, 1, 0.122, 'M5.5Ve');
INSERT INTO public.star VALUES ('Barnards Star', 3, 1, 0.144, 'M4.0Ve');
INSERT INTO public.star VALUES ('Wolf 359', 4, 1, 0.090, 'M6.0V');
INSERT INTO public.star VALUES ('Alpha Canis Majoris', 5, 1, 2.063, 'A1V');
INSERT INTO public.star VALUES ('Ross 154', 6, 1, 0.170, 'M3.5Ve');


--
-- Name: exceptional_asteroid_exceptional_asteroid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.exceptional_asteroid_exceptional_asteroid_seq', 4, true);


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
-- Name: exceptional_asteroid exceptional_asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exceptional_asteroid
    ADD CONSTRAINT exceptional_asteroid_name_key UNIQUE (name);


--
-- Name: exceptional_asteroid exceptional_asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exceptional_asteroid
    ADD CONSTRAINT exceptional_asteroid_pkey PRIMARY KEY (exceptional_asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


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
-- Name: exceptional_asteroid exceptional_asteroid_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.exceptional_asteroid
    ADD CONSTRAINT exceptional_asteroid_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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