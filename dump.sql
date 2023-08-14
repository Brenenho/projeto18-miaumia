--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.8 (Ubuntu 14.8-0ubuntu0.22.04.1)

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
-- Name: cats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cats (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    descricao text NOT NULL,
    image character varying(256) NOT NULL,
    isdisponivel boolean DEFAULT true NOT NULL,
    tutorid integer NOT NULL
);


--
-- Name: cats_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cats_id_seq OWNED BY public.cats.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    fullname character varying(256) NOT NULL,
    cpf character varying(11) NOT NULL,
    telefone character varying(11) NOT NULL,
    email character varying(256) NOT NULL,
    password character varying(256) NOT NULL
);


--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.photos (
    id integer NOT NULL,
    catid integer NOT NULL,
    url character varying(256) NOT NULL
);


--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    userid integer NOT NULL,
    token character varying(256) NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: cats id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cats ALTER COLUMN id SET DEFAULT nextval('public.cats_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Data for Name: cats; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cats VALUES (9, 'brenen', 'gato foda35 PRA CARALHO KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', true, 34);
INSERT INTO public.cats VALUES (11, 'dsga', 'dgsagfdsa', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8sG67BAMQ7YG3rfIjLZTbpxvVvzugo2S5g8GmFtHE&s', true, 34);
INSERT INTO public.cats VALUES (10, 'bvdb', 'sdagdsgas', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8sG67BAMQ7YG3rfIjLZTbpxvVvzugo2S5g8GmFtHE&s', true, 34);
INSERT INTO public.cats VALUES (6, 'brenen', 'gato foda6', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', true, 34);
INSERT INTO public.cats VALUES (3, 'brenen', 'gato foda3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', true, 34);
INSERT INTO public.cats VALUES (4, 'brenen', 'gato foda4', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', false, 34);
INSERT INTO public.cats VALUES (1, 'brenen', 'gato foda', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScrERArFoOQKFh6x9Kl8yj6KUR2LZBHBzV8C5_65ZA&s', true, 34);
INSERT INTO public.cats VALUES (5, 'brenen', 'gato foda5', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', true, 34);
INSERT INTO public.cats VALUES (7, 'brenen', 'gato foda7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', true, 34);
INSERT INTO public.cats VALUES (2, 'brenen', 'gato foda2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', true, 34);
INSERT INTO public.cats VALUES (12, 'benre', 'rebwfnds', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHO6S7MXkKc5AgO7s2gQRcgEPQclHuqA-uuaQxlQcM&s', true, 44);
INSERT INTO public.cats VALUES (13, 'hjfgdhfdg', 'hgfdhgfd', 'https://img.freepik.com/premium-vector/cat-logo_647943-184.jpg?w=2000', true, 44);
INSERT INTO public.cats VALUES (8, 'brenen', 'gato foda5 PRA CARALHO KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoNHyh02MVygS68_12X7oUka5HPQ_Vxu6v9A1rKHKn3Q&s', true, 34);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.customers VALUES (34, 'Brenen', '12311231231', '21985441412', 'brenohenryck@gmail.com', '$2b$10$cTaLeS1DJpjSH.iURKQ8texAP5tAQxg6NinDsRvua.muA6qxIwNaS');
INSERT INTO public.customers VALUES (37, 'Brenen', '12311231233', '21985441413', 'brenohenryck1@gmail.com', '$2b$10$aVPS1S/2CeS5mtqGDydOducgRyeVeBlao89q6LxAz0RG3FzUmrhaO');
INSERT INTO public.customers VALUES (42, 'brene', '19798278774', '21985441415', 'breno7@gmail.com', '$2b$10$bIghcP5pb0y5ph9u0ArmmO.EYT63Yv7LHA6k5xGHOEfp5gVZ/aF5i');
INSERT INTO public.customers VALUES (44, 'Breno', '19798278777', '21985441419', 'breno2@gmail.com', '$2b$10$nvX7chJ3c19A3sNlKCHeVOTNYCI4sTqwBoDzF15.DwnJc12P6KyAi');


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (1, 34, '6ef31360-3576-43d6-951f-6993a1af4875');
INSERT INTO public.sessions VALUES (2, 34, 'e0fa82ac-6213-469c-b9b3-38b8b218a6a3');
INSERT INTO public.sessions VALUES (3, 34, 'f25afced-00c4-4abf-9ea3-f4428bb62922');
INSERT INTO public.sessions VALUES (4, 34, '9781dcaa-b86a-4390-9d29-eff405ebf7d4');
INSERT INTO public.sessions VALUES (5, 34, 'f7cec2df-533a-4f6d-8f45-4c3aa1447c8f');
INSERT INTO public.sessions VALUES (6, 34, '3b9afab7-9e0c-493b-9758-c0e962d0f2af');
INSERT INTO public.sessions VALUES (7, 34, '1bc80e17-aa7a-4d89-ba7a-15493ac9acae');
INSERT INTO public.sessions VALUES (8, 34, '38f703d4-fd40-4f51-986f-93b8843891a6');
INSERT INTO public.sessions VALUES (9, 34, '154bb7ff-9f95-4d28-9257-b63f7900b344');
INSERT INTO public.sessions VALUES (10, 34, 'f5c675e0-6e01-441e-a558-6af99613aeff');
INSERT INTO public.sessions VALUES (11, 34, '25f76b00-d819-47bb-ae5e-cc52618d6e48');
INSERT INTO public.sessions VALUES (12, 34, '0aaf874e-99bb-4cba-9340-590145a6794a');
INSERT INTO public.sessions VALUES (13, 34, 'e329fa08-1985-4320-bc36-6cbe963f292c');
INSERT INTO public.sessions VALUES (14, 34, '68d00d74-98b7-414d-bf6f-1469b0806584');
INSERT INTO public.sessions VALUES (15, 34, 'f9e6856e-fd33-4149-a26f-cbdd2ce480d7');
INSERT INTO public.sessions VALUES (16, 34, '39553112-b10c-483e-8e7f-a00212341fe5');
INSERT INTO public.sessions VALUES (17, 44, 'a02b4f6f-d3ce-4402-824c-ce6cefd92304');


--
-- Name: cats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cats_id_seq', 13, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.customers_id_seq', 44, true);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.photos_id_seq', 1, false);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 17, true);


--
-- Name: cats cats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cats
    ADD CONSTRAINT cats_pkey PRIMARY KEY (id);


--
-- Name: customers customers_cpf_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_cpf_key UNIQUE (cpf);


--
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: customers customers_telefone_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_telefone_key UNIQUE (telefone);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: photos photos_url_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_url_key UNIQUE (url);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);


--
-- Name: cats fk_cats; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cats
    ADD CONSTRAINT fk_cats FOREIGN KEY (tutorid) REFERENCES public.customers(id);


--
-- Name: photos fk_photos; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT fk_photos FOREIGN KEY (catid) REFERENCES public.cats(id);


--
-- Name: sessions fk_session; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT fk_session FOREIGN KEY (userid) REFERENCES public.customers(id);


--
-- PostgreSQL database dump complete
--

