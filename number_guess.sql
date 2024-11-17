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

INSERT INTO public.games VALUES (1, 38, 209, 208, '2024-11-17 20:24:36.094424');
INSERT INTO public.games VALUES (2, 38, 135, 134, '2024-11-17 20:24:36.221645');
INSERT INTO public.games VALUES (3, 40, 62, 61, '2024-11-17 20:24:36.339524');
INSERT INTO public.games VALUES (4, 40, 647, 646, '2024-11-17 20:24:36.50343');
INSERT INTO public.games VALUES (5, 38, 992, 989, '2024-11-17 20:24:36.728431');
INSERT INTO public.games VALUES (6, 38, 761, 760, '2024-11-17 20:24:36.904829');
INSERT INTO public.games VALUES (7, 38, 248, 247, '2024-11-17 20:24:37.045173');
INSERT INTO public.games VALUES (8, 45, 435, 434, '2024-11-17 20:29:55.422998');
INSERT INTO public.games VALUES (9, 45, 544, 543, '2024-11-17 20:29:55.572963');
INSERT INTO public.games VALUES (10, 47, 223, 222, '2024-11-17 20:29:55.705284');
INSERT INTO public.games VALUES (11, 47, 400, 399, '2024-11-17 20:29:55.842469');
INSERT INTO public.games VALUES (12, 45, 938, 935, '2024-11-17 20:29:56.023173');
INSERT INTO public.games VALUES (13, 45, 445, 444, '2024-11-17 20:29:56.170665');
INSERT INTO public.games VALUES (14, 45, 736, 735, '2024-11-17 20:29:56.321242');
INSERT INTO public.games VALUES (15, 8, 6, 930, '2024-11-17 20:33:24.378427');
INSERT INTO public.games VALUES (16, 8, 16, 854, '2024-11-17 20:36:25.267307');
INSERT INTO public.games VALUES (17, 8, 14, 982, '2024-11-17 20:42:54.301527');
INSERT INTO public.games VALUES (18, 8, 10, 638, '2024-11-17 20:44:53.466096');
INSERT INTO public.games VALUES (19, 54, 303, 302, '2024-11-17 20:45:08.700003');
INSERT INTO public.games VALUES (20, 54, 286, 285, '2024-11-17 20:45:08.808606');
INSERT INTO public.games VALUES (21, 55, 191, 190, '2024-11-17 20:45:08.944708');
INSERT INTO public.games VALUES (22, 55, 436, 435, '2024-11-17 20:45:09.037628');
INSERT INTO public.games VALUES (23, 54, 652, 649, '2024-11-17 20:45:09.152464');
INSERT INTO public.games VALUES (24, 54, 132, 131, '2024-11-17 20:45:09.254769');
INSERT INTO public.games VALUES (25, 54, 900, 899, '2024-11-17 20:45:09.418918');
INSERT INTO public.games VALUES (26, 56, 62, 61, '2024-11-17 20:48:47.95026');
INSERT INTO public.games VALUES (27, 56, 404, 403, '2024-11-17 20:48:48.050665');
INSERT INTO public.games VALUES (28, 57, 126, 125, '2024-11-17 20:48:48.178007');
INSERT INTO public.games VALUES (29, 57, 778, 777, '2024-11-17 20:48:48.299404');
INSERT INTO public.games VALUES (30, 56, 289, 286, '2024-11-17 20:48:48.399448');
INSERT INTO public.games VALUES (31, 56, 726, 725, '2024-11-17 20:48:48.529626');
INSERT INTO public.games VALUES (32, 56, 49, 48, '2024-11-17 20:48:48.620944');
INSERT INTO public.games VALUES (33, 58, 415, 414, '2024-11-17 20:50:49.05143');
INSERT INTO public.games VALUES (34, 58, 562, 561, '2024-11-17 20:50:49.248104');
INSERT INTO public.games VALUES (35, 59, 212, 211, '2024-11-17 20:50:49.455911');
INSERT INTO public.games VALUES (36, 59, 597, 596, '2024-11-17 20:50:49.652841');
INSERT INTO public.games VALUES (37, 58, 719, 716, '2024-11-17 20:50:49.860231');
INSERT INTO public.games VALUES (38, 58, 831, 830, '2024-11-17 20:50:50.087175');
INSERT INTO public.games VALUES (39, 58, 464, 463, '2024-11-17 20:50:50.25846');
INSERT INTO public.games VALUES (40, 8, 10, 584, '2024-11-17 20:52:41.429862');
INSERT INTO public.games VALUES (41, 60, 617, 616, '2024-11-17 20:56:07.284094');
INSERT INTO public.games VALUES (42, 60, 248, 247, '2024-11-17 20:56:07.377727');
INSERT INTO public.games VALUES (43, 61, 214, 213, '2024-11-17 20:56:07.511266');
INSERT INTO public.games VALUES (44, 61, 475, 474, '2024-11-17 20:56:07.601081');
INSERT INTO public.games VALUES (45, 60, 272, 269, '2024-11-17 20:56:07.687144');
INSERT INTO public.games VALUES (46, 60, 404, 403, '2024-11-17 20:56:07.777956');
INSERT INTO public.games VALUES (47, 60, 482, 481, '2024-11-17 20:56:07.871813');
INSERT INTO public.games VALUES (48, 62, 798, 797, '2024-11-17 21:00:29.996731');
INSERT INTO public.games VALUES (49, 62, 501, 500, '2024-11-17 21:00:30.116655');
INSERT INTO public.games VALUES (50, 63, 466, 465, '2024-11-17 21:00:30.265856');
INSERT INTO public.games VALUES (51, 63, 487, 486, '2024-11-17 21:00:30.377337');
INSERT INTO public.games VALUES (52, 62, 252, 249, '2024-11-17 21:00:30.475986');
INSERT INTO public.games VALUES (53, 62, 297, 296, '2024-11-17 21:00:30.558285');
INSERT INTO public.games VALUES (54, 62, 407, 406, '2024-11-17 21:00:30.652365');
INSERT INTO public.games VALUES (55, 64, 82, 81, '2024-11-17 21:07:57.130701');
INSERT INTO public.games VALUES (56, 64, 71, 70, '2024-11-17 21:07:57.219047');
INSERT INTO public.games VALUES (57, 65, 242, 241, '2024-11-17 21:07:57.353434');
INSERT INTO public.games VALUES (58, 65, 941, 940, '2024-11-17 21:07:57.49366');
INSERT INTO public.games VALUES (59, 64, 675, 672, '2024-11-17 21:07:57.613977');
INSERT INTO public.games VALUES (60, 64, 489, 488, '2024-11-17 21:07:57.71277');
INSERT INTO public.games VALUES (61, 64, 69, 68, '2024-11-17 21:07:57.800694');
INSERT INTO public.games VALUES (62, 8, 21, 960, '2024-11-17 21:10:21.787128');
INSERT INTO public.games VALUES (63, 8, 10, 143, '2024-11-17 21:12:13.682418');
INSERT INTO public.games VALUES (64, 66, 349, 348, '2024-11-17 21:12:50.879616');
INSERT INTO public.games VALUES (65, 66, 448, 447, '2024-11-17 21:12:50.985948');
INSERT INTO public.games VALUES (66, 67, 599, 598, '2024-11-17 21:12:51.184743');
INSERT INTO public.games VALUES (67, 67, 495, 494, '2024-11-17 21:12:51.318774');
INSERT INTO public.games VALUES (68, 66, 12, 9, '2024-11-17 21:12:51.398206');
INSERT INTO public.games VALUES (69, 66, 457, 456, '2024-11-17 21:12:51.49873');
INSERT INTO public.games VALUES (70, 66, 164, 163, '2024-11-17 21:12:51.568782');
INSERT INTO public.games VALUES (71, 68, 946, 945, '2024-11-17 21:13:55.325634');
INSERT INTO public.games VALUES (72, 68, 960, 959, '2024-11-17 21:13:55.483588');
INSERT INTO public.games VALUES (73, 69, 261, 260, '2024-11-17 21:13:55.638305');
INSERT INTO public.games VALUES (74, 69, 904, 903, '2024-11-17 21:13:55.780776');
INSERT INTO public.games VALUES (75, 68, 460, 457, '2024-11-17 21:13:55.919638');
INSERT INTO public.games VALUES (76, 68, 840, 839, '2024-11-17 21:13:56.071024');
INSERT INTO public.games VALUES (77, 68, 226, 225, '2024-11-17 21:13:56.18463');
INSERT INTO public.games VALUES (78, 70, 646, 645, '2024-11-17 21:16:58.335869');
INSERT INTO public.games VALUES (79, 70, 650, 649, '2024-11-17 21:16:58.462079');
INSERT INTO public.games VALUES (80, 71, 68, 67, '2024-11-17 21:16:58.590848');
INSERT INTO public.games VALUES (81, 71, 676, 675, '2024-11-17 21:16:58.719106');
INSERT INTO public.games VALUES (82, 70, 230, 227, '2024-11-17 21:16:58.825582');
INSERT INTO public.games VALUES (83, 70, 832, 831, '2024-11-17 21:16:58.928091');
INSERT INTO public.games VALUES (84, 70, 687, 686, '2024-11-17 21:16:59.046194');
INSERT INTO public.games VALUES (85, 72, 288, 287, '2024-11-17 21:20:45.105254');
INSERT INTO public.games VALUES (86, 72, 166, 165, '2024-11-17 21:20:45.203862');
INSERT INTO public.games VALUES (87, 73, 451, 450, '2024-11-17 21:20:45.366649');
INSERT INTO public.games VALUES (88, 73, 67, 66, '2024-11-17 21:20:45.462632');
INSERT INTO public.games VALUES (89, 72, 947, 944, '2024-11-17 21:20:45.626071');
INSERT INTO public.games VALUES (90, 72, 604, 603, '2024-11-17 21:20:45.741217');
INSERT INTO public.games VALUES (91, 72, 272, 271, '2024-11-17 21:20:45.827016');
INSERT INTO public.games VALUES (92, 74, 15, 509, '2024-11-17 21:24:20.926244');
INSERT INTO public.games VALUES (93, 8, 7, 50, '2024-11-17 21:27:29.650495');
INSERT INTO public.games VALUES (94, 75, 589, 588, '2024-11-17 21:27:59.698108');
INSERT INTO public.games VALUES (95, 75, 510, 509, '2024-11-17 21:27:59.817023');
INSERT INTO public.games VALUES (96, 76, 814, 813, '2024-11-17 21:27:59.989787');
INSERT INTO public.games VALUES (97, 76, 58, 57, '2024-11-17 21:28:00.071425');
INSERT INTO public.games VALUES (98, 75, 786, 783, '2024-11-17 21:28:00.186073');
INSERT INTO public.games VALUES (99, 75, 519, 518, '2024-11-17 21:28:00.294703');
INSERT INTO public.games VALUES (100, 75, 176, 175, '2024-11-17 21:28:00.39119');
INSERT INTO public.games VALUES (101, 77, 645, 644, '2024-11-17 21:28:42.437998');
INSERT INTO public.games VALUES (102, 77, 66, 65, '2024-11-17 21:28:42.528844');
INSERT INTO public.games VALUES (103, 78, 977, 976, '2024-11-17 21:28:42.749624');
INSERT INTO public.games VALUES (104, 78, 85, 84, '2024-11-17 21:28:42.843453');
INSERT INTO public.games VALUES (105, 77, 577, 574, '2024-11-17 21:28:42.952277');
INSERT INTO public.games VALUES (106, 77, 996, 995, '2024-11-17 21:28:43.088014');
INSERT INTO public.games VALUES (107, 77, 84, 83, '2024-11-17 21:28:43.154188');
INSERT INTO public.games VALUES (108, 79, 524, 523, '2024-11-17 21:31:38.950729');
INSERT INTO public.games VALUES (109, 79, 831, 830, '2024-11-17 21:31:39.096459');
INSERT INTO public.games VALUES (110, 80, 319, 318, '2024-11-17 21:31:39.242834');
INSERT INTO public.games VALUES (111, 80, 770, 769, '2024-11-17 21:31:39.372071');
INSERT INTO public.games VALUES (112, 79, 154, 151, '2024-11-17 21:31:39.467436');
INSERT INTO public.games VALUES (113, 79, 162, 161, '2024-11-17 21:31:39.536505');
INSERT INTO public.games VALUES (114, 79, 662, 661, '2024-11-17 21:31:39.645364');
INSERT INTO public.games VALUES (115, 81, 633, 632, '2024-11-17 21:31:47.502291');
INSERT INTO public.games VALUES (116, 81, 70, 69, '2024-11-17 21:31:47.5866');
INSERT INTO public.games VALUES (117, 82, 631, 630, '2024-11-17 21:31:47.762101');
INSERT INTO public.games VALUES (118, 82, 662, 661, '2024-11-17 21:31:47.884439');
INSERT INTO public.games VALUES (119, 81, 998, 995, '2024-11-17 21:31:48.015852');
INSERT INTO public.games VALUES (120, 81, 197, 196, '2024-11-17 21:31:48.09428');
INSERT INTO public.games VALUES (121, 81, 682, 681, '2024-11-17 21:31:48.214782');
INSERT INTO public.games VALUES (122, 83, 541, 540, '2024-11-17 21:32:38.454096');
INSERT INTO public.games VALUES (123, 83, 887, 886, '2024-11-17 21:32:38.587486');
INSERT INTO public.games VALUES (124, 84, 18, 17, '2024-11-17 21:32:38.711643');
INSERT INTO public.games VALUES (125, 84, 244, 243, '2024-11-17 21:32:38.792802');
INSERT INTO public.games VALUES (126, 83, 845, 842, '2024-11-17 21:32:38.920091');
INSERT INTO public.games VALUES (127, 83, 286, 285, '2024-11-17 21:32:39.025178');
INSERT INTO public.games VALUES (128, 83, 164, 163, '2024-11-17 21:32:39.116949');
INSERT INTO public.games VALUES (129, 85, 986, 985, '2024-11-17 21:33:15.299029');
INSERT INTO public.games VALUES (130, 85, 314, 313, '2024-11-17 21:33:15.405865');
INSERT INTO public.games VALUES (131, 86, 813, 812, '2024-11-17 21:33:15.609585');
INSERT INTO public.games VALUES (132, 86, 89, 88, '2024-11-17 21:33:15.699009');
INSERT INTO public.games VALUES (133, 85, 108, 105, '2024-11-17 21:33:15.786716');
INSERT INTO public.games VALUES (134, 85, 814, 813, '2024-11-17 21:33:15.912955');
INSERT INTO public.games VALUES (135, 85, 248, 247, '2024-11-17 21:33:15.991863');
INSERT INTO public.games VALUES (136, 87, 568, 567, '2024-11-17 21:39:22.925684');
INSERT INTO public.games VALUES (137, 87, 837, 836, '2024-11-17 21:39:23.060736');
INSERT INTO public.games VALUES (138, 88, 523, 522, '2024-11-17 21:39:23.220762');
INSERT INTO public.games VALUES (139, 88, 761, 760, '2024-11-17 21:39:23.338473');
INSERT INTO public.games VALUES (140, 87, 572, 569, '2024-11-17 21:39:23.444514');
INSERT INTO public.games VALUES (141, 87, 513, 512, '2024-11-17 21:39:23.554249');
INSERT INTO public.games VALUES (142, 87, 878, 877, '2024-11-17 21:39:23.681449');
INSERT INTO public.games VALUES (143, 89, 794, 793, '2024-11-17 21:40:01.189947');
INSERT INTO public.games VALUES (144, 89, 908, 907, '2024-11-17 21:40:01.334097');
INSERT INTO public.games VALUES (145, 90, 228, 227, '2024-11-17 21:40:01.476881');
INSERT INTO public.games VALUES (146, 90, 494, 493, '2024-11-17 21:40:01.579135');
INSERT INTO public.games VALUES (147, 89, 426, 423, '2024-11-17 21:40:01.692766');
INSERT INTO public.games VALUES (148, 89, 467, 466, '2024-11-17 21:40:01.788512');
INSERT INTO public.games VALUES (149, 89, 558, 557, '2024-11-17 21:40:01.889342');
INSERT INTO public.games VALUES (150, 91, 634, 633, '2024-11-17 21:44:36.645293');
INSERT INTO public.games VALUES (151, 91, 210, 209, '2024-11-17 21:44:36.748423');
INSERT INTO public.games VALUES (152, 92, 576, 575, '2024-11-17 21:44:36.921772');
INSERT INTO public.games VALUES (153, 92, 9, 8, '2024-11-17 21:44:37.002828');
INSERT INTO public.games VALUES (154, 91, 524, 521, '2024-11-17 21:44:37.112792');
INSERT INTO public.games VALUES (155, 91, 86, 85, '2024-11-17 21:44:37.209613');
INSERT INTO public.games VALUES (156, 91, 530, 529, '2024-11-17 21:44:37.315979');
INSERT INTO public.games VALUES (157, 93, 721, 720, '2024-11-17 21:44:55.459365');
INSERT INTO public.games VALUES (158, 93, 869, 868, '2024-11-17 21:44:55.59315');
INSERT INTO public.games VALUES (159, 94, 865, 864, '2024-11-17 21:44:55.791242');
INSERT INTO public.games VALUES (160, 94, 15, 14, '2024-11-17 21:44:55.875296');
INSERT INTO public.games VALUES (161, 93, 316, 313, '2024-11-17 21:44:55.981918');
INSERT INTO public.games VALUES (162, 93, 822, 821, '2024-11-17 21:44:56.102824');
INSERT INTO public.games VALUES (163, 93, 839, 838, '2024-11-17 21:44:56.230779');
INSERT INTO public.games VALUES (164, 95, 583, 582, '2024-11-17 21:49:55.359698');
INSERT INTO public.games VALUES (165, 95, 893, 892, '2024-11-17 21:49:55.50124');
INSERT INTO public.games VALUES (166, 96, 851, 850, '2024-11-17 21:49:55.720529');
INSERT INTO public.games VALUES (167, 96, 373, 372, '2024-11-17 21:49:55.827224');
INSERT INTO public.games VALUES (168, 95, 521, 518, '2024-11-17 21:49:55.945927');
INSERT INTO public.games VALUES (169, 95, 531, 530, '2024-11-17 21:49:56.061757');
INSERT INTO public.games VALUES (170, 95, 356, 355, '2024-11-17 21:49:56.180161');
INSERT INTO public.games VALUES (171, 97, 435, 434, '2024-11-17 21:50:03.945805');
INSERT INTO public.games VALUES (172, 97, 411, 410, '2024-11-17 21:50:04.058088');
INSERT INTO public.games VALUES (173, 98, 314, 313, '2024-11-17 21:50:04.207182');
INSERT INTO public.games VALUES (174, 98, 427, 426, '2024-11-17 21:50:04.325779');
INSERT INTO public.games VALUES (175, 97, 669, 666, '2024-11-17 21:50:04.443922');
INSERT INTO public.games VALUES (176, 97, 86, 85, '2024-11-17 21:50:04.532864');
INSERT INTO public.games VALUES (177, 97, 837, 836, '2024-11-17 21:50:04.657181');
INSERT INTO public.games VALUES (178, 99, 904, 903, '2024-11-17 21:54:32.807966');
INSERT INTO public.games VALUES (179, 100, 577, 576, '2024-11-17 21:54:33.074546');
INSERT INTO public.games VALUES (180, 99, 553, 550, '2024-11-17 21:54:33.255216');
INSERT INTO public.games VALUES (181, 99, 422, 421, '2024-11-17 21:54:33.365095');
INSERT INTO public.games VALUES (182, 99, 386, 385, '2024-11-17 21:54:33.469112');
INSERT INTO public.games VALUES (183, 101, 869, 868, '2024-11-17 21:55:17.8127');
INSERT INTO public.games VALUES (184, 101, 901, 900, '2024-11-17 21:55:17.94719');
INSERT INTO public.games VALUES (185, 102, 900, 899, '2024-11-17 21:55:18.116688');
INSERT INTO public.games VALUES (186, 102, 780, 779, '2024-11-17 21:55:18.256699');
INSERT INTO public.games VALUES (187, 101, 337, 334, '2024-11-17 21:55:18.367244');
INSERT INTO public.games VALUES (188, 101, 992, 991, '2024-11-17 21:55:18.523532');
INSERT INTO public.games VALUES (189, 101, 767, 766, '2024-11-17 21:55:18.649283');
INSERT INTO public.games VALUES (190, 103, 286, 285, '2024-11-17 21:59:40.545422');
INSERT INTO public.games VALUES (191, 103, 275, 274, '2024-11-17 21:59:40.636726');
INSERT INTO public.games VALUES (192, 104, 208, 207, '2024-11-17 21:59:40.775863');
INSERT INTO public.games VALUES (193, 104, 97, 96, '2024-11-17 21:59:40.859001');
INSERT INTO public.games VALUES (194, 103, 338, 335, '2024-11-17 21:59:40.952497');
INSERT INTO public.games VALUES (195, 103, 835, 834, '2024-11-17 21:59:41.083058');
INSERT INTO public.games VALUES (196, 103, 879, 878, '2024-11-17 21:59:41.208553');
INSERT INTO public.games VALUES (197, 105, 34, 33, '2024-11-17 22:00:07.836255');
INSERT INTO public.games VALUES (198, 105, 934, 933, '2024-11-17 22:00:07.987822');
INSERT INTO public.games VALUES (199, 106, 153, 152, '2024-11-17 22:00:08.122325');
INSERT INTO public.games VALUES (200, 106, 876, 875, '2024-11-17 22:00:08.28275');
INSERT INTO public.games VALUES (201, 105, 850, 847, '2024-11-17 22:00:08.415065');
INSERT INTO public.games VALUES (202, 105, 619, 618, '2024-11-17 22:00:08.53214');
INSERT INTO public.games VALUES (203, 105, 542, 541, '2024-11-17 22:00:08.652675');
INSERT INTO public.games VALUES (204, 107, 351, 350, '2024-11-17 22:02:09.023224');
INSERT INTO public.games VALUES (205, 107, 935, 934, '2024-11-17 22:02:09.16904');
INSERT INTO public.games VALUES (206, 108, 161, 160, '2024-11-17 22:02:09.302611');
INSERT INTO public.games VALUES (207, 108, 999, 998, '2024-11-17 22:02:09.45582');
INSERT INTO public.games VALUES (208, 107, 200, 197, '2024-11-17 22:02:09.55238');
INSERT INTO public.games VALUES (209, 107, 887, 886, '2024-11-17 22:02:09.678728');
INSERT INTO public.games VALUES (210, 107, 131, 130, '2024-11-17 22:02:09.772903');
INSERT INTO public.games VALUES (211, 8, 10, 48, '2024-11-17 22:02:58.534896');
INSERT INTO public.games VALUES (212, 109, 190, 189, '2024-11-17 22:04:26.467184');
INSERT INTO public.games VALUES (213, 109, 534, 533, '2024-11-17 22:04:26.567471');
INSERT INTO public.games VALUES (214, 110, 868, 867, '2024-11-17 22:04:26.752258');
INSERT INTO public.games VALUES (215, 110, 737, 736, '2024-11-17 22:04:26.885533');
INSERT INTO public.games VALUES (216, 109, 80, 77, '2024-11-17 22:04:26.962823');
INSERT INTO public.games VALUES (217, 109, 341, 340, '2024-11-17 22:04:27.043334');
INSERT INTO public.games VALUES (218, 109, 808, 807, '2024-11-17 22:04:27.148225');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1731874259631', 0, NULL);
INSERT INTO public.users VALUES (3, 'user_1731874259630', 0, NULL);
INSERT INTO public.users VALUES (74, 'Panwel', 1, 15);
INSERT INTO public.users VALUES (106, 'user_1731880807696', 2, 153);
INSERT INTO public.users VALUES (10, 'user_1731874618457', 0, NULL);
INSERT INTO public.users VALUES (12, 'user_1731874618456', 0, NULL);
INSERT INTO public.users VALUES (65, 'user_1731877676996', 2, 242);
INSERT INTO public.users VALUES (17, 'user_1731874763386', 0, NULL);
INSERT INTO public.users VALUES (19, 'user_1731874763385', 0, NULL);
INSERT INTO public.users VALUES (95, 'user_1731880195163', 5, 356);
INSERT INTO public.users VALUES (64, 'user_1731877676997', 5, 69);
INSERT INTO public.users VALUES (24, 'user_1731874868455', 0, NULL);
INSERT INTO public.users VALUES (26, 'user_1731874868454', 0, NULL);
INSERT INTO public.users VALUES (55, 'user_1731876308541', 2, 191);
INSERT INTO public.users VALUES (105, 'user_1731880807697', 5, 34);
INSERT INTO public.users VALUES (31, 'user_1731874997722', 0, NULL);
INSERT INTO public.users VALUES (54, 'user_1731876308542', 5, 132);
INSERT INTO public.users VALUES (33, 'user_1731874997721', 0, NULL);
INSERT INTO public.users VALUES (86, 'user_1731879195083', 2, 89);
INSERT INTO public.users VALUES (76, 'user_1731878879511', 2, 58);
INSERT INTO public.users VALUES (57, 'user_1731876527810', 2, 126);
INSERT INTO public.users VALUES (67, 'user_1731877970717', 2, 495);
INSERT INTO public.users VALUES (56, 'user_1731876527811', 5, 49);
INSERT INTO public.users VALUES (40, 'user_1731875075937', 2, 647);
INSERT INTO public.users VALUES (75, 'user_1731878879512', 5, 176);
INSERT INTO public.users VALUES (66, 'user_1731877970718', 5, 12);
INSERT INTO public.users VALUES (85, 'user_1731879195084', 5, 108);
INSERT INTO public.users VALUES (59, 'user_1731876648810', 2, 212);
INSERT INTO public.users VALUES (38, 'user_1731875075938', 5, 248);
INSERT INTO public.users VALUES (58, 'user_1731876648811', 5, 415);
INSERT INTO public.users VALUES (69, 'user_1731878035109', 2, 261);
INSERT INTO public.users VALUES (98, 'user_1731880203784', 2, 314);
INSERT INTO public.users VALUES (47, 'user_1731875395246', 2, 400);
INSERT INTO public.users VALUES (61, 'user_1731876967098', 2, 214);
INSERT INTO public.users VALUES (78, 'user_1731878922245', 2, 85);
INSERT INTO public.users VALUES (68, 'user_1731878035110', 5, 226);
INSERT INTO public.users VALUES (60, 'user_1731876967099', 5, 248);
INSERT INTO public.users VALUES (45, 'user_1731875395247', 5, 736);
INSERT INTO public.users VALUES (88, 'user_1731879562745', 2, 523);
INSERT INTO public.users VALUES (77, 'user_1731878922246', 5, 66);
INSERT INTO public.users VALUES (63, 'user_1731877229796', 2, 466);
INSERT INTO public.users VALUES (108, 'user_1731880928860', 2, 161);
INSERT INTO public.users VALUES (71, 'user_1731878218129', 2, 68);
INSERT INTO public.users VALUES (97, 'user_1731880203785', 5, 86);
INSERT INTO public.users VALUES (62, 'user_1731877229797', 5, 252);
INSERT INTO public.users VALUES (70, 'user_1731878218130', 5, 230);
INSERT INTO public.users VALUES (87, 'user_1731879562746', 5, 513);
INSERT INTO public.users VALUES (80, 'user_1731879098770', 2, 319);
INSERT INTO public.users VALUES (79, 'user_1731879098771', 5, 154);
INSERT INTO public.users VALUES (73, 'user_1731878444936', 2, 67);
INSERT INTO public.users VALUES (72, 'user_1731878444937', 5, 166);
INSERT INTO public.users VALUES (100, 'user_1731880472487', 1, 577);
INSERT INTO public.users VALUES (90, 'user_1731879600985', 2, 228);
INSERT INTO public.users VALUES (107, 'user_1731880928861', 5, 131);
INSERT INTO public.users VALUES (82, 'user_1731879107278', 2, 631);
INSERT INTO public.users VALUES (8, 'Ayanda', 9, 7);
INSERT INTO public.users VALUES (89, 'user_1731879600986', 5, 426);
INSERT INTO public.users VALUES (81, 'user_1731879107279', 5, 70);
INSERT INTO public.users VALUES (99, 'user_1731880472488', 4, 386);
INSERT INTO public.users VALUES (84, 'user_1731879158263', 2, 18);
INSERT INTO public.users VALUES (83, 'user_1731879158264', 5, 164);
INSERT INTO public.users VALUES (92, 'user_1731879876465', 2, 9);
INSERT INTO public.users VALUES (91, 'user_1731879876466', 5, 86);
INSERT INTO public.users VALUES (102, 'user_1731880517607', 2, 780);
INSERT INTO public.users VALUES (110, 'user_1731881066320', 2, 737);
INSERT INTO public.users VALUES (101, 'user_1731880517608', 5, 337);
INSERT INTO public.users VALUES (94, 'user_1731879895273', 2, 15);
INSERT INTO public.users VALUES (109, 'user_1731881066321', 5, 80);
INSERT INTO public.users VALUES (93, 'user_1731879895274', 5, 316);
INSERT INTO public.users VALUES (96, 'user_1731880195162', 2, 373);
INSERT INTO public.users VALUES (104, 'user_1731880780395', 2, 97);
INSERT INTO public.users VALUES (103, 'user_1731880780396', 5, 275);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 218, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 110, true);


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

