--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    id integer NOT NULL,
    admin_user character varying(25),
    admin_pass character varying(25),
    admin_nama character varying(25),
    admin_role character varying(25)
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_id_seq OWNER TO postgres;

--
-- Name: admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_id_seq OWNED BY public.admin.id;


--
-- Name: main_jadwal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_jadwal (
    id bigint NOT NULL,
    input_tgl timestamp without time zone,
    input_user character varying(100),
    pesan_tgl date,
    pesan_lap character varying(10),
    pesan_nama character varying(200),
    pesan_contact character varying(20),
    member_flag integer NOT NULL,
    member_id bigint,
    update_user character varying(100),
    update_tgl timestamp without time zone
);


ALTER TABLE public.main_jadwal OWNER TO postgres;

--
-- Name: main_jadwal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_jadwal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_jadwal_id_seq OWNER TO postgres;

--
-- Name: main_jadwal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_jadwal_id_seq OWNED BY public.main_jadwal.id;


--
-- Name: admin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin ALTER COLUMN id SET DEFAULT nextval('public.admin_id_seq'::regclass);


--
-- Name: main_jadwal id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_jadwal ALTER COLUMN id SET DEFAULT nextval('public.main_jadwal_id_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (id, admin_user, admin_pass, admin_nama, admin_role) FROM stdin;
1	08562776188	admin	CAESAR	SUPER_ADMIN
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, true);


--
-- Data for Name: main_jadwal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.main_jadwal (id, input_tgl, input_user, pesan_tgl, pesan_lap, pesan_nama, pesan_contact, member_flag, member_id, update_user, update_tgl) FROM stdin;
0	2021-02-16 00:00:00	IRA	2021-02-16	A8	CAESAR	08562776188	0	0	\N	\N
4	2021-02-14 00:00:00	IRA	2021-02-14	A8	CAESAR	08562776188	0	0	\N	\N
5	2021-02-18 00:00:00	IRA	2021-02-18	A8	CAESAR	08562776188	0	0	\N	\N
6	2021-02-18 00:00:00	IRA	2021-02-18	B8	CAESAR	08562776188	0	0	\N	\N
7	2021-02-18 00:00:00	IRA	2021-02-19	A10	CAESAR	08562776188	0	0	\N	\N
8	2021-02-18 00:00:00	IRA	2021-02-17	B12	CAESAR	08562776188	0	0	\N	\N
10	2021-02-18 10:18:41.66607	IRA	2021-02-19	A13	PB BULUSAN	08561886722	0	0	\N	\N
11	2021-02-18 10:21:13.317551	IRA	2021-02-19	A13	PB BULUSAN	08561886722	0	0	\N	\N
12	2021-02-18 10:37:51.380896	IRA	2021-02-19	A14	PB BULUSAN	08561886722	0	0	\N	\N
13	2021-02-19 15:39:40.113897	IRA	2021-02-20	A15	PB BULUSAN	08561886722	0	0	\N	\N
14	2021-02-19 15:39:45.781454	IRA	2021-02-21	A15	PB BULUSAN	08561886722	0	0	\N	\N
15	2021-02-25 14:38:36.430204	CAESAR	2021-02-25	B19	CAESAR 2	1221	0	0	\N	\N
17	2021-02-25 14:52:40.71159	CAESAR	2021-02-27	B19	CAESAR 5	057777	0	0	\N	\N
18	2021-02-25 14:54:14.60496	CAESAR	2021-02-26	B14	CAESAR 5	057777	0	0	\N	\N
19	2021-02-25 14:54:47.982966	CAESAR	2021-02-27	B13	YO	057777	0	0	\N	\N
16	2021-02-25 14:46:28.005331	CAESAR	2021-02-26	A16	CAESAR 3	22111	0	0	\N	\N
20	2021-03-01 14:18:11.733661	CAESAR	2021-03-02	B19	GYTTG	223	0	0	\N	\N
21	2021-03-02 16:04:00.221859	CAESAR	2021-03-13	A17	CAESAR 13	08562776188	0	0	\N	\N
24	2021-03-17 14:46:49.802651	CAESAR	2021-03-19	A14	TESTa	111	0	0	\N	\N
23	2021-03-17 14:34:52.683207	CAESAR	2021-03-18	A8	CAESARio	1234	0	0	CAESAR	2021-03-18 14:24:34.60886
25	2021-03-22 10:55:46.806743	CAESAR	2021-04-21	A8	TES 30 HARI	7357	0	0	\N	\N
\.


--
-- Name: main_jadwal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_jadwal_id_seq', 25, true);


--
-- PostgreSQL database dump complete
--

