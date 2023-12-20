--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: lecture; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lecture (
    id integer NOT NULL,
    day integer,
    duration integer,
    lecturer character varying(255),
    room character varying(255),
    "time" integer,
    subject_id integer
);


ALTER TABLE public.lecture OWNER TO postgres;

--
-- Name: lecture_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lecture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lecture_id_seq OWNER TO postgres;

--
-- Name: lecture_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lecture_id_seq OWNED BY public.lecture.id;


--
-- Name: practice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.practice (
    id integer NOT NULL,
    day integer,
    duration integer,
    practice_teacher character varying(255),
    room character varying(255),
    "time" integer,
    lecture_id integer
);


ALTER TABLE public.practice OWNER TO postgres;

--
-- Name: practice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.practice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.practice_id_seq OWNER TO postgres;

--
-- Name: practice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.practice_id_seq OWNED BY public.practice.id;


--
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    id integer NOT NULL,
    code character varying(255),
    subject_name character varying(255)
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subject_id_seq OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_id_seq OWNED BY public.subject.id;


--
-- Name: lecture id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecture ALTER COLUMN id SET DEFAULT nextval('public.lecture_id_seq'::regclass);


--
-- Name: practice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.practice ALTER COLUMN id SET DEFAULT nextval('public.practice_id_seq'::regclass);


--
-- Name: subject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject ALTER COLUMN id SET DEFAULT nextval('public.subject_id_seq'::regclass);


--
-- Data for Name: lecture; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lecture (id, day, duration, lecturer, room, "time", subject_id) FROM stdin;
1	2	1	Azamat Serek	n/a	10	1
2	1	1	Azamat Serek	n/a	12	1
3	1	1	Azamat Serek	n/a	14	1
4	2	1	Azamat Serek	n/a	17	1
5	5	1	Azamat Serek	n/a	9	1
6	2	1	Azamat Serek	n/a	12	1
7	1	1	Azamat Serek	n/a	10	1
8	1	2	Sufyan Mustafa	n/a	14	2
9	6	2	Sufyan Mustafa	n/a	12	2
10	3	2	Sufyan Mustafa	n/a	14	2
11	1	2	Sufyan Mustafa	n/a	11	2
12	2	2	Sufyan Mustafa	n/a	13	2
13	3	2	Sufyan Mustafa	n/a	12	2
14	4	2	Sufyan Mustafa	n/a	9	2
\.


--
-- Data for Name: practice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.practice (id, day, duration, practice_teacher, room, "time", lecture_id) FROM stdin;
1	2	2	Azamat Serek	n/a	14	1
2	3	2	Azamat Serek	n/a	14	1
3	5	2	Meruyert Raiymbekova	n/a	16	1
4	3	2	Meruyert Raiymbekova	n/a	14	2
5	1	2	Meruyert Raiymbekova	n/a	15	2
6	2	2	Meruyert Raiymbekova	n/a	9	2
7	2	2	Meruyert Raiymbekova	n/a	12	3
8	6	2	Alfarabi Serik	n/a	16	3
9	6	2	Alfarabi Serik	n/a	9	3
10	6	2	Alfarabi Serik	n/a	12	4
11	5	2	Arailym Serikbay	n/a	9	4
12	4	2	Aierke Myrzabayeva	n/a	11	4
13	5	2	Aierke Myrzabayeva	n/a	10	5
14	6	2	Aierke Myrzabayeva	n/a	12	5
15	6	2	Nurbol Sabitov	n/a	12	5
16	4	2	FatherOfCEOs	n/a	15	8
17	5	2	FatherOfCEOs	n/a	9	8
18	2	2	FatherOfCEOs	n/a	16	8
19	6	2	FatherOfCEOs	n/a	16	9
20	6	2	FatherOfCEOs	n/a	16	9
21	6	2	FatherOfCEOs	n/a	14	9
22	4	2	FatherOfCEOs	n/a	11	10
23	5	2	FatherOfCEOs	n/a	16	10
24	4	2	FatherOfCEOs	n/a	14	10
25	1	2	FatherOfCEOs	n/a	16	11
26	1	2	FatherOfCEOs	n/a	14	11
27	2	2	FatherOfCEOs	n/a	9	11
28	3	2	FatherOfCEOs	n/a	14	12
29	5	2	FatherOfCEOs	n/a	10	12
30	2	2	FatherOfCEOs	n/a	16	12
31	5	2	FatherOfCEOs	n/a	14	13
32	3	2	FatherOfCEOs	n/a	16	13
33	4	2	FatherOfCEOs	n/a	16	13
34	6	2	FatherOfCEOs	n/a	12	14
35	6	2	FatherOfCEOs	n/a	9	14
\.


--
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject (id, code, subject_name) FROM stdin;
1	INF 201	Database Management Systems 1
2	CSS 215	Introduction to Algorithms
\.


--
-- Name: lecture_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lecture_id_seq', 14, true);


--
-- Name: practice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.practice_id_seq', 35, true);


--
-- Name: subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_id_seq', 2, true);


--
-- Name: lecture lecture_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecture
    ADD CONSTRAINT lecture_pkey PRIMARY KEY (id);


--
-- Name: practice practice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.practice
    ADD CONSTRAINT practice_pkey PRIMARY KEY (id);


--
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (id);


--
-- Name: practice fk3p0y3yvrfj4fjko8hg7pvafya; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.practice
    ADD CONSTRAINT fk3p0y3yvrfj4fjko8hg7pvafya FOREIGN KEY (lecture_id) REFERENCES public.lecture(id);


--
-- Name: lecture fke4a1kd2dml7m5hr42aal7nvew; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lecture
    ADD CONSTRAINT fke4a1kd2dml7m5hr42aal7nvew FOREIGN KEY (subject_id) REFERENCES public.subject(id);


--
-- PostgreSQL database dump complete
--

