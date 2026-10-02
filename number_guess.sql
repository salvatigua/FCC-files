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

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    number_of_guesses integer NOT NULL,
    secret_number integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 10, 833);
INSERT INTO public.games VALUES (2, 2, 212, 211);
INSERT INTO public.games VALUES (3, 2, 872, 871);
INSERT INTO public.games VALUES (4, 3, 664, 663);
INSERT INTO public.games VALUES (5, 3, 667, 666);
INSERT INTO public.games VALUES (6, 2, 257, 254);
INSERT INTO public.games VALUES (7, 2, 992, 991);
INSERT INTO public.games VALUES (8, 2, 992, 991);
INSERT INTO public.games VALUES (9, 1, 10, 863);
INSERT INTO public.games VALUES (10, 4, 15, 14);
INSERT INTO public.games VALUES (11, 4, 453, 452);
INSERT INTO public.games VALUES (12, 5, 779, 778);
INSERT INTO public.games VALUES (13, 5, 338, 337);
INSERT INTO public.games VALUES (14, 4, 63, 60);
INSERT INTO public.games VALUES (15, 4, 110, 109);
INSERT INTO public.games VALUES (16, 4, 338, 337);
INSERT INTO public.games VALUES (17, 6, 520, 519);
INSERT INTO public.games VALUES (18, 6, 511, 510);
INSERT INTO public.games VALUES (19, 7, 931, 930);
INSERT INTO public.games VALUES (20, 7, 204, 203);
INSERT INTO public.games VALUES (21, 6, 635, 632);
INSERT INTO public.games VALUES (22, 6, 748, 747);
INSERT INTO public.games VALUES (23, 6, 184, 183);
INSERT INTO public.games VALUES (24, 8, 77, 76);
INSERT INTO public.games VALUES (25, 8, 480, 479);
INSERT INTO public.games VALUES (26, 9, 355, 354);
INSERT INTO public.games VALUES (27, 9, 713, 712);
INSERT INTO public.games VALUES (28, 8, 519, 516);
INSERT INTO public.games VALUES (29, 8, 117, 116);
INSERT INTO public.games VALUES (30, 8, 845, 844);
INSERT INTO public.games VALUES (31, 10, 503, 502);
INSERT INTO public.games VALUES (32, 10, 635, 634);
INSERT INTO public.games VALUES (33, 11, 646, 645);
INSERT INTO public.games VALUES (34, 11, 327, 326);
INSERT INTO public.games VALUES (35, 10, 9, 6);
INSERT INTO public.games VALUES (36, 10, 473, 472);
INSERT INTO public.games VALUES (37, 10, 833, 832);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'salva');
INSERT INTO public.users VALUES (2, 'user_1790981557974');
INSERT INTO public.users VALUES (3, 'user_1790981557973');
INSERT INTO public.users VALUES (4, 'user_1790981688883');
INSERT INTO public.users VALUES (5, 'user_1790981688882');
INSERT INTO public.users VALUES (6, 'user_1790981708135');
INSERT INTO public.users VALUES (7, 'user_1790981708134');
INSERT INTO public.users VALUES (8, 'user_1790981726979');
INSERT INTO public.users VALUES (9, 'user_1790981726978');
INSERT INTO public.users VALUES (10, 'user_1790981741583');
INSERT INTO public.users VALUES (11, 'user_1790981741582');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

