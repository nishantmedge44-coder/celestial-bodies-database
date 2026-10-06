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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age integer NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    is_spherical boolean,
    hase_life boolean,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.comet (comet_id, name, age, distance_from_earth, age_in_millions_of_years, is_spherical, hase_life, description, galaxy_id) FROM stdin;
1	a	1	1	1	t	t	a	1
2	b	1	2	1	t	t	b	2
3	c	1	3	1	t	t	c	3
4	d	1	4	1	t	t	d	4
5	e	1	5	1	t	t	e	5
6	f	1	6	1	t	t	f	6
7	g	1	7	1	t	t	g	1
8	h	1	8	1	t	t	h	2
9	i	1	9	1	t	t	i	3
10	j	1	10	1	t	t	j	4
11	k	1	11	1	t	t	k	5
12	l	1	12	1	t	t	l	6
13	m	1	13	1	t	t	m	1
14	n	1	14	1	t	t	n	2
15	o	1	15	1	t	t	o	3
16	p	1	16	1	t	t	p	4
17	q	1	17	1	t	t	q	5
18	r	1	18	1	t	t	r	6
19	s	1	19	1	t	t	s	1
20	t	1	20	1	t	t	t	2
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, age, distance_from_earth, age_in_millions_of_years, is_spherical, hase_life, description) FROM stdin;
1	a	1	1	1	t	t	a
2	b	1	2	1	t	t	b
3	c	1	3	1	t	t	c
4	d	1	4	1	t	t	d
5	e	1	5	1	t	t	e
6	b	1	6	1	t	t	b
7	c	1	7	1	t	t	c
8	d	1	8	1	t	t	d
9	e	1	9	1	t	t	e
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, age, distance_from_earth, age_in_millions_of_years, is_spherical, hase_life, description, planet_id) FROM stdin;
1	a	1	1	1	t	t	a	1
2	b	1	2	1	t	t	b	2
3	c	1	3	1	t	t	c	3
4	d	1	4	1	t	t	d	4
5	e	1	5	1	t	t	e	5
6	f	1	6	1	t	t	f	6
7	g	1	7	1	t	t	g	1
8	h	1	8	1	t	t	h	2
9	i	1	9	1	t	t	i	3
10	j	1	10	1	t	t	j	4
11	k	1	11	1	t	t	k	5
12	l	1	12	1	t	t	l	6
13	m	1	13	1	t	t	m	1
14	n	1	14	1	t	t	n	2
15	o	1	15	1	t	t	o	3
16	p	1	16	1	t	t	p	4
17	q	1	17	1	t	t	q	5
18	r	1	18	1	t	t	r	6
19	s	1	19	1	t	t	s	1
20	t	1	20	1	t	t	t	2
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, age, distance_from_earth, age_in_millions_of_years, is_spherical, hase_life, description, star_id) FROM stdin;
1	a	1	1	1	t	t	a	1
2	b	1	2	1	t	t	b	2
3	c	1	3	1	t	t	c	3
4	d	1	4	1	t	t	d	4
5	e	1	5	1	t	t	e	5
6	f	1	6	1	t	t	f	6
7	g	1	7	1	t	t	g	1
8	h	1	8	1	t	t	h	2
9	i	1	9	1	t	t	i	3
10	j	1	10	1	t	t	j	4
11	k	1	11	1	t	t	k	5
12	l	1	12	1	t	t	l	6
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, age, distance_from_earth, age_in_millions_of_years, is_spherical, hase_life, description, galaxy_id) FROM stdin;
1	a	1	1	1	t	t	a	1
2	b	1	2	1	t	t	b	2
3	c	1	3	1	t	t	c	3
4	d	1	4	1	t	t	d	4
5	e	1	5	1	t	t	e	5
6	f	1	6	1	t	t	f	6
\.


--
-- Name: comet comet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

