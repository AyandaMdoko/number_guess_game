--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    guesses integer NOT NULL,
    secret_number integer NOT NULL,
    played_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP
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
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
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

INSERT INTO public.games VALUES (1, 1, 641, 640, '2024-11-26 22:19:50.597469');
INSERT INTO public.games VALUES (2, 1, 626, 625, '2024-11-26 22:19:50.688728');
INSERT INTO public.games VALUES (3, 2, 825, 824, '2024-11-26 22:19:50.828907');
INSERT INTO public.games VALUES (4, 2, 940, 939, '2024-11-26 22:19:50.918928');
INSERT INTO public.games VALUES (5, 1, 925, 922, '2024-11-26 22:19:51.030722');
INSERT INTO public.games VALUES (6, 1, 189, 188, '2024-11-26 22:19:51.093649');
INSERT INTO public.games VALUES (7, 1, 568, 567, '2024-11-26 22:19:51.171381');
INSERT INTO public.games VALUES (8, 3, 11, 66, '2024-11-26 22:21:08.41439');
INSERT INTO public.games VALUES (9, 3, 1, 500, '2024-11-26 22:23:28.730013');
INSERT INTO public.games VALUES (10, 4, 244, 243, '2024-11-26 22:23:58.896255');
INSERT INTO public.games VALUES (11, 4, 885, 884, '2024-11-26 22:23:58.992921');
INSERT INTO public.games VALUES (12, 5, 88, 87, '2024-11-26 22:23:59.083827');
INSERT INTO public.games VALUES (13, 5, 495, 494, '2024-11-26 22:23:59.170614');
INSERT INTO public.games VALUES (14, 4, 757, 754, '2024-11-26 22:23:59.274123');
INSERT INTO public.games VALUES (15, 4, 611, 610, '2024-11-26 22:23:59.351447');
INSERT INTO public.games VALUES (16, 4, 976, 975, '2024-11-26 22:23:59.438335');
INSERT INTO public.games VALUES (17, 6, 172, 171, '2024-11-26 22:24:52.888986');
INSERT INTO public.games VALUES (18, 6, 586, 585, '2024-11-26 22:24:52.978443');
INSERT INTO public.games VALUES (19, 7, 133, 132, '2024-11-26 22:24:53.074281');
INSERT INTO public.games VALUES (20, 7, 567, 566, '2024-11-26 22:24:53.165335');
INSERT INTO public.games VALUES (21, 6, 585, 582, '2024-11-26 22:24:53.254284');
INSERT INTO public.games VALUES (22, 6, 997, 996, '2024-11-26 22:24:53.358617');
INSERT INTO public.games VALUES (23, 6, 591, 590, '2024-11-26 22:24:53.447238');
INSERT INTO public.games VALUES (24, 3, 11, 609, '2024-11-26 22:26:57.209055');
INSERT INTO public.games VALUES (25, 3, 13, 49, '2024-11-26 22:29:19.390509');
INSERT INTO public.games VALUES (26, 8, 421, 420, '2024-11-26 22:30:34.190069');
INSERT INTO public.games VALUES (27, 8, 243, 242, '2024-11-26 22:30:34.267223');
INSERT INTO public.games VALUES (28, 9, 746, 745, '2024-11-26 22:30:34.416582');
INSERT INTO public.games VALUES (29, 9, 349, 348, '2024-11-26 22:30:34.505976');
INSERT INTO public.games VALUES (30, 8, 832, 829, '2024-11-26 22:30:34.623178');
INSERT INTO public.games VALUES (31, 8, 814, 813, '2024-11-26 22:30:34.705832');
INSERT INTO public.games VALUES (32, 8, 729, 728, '2024-11-26 22:30:34.793276');
INSERT INTO public.games VALUES (33, 3, 11, 489, '2024-11-26 22:32:35.465748');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1732659590459', 0, NULL);
INSERT INTO public.users VALUES (2, 'user_1732659590458', 0, NULL);
INSERT INTO public.users VALUES (5, 'user_1732659838782', 2, NULL);
INSERT INTO public.users VALUES (4, 'user_1732659838783', 5, NULL);
INSERT INTO public.users VALUES (7, 'user_1732659892780', 2, NULL);
INSERT INTO public.users VALUES (6, 'user_1732659892781', 5, NULL);
INSERT INTO public.users VALUES (9, 'user_1732660234052', 2, 349);
INSERT INTO public.users VALUES (8, 'user_1732660234053', 5, 243);
INSERT INTO public.users VALUES (3, 'Ayanda', 4, 11);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 33, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);


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

