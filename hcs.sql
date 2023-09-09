--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.24
-- Dumped by pg_dump version 9.6.24

-- Started on 2023-09-09 11:09:10

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

--
-- TOC entry 2198 (class 1262 OID 16401)
-- Name: hcs; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE hcs WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE hcs OWNER TO postgres;

\connect hcs

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

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2200 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16777)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    customer_name character varying(255) NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16775)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO postgres;

--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 197
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 188 (class 1259 OID 16729)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16727)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 187
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 192 (class 1259 OID 16753)
-- Name: merchants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.merchants (
    id bigint NOT NULL,
    merchant_name character varying(255) NOT NULL
);


ALTER TABLE public.merchants OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16751)
-- Name: merchants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.merchants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchants_id_seq OWNER TO postgres;

--
-- TOC entry 2203 (class 0 OID 0)
-- Dependencies: 191
-- Name: merchants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.merchants_id_seq OWNED BY public.merchants.id;


--
-- TOC entry 186 (class 1259 OID 16404)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16402)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2204 (class 0 OID 0)
-- Dependencies: 185
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 194 (class 1259 OID 16761)
-- Name: outlets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.outlets (
    id bigint NOT NULL,
    outlet_name character varying(255) NOT NULL
);


ALTER TABLE public.outlets OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 16759)
-- Name: outlets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outlets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outlets_id_seq OWNER TO postgres;

--
-- TOC entry 2205 (class 0 OID 0)
-- Dependencies: 193
-- Name: outlets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outlets_id_seq OWNED BY public.outlets.id;


--
-- TOC entry 196 (class 1259 OID 16769)
-- Name: staffs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.staffs (
    id bigint NOT NULL,
    staff_name character varying(255) NOT NULL
);


ALTER TABLE public.staffs OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16767)
-- Name: staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staffs_id_seq OWNER TO postgres;

--
-- TOC entry 2206 (class 0 OID 0)
-- Dependencies: 195
-- Name: staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.staffs_id_seq OWNED BY public.staffs.id;


--
-- TOC entry 190 (class 1259 OID 16743)
-- Name: transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transactions (
    id bigint NOT NULL,
    merchant_id character varying(2) NOT NULL,
    outlet_id character varying(2) NOT NULL,
    staff_id character varying(2) NOT NULL,
    pay_amount double precision NOT NULL,
    change_amount double precision NOT NULL,
    payment_type character varying(1) NOT NULL,
    tax double precision NOT NULL,
    customer_id character varying(2) NOT NULL,
    total_amount double precision NOT NULL,
    payment_status character varying(1) NOT NULL,
    created_at timestamp(0) without time zone DEFAULT now(),
    updated_at timestamp(0) without time zone DEFAULT now()
);


ALTER TABLE public.transactions OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 16741)
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transactions_id_seq OWNER TO postgres;

--
-- TOC entry 2207 (class 0 OID 0)
-- Dependencies: 189
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- TOC entry 2047 (class 2604 OID 16780)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 2039 (class 2604 OID 16732)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 2044 (class 2604 OID 16756)
-- Name: merchants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchants ALTER COLUMN id SET DEFAULT nextval('public.merchants_id_seq'::regclass);


--
-- TOC entry 2038 (class 2604 OID 16407)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2045 (class 2604 OID 16764)
-- Name: outlets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlets ALTER COLUMN id SET DEFAULT nextval('public.outlets_id_seq'::regclass);


--
-- TOC entry 2046 (class 2604 OID 16772)
-- Name: staffs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs ALTER COLUMN id SET DEFAULT nextval('public.staffs_id_seq'::regclass);


--
-- TOC entry 2041 (class 2604 OID 16746)
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- TOC entry 2192 (class 0 OID 16777)
-- Dependencies: 198
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (id, customer_name) VALUES (1, 'Bagya Suryono S.Psi');
INSERT INTO public.customers (id, customer_name) VALUES (2, 'Jagapati Halim');
INSERT INTO public.customers (id, customer_name) VALUES (3, 'Jamalia Hamima Rahmawati');
INSERT INTO public.customers (id, customer_name) VALUES (4, 'Legawa Firmansyah');
INSERT INTO public.customers (id, customer_name) VALUES (5, 'Bagas Prakasa');
INSERT INTO public.customers (id, customer_name) VALUES (6, 'Utama Utama');
INSERT INTO public.customers (id, customer_name) VALUES (7, 'Bahuwirya Kusuma Prakasa M.Pd');
INSERT INTO public.customers (id, customer_name) VALUES (8, 'Juli Riyanti');
INSERT INTO public.customers (id, customer_name) VALUES (9, 'Rini Usyi Haryanti S.Pd');
INSERT INTO public.customers (id, customer_name) VALUES (10, 'Iriana Ophelia Lestari S.T.');
INSERT INTO public.customers (id, customer_name) VALUES (11, 'Karen Juli Padmasari S.Kom');
INSERT INTO public.customers (id, customer_name) VALUES (12, 'Paiman Bakijan Mandala S.E.I');
INSERT INTO public.customers (id, customer_name) VALUES (13, 'Raditya Thamrin S.T.');
INSERT INTO public.customers (id, customer_name) VALUES (14, 'Mursita Utama');
INSERT INTO public.customers (id, customer_name) VALUES (15, 'Wani Riyanti');
INSERT INTO public.customers (id, customer_name) VALUES (16, 'Zizi Lalita Rahimah S.Gz');
INSERT INTO public.customers (id, customer_name) VALUES (17, 'Sarah Farah Usamah S.Sos');
INSERT INTO public.customers (id, customer_name) VALUES (18, 'Devi Namaga');
INSERT INTO public.customers (id, customer_name) VALUES (19, 'Padmi Violet Hartati S.Pt');
INSERT INTO public.customers (id, customer_name) VALUES (20, 'Shakila Rahimah');
INSERT INTO public.customers (id, customer_name) VALUES (21, 'Anastasia Palastri');
INSERT INTO public.customers (id, customer_name) VALUES (22, 'Dinda Gasti Lestari S.H.');
INSERT INTO public.customers (id, customer_name) VALUES (23, 'Kadir Siregar M.M.');
INSERT INTO public.customers (id, customer_name) VALUES (24, 'Damu Prabowo S.Psi');
INSERT INTO public.customers (id, customer_name) VALUES (25, 'Elma Widiastuti S.T.');
INSERT INTO public.customers (id, customer_name) VALUES (26, 'Sabrina Yolanda');
INSERT INTO public.customers (id, customer_name) VALUES (27, 'Karja Siregar S.I.Kom');
INSERT INTO public.customers (id, customer_name) VALUES (28, 'Gambira Maryadi Mansur S.T.');
INSERT INTO public.customers (id, customer_name) VALUES (29, 'Dacin Kurniawan');
INSERT INTO public.customers (id, customer_name) VALUES (30, 'Makuta Gunawan S.Pt');
INSERT INTO public.customers (id, customer_name) VALUES (31, 'Zulfa Purwanti');
INSERT INTO public.customers (id, customer_name) VALUES (32, 'Agus Lazuardi');
INSERT INTO public.customers (id, customer_name) VALUES (33, 'Vera Lailasari');
INSERT INTO public.customers (id, customer_name) VALUES (34, 'Hani Wijayanti');
INSERT INTO public.customers (id, customer_name) VALUES (35, 'Zalindra Pia Mulyani M.Farm');
INSERT INTO public.customers (id, customer_name) VALUES (36, 'Kenes Maryadi');
INSERT INTO public.customers (id, customer_name) VALUES (37, 'Yuliana Kania Zulaika');
INSERT INTO public.customers (id, customer_name) VALUES (38, 'Dina Ulya Haryanti');
INSERT INTO public.customers (id, customer_name) VALUES (39, 'Bakiono Sirait');
INSERT INTO public.customers (id, customer_name) VALUES (40, 'Laila Melani M.Farm');


--
-- TOC entry 2208 (class 0 OID 0)
-- Dependencies: 197
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 40, true);


--
-- TOC entry 2182 (class 0 OID 16729)
-- Dependencies: 188
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2209 (class 0 OID 0)
-- Dependencies: 187
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 2186 (class 0 OID 16753)
-- Dependencies: 192
-- Data for Name: merchants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.merchants (id, merchant_name) VALUES (15, 'ophelia.sudiati mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (52, 'winarno.ellis mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (53, 'usamah.usyi mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (54, 'dpurnawati mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (55, 'kurniawan.hana mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (56, 'ramadan.vero mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (57, 'bambang80 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (58, 'rdongoran mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (59, 'xhutapea mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (60, 'dasa94 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (50, 'bastuti mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (11, 'teguh59 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (22, 'fujiati.galih mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (23, 'sihotang.farhunnisa mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (12, 'wahyuni.sabri mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (25, 'rachel.wasita mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (26, 'sabrina.yuliarti mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (27, 'puspasari.raharja mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (28, 'xwahyudin mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (29, 'winarsih.jail mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (13, 'yulianti.virman mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (31, 'widiastuti.sadina mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (32, 'balamantri27 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (33, 'sakti12 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (34, 'csaefullah mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (35, 'hani75 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (36, 'marbun.julia mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (37, 'baktianto33 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (38, 'zahra18 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (39, 'alambana.haryanti mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (14, 'tantri.handayani mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (41, 'siti67 mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (42, 'vanya.budiyanto mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (43, 'uli.kurniawan mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (44, 'among.prayoga mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (45, 'dyuniar mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (46, 'eva.mustofa mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (47, 'puspita.yance mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (48, 'ajiono.maryati mart');
INSERT INTO public.merchants (id, merchant_name) VALUES (49, 'permata.hani mart');


--
-- TOC entry 2210 (class 0 OID 0)
-- Dependencies: 191
-- Name: merchants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.merchants_id_seq', 160, true);


--
-- TOC entry 2180 (class 0 OID 16404)
-- Dependencies: 186
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.migrations (id, migration, batch) VALUES (19, '2014_10_12_000000_create_users_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (20, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO public.migrations (id, migration, batch) VALUES (31, '2019_08_19_000000_create_failed_jobs_table', 2);
INSERT INTO public.migrations (id, migration, batch) VALUES (32, '2023_09_08_034950_create_transactions_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (33, '2023_09_08_121854_create_merchants_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (34, '2023_09_08_122038_create_outlets_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (35, '2023_09_08_122137_create_staffs_table', 3);
INSERT INTO public.migrations (id, migration, batch) VALUES (36, '2023_09_08_122202_create_customers_table', 3);


--
-- TOC entry 2211 (class 0 OID 0)
-- Dependencies: 185
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 36, true);


--
-- TOC entry 2188 (class 0 OID 16761)
-- Dependencies: 194
-- Data for Name: outlets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.outlets (id, outlet_name) VALUES (81, 'Subulussalam store');
INSERT INTO public.outlets (id, outlet_name) VALUES (82, 'Palangka Raya store');
INSERT INTO public.outlets (id, outlet_name) VALUES (83, 'Binjai store');
INSERT INTO public.outlets (id, outlet_name) VALUES (84, 'Sawahlunto store');
INSERT INTO public.outlets (id, outlet_name) VALUES (85, 'Blitar store');
INSERT INTO public.outlets (id, outlet_name) VALUES (86, 'Binjai store');
INSERT INTO public.outlets (id, outlet_name) VALUES (87, 'Administrasi Jakarta Pusat store');
INSERT INTO public.outlets (id, outlet_name) VALUES (88, 'Batu store');
INSERT INTO public.outlets (id, outlet_name) VALUES (89, 'Tebing Tinggi store');
INSERT INTO public.outlets (id, outlet_name) VALUES (90, 'Metro store');
INSERT INTO public.outlets (id, outlet_name) VALUES (91, 'Tarakan store');
INSERT INTO public.outlets (id, outlet_name) VALUES (92, 'Bekasi store');
INSERT INTO public.outlets (id, outlet_name) VALUES (93, 'Palangka Raya store');
INSERT INTO public.outlets (id, outlet_name) VALUES (94, 'Depok store');
INSERT INTO public.outlets (id, outlet_name) VALUES (95, 'Ternate store');
INSERT INTO public.outlets (id, outlet_name) VALUES (96, 'Makassar store');
INSERT INTO public.outlets (id, outlet_name) VALUES (97, 'Ambon store');
INSERT INTO public.outlets (id, outlet_name) VALUES (98, 'Langsa store');
INSERT INTO public.outlets (id, outlet_name) VALUES (99, 'Metro store');
INSERT INTO public.outlets (id, outlet_name) VALUES (100, 'Subulussalam store');
INSERT INTO public.outlets (id, outlet_name) VALUES (101, 'Sawahlunto store');
INSERT INTO public.outlets (id, outlet_name) VALUES (102, 'Batu store');
INSERT INTO public.outlets (id, outlet_name) VALUES (103, 'Lubuklinggau store');
INSERT INTO public.outlets (id, outlet_name) VALUES (104, 'Banjarbaru store');
INSERT INTO public.outlets (id, outlet_name) VALUES (105, 'Batam store');
INSERT INTO public.outlets (id, outlet_name) VALUES (106, 'Serang store');
INSERT INTO public.outlets (id, outlet_name) VALUES (107, 'Magelang store');
INSERT INTO public.outlets (id, outlet_name) VALUES (108, 'Surakarta store');
INSERT INTO public.outlets (id, outlet_name) VALUES (109, 'Balikpapan store');
INSERT INTO public.outlets (id, outlet_name) VALUES (110, 'Samarinda store');
INSERT INTO public.outlets (id, outlet_name) VALUES (111, 'Bogor store');
INSERT INTO public.outlets (id, outlet_name) VALUES (112, 'Palopo store');
INSERT INTO public.outlets (id, outlet_name) VALUES (113, 'Makassar store');
INSERT INTO public.outlets (id, outlet_name) VALUES (114, 'Tangerang store');
INSERT INTO public.outlets (id, outlet_name) VALUES (115, 'Magelang store');
INSERT INTO public.outlets (id, outlet_name) VALUES (116, 'Sibolga store');
INSERT INTO public.outlets (id, outlet_name) VALUES (117, 'Parepare store');
INSERT INTO public.outlets (id, outlet_name) VALUES (118, 'Jayapura store');
INSERT INTO public.outlets (id, outlet_name) VALUES (119, 'Manado store');
INSERT INTO public.outlets (id, outlet_name) VALUES (120, 'Bengkulu store');


--
-- TOC entry 2212 (class 0 OID 0)
-- Dependencies: 193
-- Name: outlets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outlets_id_seq', 120, true);


--
-- TOC entry 2190 (class 0 OID 16769)
-- Dependencies: 196
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.staffs (id, staff_name) VALUES (1, 'Vivi Melani');
INSERT INTO public.staffs (id, staff_name) VALUES (2, 'Bakiono Uwais');
INSERT INTO public.staffs (id, staff_name) VALUES (3, 'Gilda Humaira Kusmawati');
INSERT INTO public.staffs (id, staff_name) VALUES (4, 'Galur Hutasoit');
INSERT INTO public.staffs (id, staff_name) VALUES (5, 'Ivan Widodo');
INSERT INTO public.staffs (id, staff_name) VALUES (6, 'Amelia Purnawati M.Kom.');
INSERT INTO public.staffs (id, staff_name) VALUES (7, 'Himawan Empluk Mustofa');
INSERT INTO public.staffs (id, staff_name) VALUES (8, 'Ellis Clara Yuliarti');
INSERT INTO public.staffs (id, staff_name) VALUES (9, 'Ilsa Dinda Purwanti S.Psi');
INSERT INTO public.staffs (id, staff_name) VALUES (10, 'Gabriella Haryanti');
INSERT INTO public.staffs (id, staff_name) VALUES (11, 'Mariadi Rajata S.Gz');
INSERT INTO public.staffs (id, staff_name) VALUES (12, 'Joko Saptono S.Farm');
INSERT INTO public.staffs (id, staff_name) VALUES (13, 'Hesti Fujiati');
INSERT INTO public.staffs (id, staff_name) VALUES (14, 'Septi Puspita M.M.');
INSERT INTO public.staffs (id, staff_name) VALUES (15, 'Lala Yuliarti');
INSERT INTO public.staffs (id, staff_name) VALUES (16, 'Rahmi Oktaviani');
INSERT INTO public.staffs (id, staff_name) VALUES (17, 'Mulyono Manah Prasasta');
INSERT INTO public.staffs (id, staff_name) VALUES (18, 'Harjo Virman Najmudin M.Ak');
INSERT INTO public.staffs (id, staff_name) VALUES (19, 'Latika Yolanda');
INSERT INTO public.staffs (id, staff_name) VALUES (20, 'Okta Tampubolon');
INSERT INTO public.staffs (id, staff_name) VALUES (21, 'Asirwanda Anggriawan');
INSERT INTO public.staffs (id, staff_name) VALUES (22, 'Ika Riyanti S.Gz');
INSERT INTO public.staffs (id, staff_name) VALUES (23, 'Salwa Sabrina Purwanti');
INSERT INTO public.staffs (id, staff_name) VALUES (24, 'Kuncara Gunarto');
INSERT INTO public.staffs (id, staff_name) VALUES (25, 'Empluk Widodo M.M.');
INSERT INTO public.staffs (id, staff_name) VALUES (26, 'Raisa Rahimah M.TI.');
INSERT INTO public.staffs (id, staff_name) VALUES (27, 'Tania Haryanti');
INSERT INTO public.staffs (id, staff_name) VALUES (28, 'Ophelia Julia Nasyidah S.Sos');
INSERT INTO public.staffs (id, staff_name) VALUES (29, 'Dadap Jaiman Anggriawan');
INSERT INTO public.staffs (id, staff_name) VALUES (30, 'Dariati Maulana');
INSERT INTO public.staffs (id, staff_name) VALUES (31, 'Ami Anggraini');
INSERT INTO public.staffs (id, staff_name) VALUES (32, 'Indah Cornelia Rahmawati S.H.');
INSERT INTO public.staffs (id, staff_name) VALUES (33, 'Ibun Cakrabuana Hardiansyah');
INSERT INTO public.staffs (id, staff_name) VALUES (34, 'Gawati Farida');
INSERT INTO public.staffs (id, staff_name) VALUES (35, 'Ida Carla Hariyah S.Psi');
INSERT INTO public.staffs (id, staff_name) VALUES (36, 'Rafid Prasasta');
INSERT INTO public.staffs (id, staff_name) VALUES (37, 'Rachel Lailasari');
INSERT INTO public.staffs (id, staff_name) VALUES (38, 'Irfan Zulkarnain');
INSERT INTO public.staffs (id, staff_name) VALUES (39, 'Elvina Usamah');
INSERT INTO public.staffs (id, staff_name) VALUES (40, 'Pia Wulandari S.Gz');
INSERT INTO public.staffs (id, staff_name) VALUES (41, 'Heru Siregar');
INSERT INTO public.staffs (id, staff_name) VALUES (42, 'Cornelia Anastasia Suryatmi S.E.I');
INSERT INTO public.staffs (id, staff_name) VALUES (43, 'Tami Wahyuni');
INSERT INTO public.staffs (id, staff_name) VALUES (44, 'Anita Raina Hariyah S.Gz');
INSERT INTO public.staffs (id, staff_name) VALUES (45, 'Mursinin Gunawan S.Farm');
INSERT INTO public.staffs (id, staff_name) VALUES (46, 'Elisa Maryati S.Pt');
INSERT INTO public.staffs (id, staff_name) VALUES (47, 'Puji Susanti');
INSERT INTO public.staffs (id, staff_name) VALUES (48, 'Vanesa Mardhiyah');
INSERT INTO public.staffs (id, staff_name) VALUES (49, 'Liman Maheswara');
INSERT INTO public.staffs (id, staff_name) VALUES (50, 'Gina Uyainah');
INSERT INTO public.staffs (id, staff_name) VALUES (51, 'Restu Hariyah M.Pd');
INSERT INTO public.staffs (id, staff_name) VALUES (52, 'Raharja Januar');
INSERT INTO public.staffs (id, staff_name) VALUES (53, 'Karen Riyanti');
INSERT INTO public.staffs (id, staff_name) VALUES (54, 'Cahyanto Cengkal Dabukke');
INSERT INTO public.staffs (id, staff_name) VALUES (55, 'Darsirah Dongoran M.Kom.');
INSERT INTO public.staffs (id, staff_name) VALUES (56, 'Gadang Cemani Prasasta');
INSERT INTO public.staffs (id, staff_name) VALUES (57, 'Halima Mulyani');
INSERT INTO public.staffs (id, staff_name) VALUES (58, 'Galak Manullang');
INSERT INTO public.staffs (id, staff_name) VALUES (59, 'Laila Handayani');
INSERT INTO public.staffs (id, staff_name) VALUES (60, 'Maras Mangunsong');
INSERT INTO public.staffs (id, staff_name) VALUES (61, 'Zulfa Kiandra Nasyiah M.Farm');
INSERT INTO public.staffs (id, staff_name) VALUES (62, 'Panca Megantara');
INSERT INTO public.staffs (id, staff_name) VALUES (63, 'Cahyo Hendra Uwais');
INSERT INTO public.staffs (id, staff_name) VALUES (64, 'Wani Nuraini');
INSERT INTO public.staffs (id, staff_name) VALUES (65, 'Ophelia Hariyah');
INSERT INTO public.staffs (id, staff_name) VALUES (66, 'Harsanto Kairav Pradana S.Ked');
INSERT INTO public.staffs (id, staff_name) VALUES (67, 'Clara Puspa Rahayu S.E.');
INSERT INTO public.staffs (id, staff_name) VALUES (68, 'Jarwa Gunawan');
INSERT INTO public.staffs (id, staff_name) VALUES (69, 'Ganda Bakiono Rajasa S.E.I');
INSERT INTO public.staffs (id, staff_name) VALUES (70, 'Lembah Danang Widodo S.Sos');
INSERT INTO public.staffs (id, staff_name) VALUES (71, 'Mala Permata');
INSERT INTO public.staffs (id, staff_name) VALUES (72, 'Cemplunk Rajata');
INSERT INTO public.staffs (id, staff_name) VALUES (73, 'Farhunnisa Riyanti');
INSERT INTO public.staffs (id, staff_name) VALUES (74, 'Queen Yulianti');
INSERT INTO public.staffs (id, staff_name) VALUES (75, 'Harsanto Wacana');
INSERT INTO public.staffs (id, staff_name) VALUES (76, 'Gantar Setiawan');
INSERT INTO public.staffs (id, staff_name) VALUES (77, 'Rahman Imam Anggriawan S.Pd');
INSERT INTO public.staffs (id, staff_name) VALUES (78, 'Muhammad Zulkarnain');
INSERT INTO public.staffs (id, staff_name) VALUES (79, 'Jumari Waluyo M.TI.');
INSERT INTO public.staffs (id, staff_name) VALUES (80, 'Rahayu Wulandari M.Farm');


--
-- TOC entry 2213 (class 0 OID 0)
-- Dependencies: 195
-- Name: staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.staffs_id_seq', 80, true);


--
-- TOC entry 2184 (class 0 OID 16743)
-- Dependencies: 190
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (35, '78', '18', '43', 255234, 46190, '3', 0.29999999999999999, '29', 9066, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (40, '42', '7', '36', 137071, 41547, '1', 0.10000000000000001, '24', 77906, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (42, '62', '22', '35', 472499, 52432, '1', 0.29999999999999999, '1', 50397, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (48, '11', '0', '70', 500458, 10294, '3', 0.29999999999999999, '29', 80710, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (52, '32', '39', '77', 994282, 91234, '1', 0.29999999999999999, '62', 47676, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (60, '32', '1', '54', 266054, 77322, '1', 0.20000000000000001, '36', 20427, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (61, '26', '62', '48', 59779, 33744, '2', 0.29999999999999999, '32', 22033, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (62, '17', '45', '54', 1731, 64358, '2', 0.29999999999999999, '55', 61018, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (63, '23', '18', '21', 595367, 4445, '2', 0.10000000000000001, '25', 3441, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (64, '14', '75', '80', 527654, 38809, '2', 0.10000000000000001, '37', 69347, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (6, '15', '87', '62', 593723, 88964, '2', 0.29999999999999999, '45', 46463, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (16, '38', '89', '18', 42188, 9048, '2', 0.20000000000000001, '76', 15514, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (32, '52', '73', '77', 478657, 21432, '1', 0.20000000000000001, '37', 16014, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (8, '60', '10', '21', 684118, 10588, '2', 0.29999999999999999, '20', 62363, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (12, '54', '88', '27', 710224, 47028, '2', 0.29999999999999999, '53', 74334, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (17, '38', '89', '41', 339930, 46551, '3', 0.20000000000000001, '46', 1878, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (4, '52', '81', '22', 154000, 73000, '2', 0.10000000000000001, '12', 53607, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (65, '65', '26', '23', 159467, 89209, '1', 0.10000000000000001, '89', 75968, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (66, '89', '22', '23', 343321, 68273, '1', 0.10000000000000001, '49', 93795, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (36, '68', '84', '44', 430460, 41186, '3', 0.29999999999999999, '38', 46651, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (1, '48', '88', '27', 8645, 24951, '2', 0.29999999999999999, '55', 54159, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (20, '53', '51', '36', 640098, 9345, '2', 0.20000000000000001, '21', 55422, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (5, '58', '92', '22', 594000, 74000, '1', 0.10000000000000001, '12', 64095, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (37, '27', '90', '24', 292000, 24000, '1', 0.29999999999999999, '1', 64930, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (25, '55', '69', '39', 29865, 45272, '2', 0.29999999999999999, '19', 26753, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (26, '56', '51', '17', 554221, 4240, '1', 0.10000000000000001, '13', 44930, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (14, '54', '81', '22', 325589, 49890, '1', 0.20000000000000001, '59', 90970, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (34, '60', '31', '22', 398265, 46286, '3', 0.29999999999999999, '25', 66304, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (22, '34', '25', '11', 472124, 50625, '2', 0.10000000000000001, '53', 78546, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (38, '11', '89', '79', 48400, 54000, '3', 0.20000000000000001, '1', 80749, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (30, '58', '63', '44', 101725, 87358, '1', 0.20000000000000001, '22', 19978, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (15, '54', '81', '45', 124000, 95000, '2', 0.29999999999999999, '22', 33267, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (9, '55', '19', '69', 441012, 36213, '2', 0.29999999999999999, '29', 7961, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (3, '46', '88', '59', 101507, 15430, '1', 0.20000000000000001, '49', 27905, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (19, '54', '38', '99', 967858, 18544, '2', 0.29999999999999999, '37', 82137, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (21, '34', '99', '53', 750768, 83508, '1', 0.29999999999999999, '52', 46439, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (45, '58', '92', '63', 263000, 56000, '3', 0.20000000000000001, '3', 17379, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (2, '58', '88', '69', 574309, 21472, '3', 0.29999999999999999, '87', 36196, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (54, '51', '1', '46', 754073, 89376, '2', 0.29999999999999999, '42', 86347, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (49, '29', '65', '12', 646773, 32417, '1', 0.10000000000000001, '9', 32889, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (11, '54', '78', '76', 299770, 43513, '3', 0.10000000000000001, '30', 42509, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (18, '38', '90', '43', 655817, 74296, '3', 0.29999999999999999, '47', 23269, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (41, '95', '92', '21', 444146, 8155, '2', 0.20000000000000001, '35', 3447, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (33, '56', '5', '45', 326529, 91126, '1', 0.20000000000000001, '23', 14105, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (43, '43', '65', '68', 982949, 46337, '1', 0.10000000000000001, '23', 9376, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (44, '13', '42', '93', 948387, 67058, '2', 0.29999999999999999, '12', 31886, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (53, '14', '0', '11', 704990, 68229, '1', 0.20000000000000001, '33', 9674, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (46, '44', '27', '40', 693289, 40588, '2', 0.20000000000000001, '22', 95038, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (50, '45', '76', '23', 386009, 4794, '2', 0.20000000000000001, '4', 73503, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (51, '46', '60', '66', 114016, 17240, '2', 0.10000000000000001, '13', 64551, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (24, '34', '86', '18', 411000, 67000, '1', 0.10000000000000001, '23', 86833, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (56, '41', '86', '73', 66000, 29000, '1', 0.10000000000000001, '34', 960000, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (79, '60', '66', '36', 211320, 94706, '1', 0.10000000000000001, '55', 38986, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (86, '83', '78', '16', 393392, 84464, '1', 0.10000000000000001, '64', 14512, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (89, '75', '16', '36', 171921, 90777, '3', 0.29999999999999999, '9', 88707, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (90, '35', '61', '77', 73287, 67294, '1', 0.10000000000000001, '31', 99665, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (91, '90', '62', '62', 539756, 2065, '3', 0.10000000000000001, '40', 75762, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (95, '65', '21', '12', 91632, 89667, '2', 0.10000000000000001, '59', 31480, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (98, '62', '54', '21', 606490, 58802, '1', 0.10000000000000001, '37', 24304, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (99, '31', '68', '24', 50501, 79790, '2', 0.29999999999999999, '21', 85910, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (100, '85', '82', '53', 453157, 81347, '2', 0.29999999999999999, '63', 20605, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (102, '96', '91', '27', 197778, 16175, '3', 0.20000000000000001, '29', 49103, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (107, '29', '86', '27', 603238, 3518, '2', 0.20000000000000001, '65', 10134, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (125, '16', '16', '2', 764214, 1395, '2', 0.20000000000000001, '24', 38184, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (126, '41', '61', '28', 396256, 78181, '3', 0.20000000000000001, '60', 61208, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (129, '29', '52', '39', 456124, 86588, '2', 0.20000000000000001, '13', 39563, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (130, '18', '90', '2', 561968, 16891, '2', 0.20000000000000001, '39', 30411, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (132, '27', '88', '66', 845344, 33278, '2', 0.29999999999999999, '97', 6240, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (105, '98', '83', '66', 738422, 24686, '1', 0.10000000000000001, '54', 43353, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (127, '48', '78', '56', 147779, 707, '3', 0.10000000000000001, '54', 209, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (69, '20', '93', '66', 737599, 39945, '1', 0.29999999999999999, '8', 30092, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (74, '88', '93', '30', 809719, 85765, '3', 0.20000000000000001, '94', 68674, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (113, '79', '98', '23', 743992, 17557, '2', 0.20000000000000001, '42', 76227, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (111, '53', '85', '69', 65505, 37716, '3', 0.10000000000000001, '43', 49354, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (117, '75', '82', '43', 881089, 13792, '1', 0.29999999999999999, '45', 91853, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (82, '22', '97', '63', 868424, 51577, '3', 0.29999999999999999, '72', 55234, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (92, '34', '82', '32', 396067, 45943, '1', 0.29999999999999999, '87', 6817, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (88, '42', '81', '10', 108000, 81000, '3', 0.20000000000000001, '24', 19000, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (96, '8', '94', '18', 973330, 28007, '3', 0.10000000000000001, '20', 84464, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (103, '4', '97', '68', 579956, 8541, '1', 0.20000000000000001, '16', 32038, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (115, '25', '96', '48', 704939, 74994, '2', 0.10000000000000001, '42', 11782, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (106, '79', '98', '74', 501778, 47044, '1', 0.10000000000000001, '10', 68453, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (108, '78', '90', '85', 642064, 98217, '1', 0.29999999999999999, '15', 88977, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (97, '40', '88', '20', 889878, 27577, '3', 0.20000000000000001, '62', 73162, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (78, '30', '99', '23', 185053, 48830, '3', 0.10000000000000001, '59', 32246, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (116, '47', '89', '50', 239941, 82312, '2', 0.10000000000000001, '44', 22564, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (75, '42', '91', '21', 59000, 5754, '2', 0.29999999999999999, '28', 40000, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (118, '16', '92', '50', 70172, 69516, '2', 0.20000000000000001, '21', 53216, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (119, '79', '83', '47', 244024, 51813, '2', 0.10000000000000001, '88', 10081, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (71, '14', '87', '38', 366686, 86950, '2', 0.29999999999999999, '45', 35848, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (77, '31', '95', '41', 218839, 95073, '1', 0.10000000000000001, '43', 29414, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (93, '28', '85', '19', 582288, 46026, '3', 0.10000000000000001, '47', 45777, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (94, '97', '32', '35', 915573, 1293, '2', 0.10000000000000001, '58', 86988, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (114, '45', '99', '71', 422907, 78351, '3', 0.20000000000000001, '11', 87000, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (122, '23', '29', '81', 122441, 42683, '1', 0.10000000000000001, '34', 8776, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (104, '53', '92', '76', 220000, 600000, '2', 0.29999999999999999, '39', 43000, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (128, '37', '0', '10', 23545, 53346, '3', 0.20000000000000001, '12', 8409, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (131, '50', '95', '84', 193664, 75954, '1', 0.10000000000000001, '16', 2259, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (72, '59', '94', '32', 514000, 13000, '1', 0.20000000000000001, '21', 882000, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (67, '47', '98', '59', 697432, 22363, '1', 0.20000000000000001, '40', 49324, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (121, '46', '82', '1', 977000, 69000, '3', 0.10000000000000001, '6', 13000, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (73, '34', '91', '15', 995000, 99000, '3', 0.20000000000000001, '2', 22000, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (81, '43', '83', '48', 860000, 35000, '3', 0.20000000000000001, '27', 51000, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (101, '59', '82', '30', 273000, 62000, '3', 0.10000000000000001, '31', 93000, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (70, '52', '89', '12', 740000, 72000, '1', 0.29999999999999999, '11', 23000, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (110, '45', '81', '73', 390000, 28000, '3', 0.10000000000000001, '5', 10000, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (134, '47', '98', '65', 95519, 99884, '1', 0.20000000000000001, '34', 46018, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (135, '70', '57', '54', 165367, 18238, '3', 0.20000000000000001, '46', 17721, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (137, '50', '17', '37', 569396, 1594, '2', 0.20000000000000001, '17', 40831, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (138, '22', '97', '35', 336953, 16784, '2', 0.20000000000000001, '30', 16250, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (140, '65', '64', '3', 369502, 95579, '1', 0.10000000000000001, '76', 56114, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (147, '66', '98', '44', 877882, 13528, '1', 0.29999999999999999, '40', 55079, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (151, '29', '88', '24', 705261, 4122, '1', 0.29999999999999999, '78', 56715, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (155, '96', '41', '34', 327793, 28584, '3', 0.20000000000000001, '31', 46506, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (156, '83', '22', '23', 512175, 46762, '3', 0.20000000000000001, '10', 19441, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (157, '10', '93', '57', 368165, 52486, '2', 0.10000000000000001, '6', 47154, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (159, '2', '16', '79', 431531, 41688, '3', 0.29999999999999999, '20', 42686, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (161, '26', '62', '31', 155194, 51148, '1', 0.20000000000000001, '26', 88637, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (162, '52', '24', '58', 399333, 35017, '3', 0.20000000000000001, '30', 84296, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (165, '10', '60', '69', 49345, 50670, '3', 0.29999999999999999, '6', 79526, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (169, '6', '98', '40', 853780, 91090, '3', 0.29999999999999999, '27', 47706, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (170, '47', '93', '90', 164728, 20250, '3', 0.29999999999999999, '12', 708, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (171, '41', '91', '60', 300492, 47685, '3', 0.20000000000000001, '11', 23990, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (172, '4', '37', '78', 528588, 62414, '3', 0.29999999999999999, '58', 69704, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (173, '46', '67', '37', 105631, 8981, '3', 0.10000000000000001, '11', 89590, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (174, '26', '92', '68', 756732, 469, '3', 0.20000000000000001, '67', 85917, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (177, '90', '70', '21', 591433, 54754, '1', 0.20000000000000001, '23', 56592, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (178, '3', '67', '61', 775321, 31565, '1', 0.29999999999999999, '32', 86069, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (180, '72', '21', '8', 600287, 99819, '3', 0.29999999999999999, '6', 88585, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (183, '49', '84', '68', 296210, 7810, '1', 0.20000000000000001, '32', 51325, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (184, '32', '61', '55', 413476, 51038, '1', 0.20000000000000001, '52', 10189, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (186, '46', '43', '36', 379223, 32804, '2', 0.20000000000000001, '9', 16527, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (189, '95', '21', '38', 302287, 27907, '3', 0.10000000000000001, '57', 9845, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (190, '67', '1', '30', 340906, 93747, '3', 0.10000000000000001, '3', 8435, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (193, '27', '91', '65', 949442, 84300, '1', 0.10000000000000001, '66', 61279, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (195, '59', '50', '66', 511058, 98130, '2', 0.20000000000000001, '39', 88360, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (196, '28', '27', '46', 971575, 68771, '1', 0.10000000000000001, '0', 63021, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (197, '52', '53', '63', 167670, 60837, '2', 0.20000000000000001, '81', 49573, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (154, '45', '50', '97', 901841, 77634, '1', 0.20000000000000001, '10', 72590, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (148, '50', '90', '73', 617300, 21852, '1', 0.10000000000000001, '8', 85260, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (198, '46', '67', '51', 817197, 56519, '2', 0.20000000000000001, '74', 69888, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (142, '81', '95', '75', 242692, 99893, '1', 0.20000000000000001, '28', 47735, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (143, '58', '65', '49', 403964, 88586, '3', 0.29999999999999999, '22', 19344, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (160, '56', '69', '95', 268059, 5400, '1', 0.10000000000000001, '34', 39023, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (163, '71', '5', '1', 250752, 77166, '3', 0.10000000000000001, '27', 21887, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (145, '41', '88', '19', 608301, 49453, '3', 0.10000000000000001, '56', 30153, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (166, '71', '16', '73', 958457, 20024, '2', 0.20000000000000001, '17', 56776, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (168, '20', '89', '90', 250542, 97952, '3', 0.29999999999999999, '27', 66572, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (133, '33', '91', '12', 84758, 22682, '2', 0.20000000000000001, '15', 54903, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (139, '56', '29', '56', 611333, 8275, '3', 0.20000000000000001, '24', 14193, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (141, '12', '81', '56', 284987, 53034, '3', 0.29999999999999999, '32', 89303, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (136, '65', '16', '80', 775318, 64354, '2', 0.29999999999999999, '21', 3585, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (158, '61', '43', '14', 915749, 70151, '3', 0.20000000000000001, '24', 4436, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (164, '75', '88', '12', 686335, 19767, '3', 0.10000000000000001, '25', 50591, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (153, '45', '74', '9', 935953, 85699, '1', 0.20000000000000001, '16', 45530, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (146, '41', '52', '29', 662495, 41115, '2', 0.20000000000000001, '44', 10178, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (167, '42', '36', '53', 647473, 47441, '3', 0.10000000000000001, '26', 63119, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (188, '40', '8', '59', 825138, 90845, '3', 0.10000000000000001, '38', 82989, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (192, '28', '83', '3', 994000, 19000, '3', 0.20000000000000001, '37', 76000, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (13, '42', '65', '21', 879396, 86362, '3', 0.20000000000000001, '34', 31698, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (23, '57', '87', '12', 32122, 26290, '3', 0.29999999999999999, '4', 37510, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (31, '51', '72', '32', 971809, 14029, '1', 0.20000000000000001, '9', 56809, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (47, '58', '45', '77', 796239, 26786, '3', 0.20000000000000001, '38', 47140, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (68, '54', '81', '56', 286768, 1148, '2', 0.29999999999999999, '25', 18001, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (76, '51', '19', '51', 551061, 97628, '1', 0.29999999999999999, '6', 11220, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (80, '47', '83', '30', 507133, 72125, '2', 0.20000000000000001, '12', 89452, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (83, '43', '84', '68', 22893, 54111, '3', 0.20000000000000001, '10', 44068, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (109, '46', '77', '10', 35729, 62430, '3', 0.29999999999999999, '96', 89655, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (27, '52', '90', '64', 621648, 2381, '3', 0.10000000000000001, '52', 73831, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (28, '52', '90', '57', 670019, 351, '2', 0.20000000000000001, '37', 31256, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (29, '52', '93', '14', 579276, 90650, '3', 0.29999999999999999, '57', 76255, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (87, '94', '93', '54', 167751, 77552, '1', 0.10000000000000001, '6', 68246, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (120, '20', '87', '22', 547690, 34707, '2', 0.10000000000000001, '24', 41121, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (149, '80', '98', '78', 983445, 1126, '2', 0.29999999999999999, '24', 44630, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (150, '27', '95', '52', 88080, 20238, '3', 0.29999999999999999, '77', 18935, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (152, '58', '87', '12', 798141, 7734, '3', 0.10000000000000001, '22', 43110, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (84, '24', '98', '2', 928176, 30141, '3', 0.10000000000000001, '56', 39649, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (85, '10', '83', '77', 754247, 24281, '2', 0.20000000000000001, '42', 30920, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (176, '73', '8', '66', 280930, 95121, '2', 0.10000000000000001, '22', 53369, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (179, '62', '48', '44', 447813, 50101, '2', 0.20000000000000001, '40', 54966, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (181, '24', '47', '11', 751932, 58667, '3', 0.29999999999999999, '22', 38579, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (182, '66', '34', '45', 339486, 9539, '2', 0.10000000000000001, '33', 7923, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (185, '8', '17', '67', 607288, 23147, '1', 0.20000000000000001, '12', 91891, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (187, '10', '76', '39', 105594, 5488, '2', 0.20000000000000001, '22', 18200, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (7, '51', '16', '52', 893800, 5432, '3', 0.20000000000000001, '18', 78525, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (10, '56', '71', '21', 431572, 22530, '2', 0.10000000000000001, '12', 60186, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (55, '60', '85', '72', 754952, 72378, '2', 0.10000000000000001, '22', 92658, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (123, '54', '57', '37', 187730, 82604, '3', 0.29999999999999999, '14', 40250, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (124, '52', '26', '20', 936514, 66250, '2', 0.10000000000000001, '12', 41389, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (144, '55', '39', '17', 364101, 69836, '3', 0.29999999999999999, '33', 31440, '0', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (57, '29', '50', '9', 514352, 66755, '2', 0.10000000000000001, '21', 26953, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (58, '75', '6', '3', 104214, 51849, '3', 0.10000000000000001, '20', 8856, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (59, '50', '81', '61', 119914, 62860, '1', 0.29999999999999999, '11', 47502, '0', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (39, '76', '95', '11', 786495, 32160, '1', 0.20000000000000001, '1', 80686, '1', '2023-09-08 20:15:34', '2023-09-08 20:15:34');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (194, '41', '79', '45', 141864, 91307, '3', 0.10000000000000001, '15', 36896, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (175, '45', '77', '26', 948218, 26946, '2', 0.29999999999999999, '24', 18538, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (191, '40', '77', '60', 86968, 28161, '2', 0.29999999999999999, '36', 58557, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');
INSERT INTO public.transactions (id, merchant_id, outlet_id, staff_id, pay_amount, change_amount, payment_type, tax, customer_id, total_amount, payment_status, created_at, updated_at) VALUES (112, '48', '90', '79', 590000, 16662, '3', 0.29999999999999999, '33', 17000, '1', '2023-09-08 20:20:24', '2023-09-08 20:20:24');


--
-- TOC entry 2214 (class 0 OID 0)
-- Dependencies: 189
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transactions_id_seq', 198, true);


--
-- TOC entry 2061 (class 2606 OID 16782)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 2051 (class 2606 OID 16738)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 2055 (class 2606 OID 16758)
-- Name: merchants merchants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchants
    ADD CONSTRAINT merchants_pkey PRIMARY KEY (id);


--
-- TOC entry 2049 (class 2606 OID 16409)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2057 (class 2606 OID 16766)
-- Name: outlets outlets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.outlets
    ADD CONSTRAINT outlets_pkey PRIMARY KEY (id);


--
-- TOC entry 2059 (class 2606 OID 16774)
-- Name: staffs staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (id);


--
-- TOC entry 2053 (class 2606 OID 16750)
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


-- Completed on 2023-09-09 11:09:11

--
-- PostgreSQL database dump complete
--

