--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: revenuetable; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.revenuetable (
    id integer NOT NULL,
    month text NOT NULL,
    revenue integer NOT NULL
);


--
-- Data for Name: revenuetable; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.revenuetable (id, month, revenue) FROM stdin;
2	February	39050
4	April	40700
6	June	11020
7	July	13000
8	August	28900
9	September	45300
10	October	43115
11	November	34980
12	December	22440
1	January	42000
5	May	56000
3	March	32000
\.


--
-- Name: revenuetable revenuetable_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.revenuetable
    ADD CONSTRAINT revenuetable_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

