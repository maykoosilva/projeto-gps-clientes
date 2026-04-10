--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: tb_cidades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_cidades (
    id_cidade integer NOT NULL,
    nome_cidade character varying(100)
);


ALTER TABLE public.tb_cidades OWNER TO postgres;

--
-- Name: tb_clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_clientes (
    id integer NOT NULL,
    razao_social character varying(100),
    nome_fantasia character varying(100),
    endereco character varying(100),
    numero character varying(10),
    cep character varying(10),
    id_cidade integer,
    documento character varying(20),
    status character(1),
    id_vendedor integer
);


ALTER TABLE public.tb_clientes OWNER TO postgres;

--
-- Name: tb_clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_clientes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tb_clientes_id_seq OWNER TO postgres;

--
-- Name: tb_clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_clientes_id_seq OWNED BY public.tb_clientes.id;


--
-- Name: tb_vendedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_vendedores (
    id_vendedor integer NOT NULL,
    nome_vendedor character varying(100)
);


ALTER TABLE public.tb_vendedores OWNER TO postgres;

--
-- Name: tb_clientes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_clientes ALTER COLUMN id SET DEFAULT nextval('public.tb_clientes_id_seq'::regclass);


--
-- Data for Name: tb_cidades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_cidades (id_cidade, nome_cidade) FROM stdin;
1	São Paulo
2	Rio de Janeiro
\.


--
-- Data for Name: tb_clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_clientes (id, razao_social, nome_fantasia, endereco, numero, cep, id_cidade, documento, status, id_vendedor) FROM stdin;
1	Mercado Silva	Silva Market	Rua A	123	12345-000	1	123456780001	A	1
2	Padaria Central	Central Bakery	Rua B	456	23456-000	2	987654320001	I	1
3	Auto Peças Brasil	Auto Parts BR	Rua C	789	34567-000	1	567890120001	A	1
\.


--
-- Data for Name: tb_vendedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_vendedores (id_vendedor, nome_vendedor) FROM stdin;
1	João Silva
\.


--
-- Name: tb_clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_clientes_id_seq', 3, true);


--
-- Name: tb_cidades tb_cidades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_cidades
    ADD CONSTRAINT tb_cidades_pkey PRIMARY KEY (id_cidade);


--
-- Name: tb_clientes tb_clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_clientes
    ADD CONSTRAINT tb_clientes_pkey PRIMARY KEY (id);


--
-- Name: tb_vendedores tb_vendedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_vendedores
    ADD CONSTRAINT tb_vendedores_pkey PRIMARY KEY (id_vendedor);


--
-- PostgreSQL database dump complete
--

