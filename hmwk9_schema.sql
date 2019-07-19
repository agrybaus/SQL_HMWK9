--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-07-19 00:31:56 CDT

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
-- TOC entry 8 (class 2615 OID 16572)
-- Name: HMWK9_schema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "HMWK9_schema";


ALTER SCHEMA "HMWK9_schema" OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16545)
-- Name: department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.department (
    dept_no character varying(100),
    dept_name character varying(100)
);


ALTER TABLE public.department OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16548)
-- Name: dept_employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_employee (
    emp_no integer,
    dept_no character varying(50),
    from_date date,
    to_date date
);


ALTER TABLE public.dept_employee OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16551)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying(50),
    emp_no integer,
    from_date date,
    to_date date
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16562)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    emp_no integer,
    birth_date date,
    first_name character varying(100),
    last_name character varying(100),
    gender character varying(10),
    hire_date date
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16560)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_id_seq OWNER TO postgres;

--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 201
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 204 (class 1259 OID 16568)
-- Name: salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary (
    id integer NOT NULL,
    emp_no integer,
    salary integer,
    from_date date,
    to_date date
);


ALTER TABLE public.salary OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16566)
-- Name: salary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salary_id_seq OWNER TO postgres;

--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 203
-- Name: salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salary_id_seq OWNED BY public.salary.id;


--
-- TOC entry 200 (class 1259 OID 16554)
-- Name: title; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.title (
    emp_no integer,
    title character varying(100),
    from_date date,
    to_date date
);


ALTER TABLE public.title OWNER TO postgres;

--
-- TOC entry 3025 (class 2604 OID 16565)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 3026 (class 2604 OID 16571)
-- Name: salary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary ALTER COLUMN id SET DEFAULT nextval('public.salary_id_seq'::regclass);


-- Completed on 2019-07-19 00:31:56 CDT

--
-- PostgreSQL database dump complete
--

