--
-- PostgreSQL database dump
--

-- Dumped from database version 8.4.19
-- Dumped by pg_dump version 9.4.3
-- Started on 2015-09-17 09:21:29 VET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 140 (class 1259 OID 214520)
-- Name: favorito; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE favorito (
    id_favorito integer NOT NULL,
    favorito integer NOT NULL,
    usuario integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE favorito OWNER TO postgres;

--
-- TOC entry 141 (class 1259 OID 214524)
-- Name: favorito_id_favorito_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE favorito_id_favorito_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE favorito_id_favorito_seq OWNER TO postgres;

--
-- TOC entry 1876 (class 0 OID 0)
-- Dependencies: 141
-- Name: favorito_id_favorito_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE favorito_id_favorito_seq OWNED BY favorito.id_favorito;


--
-- TOC entry 142 (class 1259 OID 214526)
-- Name: idioma; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE idioma (
    id_idioma integer NOT NULL,
    idioma character varying(50)
);


ALTER TABLE idioma OWNER TO postgres;

--
-- TOC entry 143 (class 1259 OID 214529)
-- Name: idioma_id_idioma_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE idioma_id_idioma_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE idioma_id_idioma_seq OWNER TO postgres;

--
-- TOC entry 1877 (class 0 OID 0)
-- Dependencies: 143
-- Name: idioma_id_idioma_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE idioma_id_idioma_seq OWNED BY idioma.id_idioma;


--
-- TOC entry 144 (class 1259 OID 214531)
-- Name: pais; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pais (
    id_pais integer NOT NULL,
    pais character varying(50)
);


ALTER TABLE pais OWNER TO postgres;

--
-- TOC entry 145 (class 1259 OID 214534)
-- Name: pais_id_pais_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pais_id_pais_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pais_id_pais_seq OWNER TO postgres;

--
-- TOC entry 1878 (class 0 OID 0)
-- Dependencies: 145
-- Name: pais_id_pais_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pais_id_pais_seq OWNED BY pais.id_pais;


--
-- TOC entry 146 (class 1259 OID 214536)
-- Name: pregunta_secreta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pregunta_secreta (
    id_pregunta_secreta integer NOT NULL,
    pregunta_secreta character varying(50)
);


ALTER TABLE pregunta_secreta OWNER TO postgres;

--
-- TOC entry 147 (class 1259 OID 214539)
-- Name: pregunta_secreta_id_pregunta_secreta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pregunta_secreta_id_pregunta_secreta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pregunta_secreta_id_pregunta_secreta_seq OWNER TO postgres;

--
-- TOC entry 1879 (class 0 OID 0)
-- Dependencies: 147
-- Name: pregunta_secreta_id_pregunta_secreta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pregunta_secreta_id_pregunta_secreta_seq OWNED BY pregunta_secreta.id_pregunta_secreta;


--
-- TOC entry 148 (class 1259 OID 214541)
-- Name: retweet; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE retweet (
    id_retweet integer NOT NULL,
    retweet integer NOT NULL,
    usuario integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE retweet OWNER TO postgres;

--
-- TOC entry 149 (class 1259 OID 214545)
-- Name: retweet_id_retweet_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE retweet_id_retweet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE retweet_id_retweet_seq OWNER TO postgres;

--
-- TOC entry 1880 (class 0 OID 0)
-- Dependencies: 149
-- Name: retweet_id_retweet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE retweet_id_retweet_seq OWNED BY retweet.id_retweet;


--
-- TOC entry 150 (class 1259 OID 214547)
-- Name: seguidor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE seguidor (
    id_seguidor integer NOT NULL,
    seguidor integer NOT NULL,
    siguiendo integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE seguidor OWNER TO postgres;

--
-- TOC entry 151 (class 1259 OID 214551)
-- Name: seguidor_id_seguidor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE seguidor_id_seguidor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE seguidor_id_seguidor_seq OWNER TO postgres;

--
-- TOC entry 1881 (class 0 OID 0)
-- Dependencies: 151
-- Name: seguidor_id_seguidor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE seguidor_id_seguidor_seq OWNED BY seguidor.id_seguidor;


--
-- TOC entry 152 (class 1259 OID 214553)
-- Name: tweet; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tweet (
    id_tweet integer NOT NULL,
    tweet character varying(140) NOT NULL,
    foto character varying(50),
    usuario integer NOT NULL,
    fecha_creacion timestamp without time zone DEFAULT now()
);


ALTER TABLE tweet OWNER TO postgres;

--
-- TOC entry 153 (class 1259 OID 214557)
-- Name: tweet_id_tweet_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tweet_id_tweet_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tweet_id_tweet_seq OWNER TO postgres;

--
-- TOC entry 1882 (class 0 OID 0)
-- Dependencies: 153
-- Name: tweet_id_tweet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tweet_id_tweet_seq OWNED BY tweet.id_tweet;


--
-- TOC entry 154 (class 1259 OID 214559)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    usuario character varying(30) NOT NULL,
    correo character varying(80) NOT NULL,
    nombre_completo character varying(100) NOT NULL,
    password character varying(256) NOT NULL,
    fk_idioma integer,
    fk_pais integer,
    fk_pregunta_secreta integer,
    respuesta_secreta character varying(256),
    telefono character varying(15),
    foto_perfil character varying(100),
    imagen_fondo character varying(100),
    activo boolean,
    fecha_creacion timestamp without time zone DEFAULT now(),
    sitioweb character varying(60),
    biografia character varying(200)
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 155 (class 1259 OID 214566)
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 1883 (class 0 OID 0)
-- Dependencies: 155
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- TOC entry 1729 (class 2604 OID 214568)
-- Name: id_favorito; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorito ALTER COLUMN id_favorito SET DEFAULT nextval('favorito_id_favorito_seq'::regclass);


--
-- TOC entry 1730 (class 2604 OID 214569)
-- Name: id_idioma; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY idioma ALTER COLUMN id_idioma SET DEFAULT nextval('idioma_id_idioma_seq'::regclass);


--
-- TOC entry 1731 (class 2604 OID 214570)
-- Name: id_pais; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pais ALTER COLUMN id_pais SET DEFAULT nextval('pais_id_pais_seq'::regclass);


--
-- TOC entry 1732 (class 2604 OID 214571)
-- Name: id_pregunta_secreta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pregunta_secreta ALTER COLUMN id_pregunta_secreta SET DEFAULT nextval('pregunta_secreta_id_pregunta_secreta_seq'::regclass);


--
-- TOC entry 1734 (class 2604 OID 214572)
-- Name: id_retweet; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retweet ALTER COLUMN id_retweet SET DEFAULT nextval('retweet_id_retweet_seq'::regclass);


--
-- TOC entry 1736 (class 2604 OID 214573)
-- Name: id_seguidor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguidor ALTER COLUMN id_seguidor SET DEFAULT nextval('seguidor_id_seguidor_seq'::regclass);


--
-- TOC entry 1738 (class 2604 OID 214574)
-- Name: id_tweet; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tweet ALTER COLUMN id_tweet SET DEFAULT nextval('tweet_id_tweet_seq'::regclass);


--
-- TOC entry 1740 (class 2604 OID 214575)
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- TOC entry 1853 (class 0 OID 214520)
-- Dependencies: 140
-- Data for Name: favorito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY favorito (id_favorito, favorito, usuario, fecha_creacion) FROM stdin;
\.


--
-- TOC entry 1884 (class 0 OID 0)
-- Dependencies: 141
-- Name: favorito_id_favorito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('favorito_id_favorito_seq', 1, false);


--
-- TOC entry 1855 (class 0 OID 214526)
-- Dependencies: 142
-- Data for Name: idioma; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY idioma (id_idioma, idioma) FROM stdin;
1	Español
2	Ingles
3	Portugués
4	Francés
\.


--
-- TOC entry 1885 (class 0 OID 0)
-- Dependencies: 143
-- Name: idioma_id_idioma_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('idioma_id_idioma_seq', 4, true);


--
-- TOC entry 1857 (class 0 OID 214531)
-- Dependencies: 144
-- Data for Name: pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pais (id_pais, pais) FROM stdin;
1	Venezuela
2	Ecuador
3	Cuba
\.


--
-- TOC entry 1886 (class 0 OID 0)
-- Dependencies: 145
-- Name: pais_id_pais_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pais_id_pais_seq', 3, true);


--
-- TOC entry 1859 (class 0 OID 214536)
-- Dependencies: 146
-- Data for Name: pregunta_secreta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pregunta_secreta (id_pregunta_secreta, pregunta_secreta) FROM stdin;
1	¿Nombre de su primera mascota?
2	¿Automovil preferido?
3	¿Nombre de su equipo preferido?
4	¿Comida preferida?
\.


--
-- TOC entry 1887 (class 0 OID 0)
-- Dependencies: 147
-- Name: pregunta_secreta_id_pregunta_secreta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pregunta_secreta_id_pregunta_secreta_seq', 1, false);


--
-- TOC entry 1861 (class 0 OID 214541)
-- Dependencies: 148
-- Data for Name: retweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY retweet (id_retweet, retweet, usuario, fecha_creacion) FROM stdin;
\.


--
-- TOC entry 1888 (class 0 OID 0)
-- Dependencies: 149
-- Name: retweet_id_retweet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('retweet_id_retweet_seq', 1, false);


--
-- TOC entry 1863 (class 0 OID 214547)
-- Dependencies: 150
-- Data for Name: seguidor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY seguidor (id_seguidor, seguidor, siguiendo, fecha_creacion) FROM stdin;
1	1	7	2015-09-17 11:00:58.358932
2	1	24	2015-09-17 11:01:42.56249
3	7	24	2015-09-17 11:01:50.522609
4	24	1	2015-09-17 11:02:06.242031
7	2	18	2015-09-17 11:16:03.025532
11	7	21	2015-09-17 11:17:27.265825
12	2	2	2015-09-17 11:17:34.908947
17	27	18	2015-09-17 11:25:15.313488
24	2	21	2015-09-17 11:33:18.8229
25	2	14	2015-09-17 11:33:28.320863
26	27	23	2015-09-17 11:33:57.243268
27	24	16	2015-09-17 11:34:13.564906
28	2	15	2015-09-17 11:34:49.643668
30	7	15	2015-09-17 11:37:14.598498
31	7	16	2015-09-17 11:37:47.584081
32	27	2	2015-09-17 11:38:32.804865
33	27	15	2015-09-17 11:38:46.23827
37	7	22	2015-09-17 11:45:54.1134
38	24	15	2015-09-17 11:46:18.203484
40	21	14	2015-09-17 11:47:19.3893
41	21	22	2015-09-17 11:47:22.102859
43	24	24	2015-09-17 12:00:23.994335
44	24	14	2015-09-17 12:00:28.077289
45	24	23	2015-09-17 12:00:29.62224
46	24	34	2015-09-17 12:00:31.038295
47	24	20	2015-09-17 12:00:32.819572
48	24	22	2015-09-17 12:00:35.218683
49	21	34	2015-09-17 12:00:43.579433
50	24	21	2015-09-17 12:03:23.934163
51	21	21	2015-09-17 12:04:35.088804
52	21	23	2015-09-17 12:04:43.124363
53	21	20	2015-09-17 12:04:47.906491
54	21	17	2015-09-17 12:04:54.32873
55	21	24	2015-09-17 12:04:55.132448
56	21	16	2015-09-17 12:04:55.977581
57	21	15	2015-09-17 12:04:57.162453
\.


--
-- TOC entry 1889 (class 0 OID 0)
-- Dependencies: 151
-- Name: seguidor_id_seguidor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('seguidor_id_seguidor_seq', 57, true);


--
-- TOC entry 1865 (class 0 OID 214553)
-- Dependencies: 152
-- Data for Name: tweet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tweet (id_tweet, tweet, foto, usuario, fecha_creacion) FROM stdin;
1	Viva Venezuela		30	2015-09-15 11:56:27.369379
2	mi primer tweet todo fino!!		2	2015-09-17 10:51:42.712465
3	Mi primer Twitt		7	2015-09-17 10:51:49.858254
4	prueba dg		24	2015-09-17 10:52:25.547237
5	pruebbba 2 dg		24	2015-09-17 10:52:41.331744
6	Vamos a twitear		7	2015-09-17 10:52:51.658181
7	Otro mas		7	2015-09-17 10:53:01.855049
8	Los Heroes de Mexico!!!		9	2015-09-17 10:53:05.234933
9	holaa		27	2015-09-17 10:53:16.643755
10	Hola mundo		7	2015-09-17 10:53:26.442047
11	Iniciando Yii		24	2015-09-17 10:53:34.375927
12	feliz dia		27	2015-09-17 10:53:36.424711
13	Hoy es Jueves		7	2015-09-17 10:53:40.593453
14	Bienvenidos al Nuevo Twitter FALTA el LOGO		9	2015-09-17 10:53:46.865165
15	Ya		7	2015-09-17 10:53:47.917673
16	Saliendo pa' Guarenas!!!!		9	2015-09-17 10:54:08.231659
17	Brunex shhhh		27	2015-09-17 10:54:19.687383
18	aa		21	2015-09-17 11:00:23.505563
19	2do twet		21	2015-09-17 12:02:48.290845
20	3er tweet		21	2015-09-17 12:03:10.717148
\.


--
-- TOC entry 1890 (class 0 OID 0)
-- Dependencies: 153
-- Name: tweet_id_tweet_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tweet_id_tweet_seq', 20, true);


--
-- TOC entry 1867 (class 0 OID 214559)
-- Dependencies: 154
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (id_usuario, usuario, correo, nombre_completo, password, fk_idioma, fk_pais, fk_pregunta_secreta, respuesta_secreta, telefono, foto_perfil, imagen_fondo, activo, fecha_creacion, sitioweb, biografia) FROM stdin;
15	user	correo@correo.com	usuario	123456	2	3	2	mustang	3242545	openlogo-50.png		t	2015-09-15 10:59:16.355169	sadsad	dfdsfds
16	qqq	e	e	e	1	2	3			Captura de pantalla de 2015-09-14 06:43:25.png		f	2015-09-15 11:01:34.947673	e	e
24	dg	dg@prueba.com	Desiree Gomes	e10adc3949ba59abbe56e057f20f883e	1	3	1					f	2015-09-15 11:45:40.789988	HTTP://WWW.GGOGLE.COM	
17	xxxx	xxxx	xxxxxx	123456	1	1	\N			índice.jpeg		f	2015-09-15 11:05:48.126191		
21	esmir	esmircm@gmail.com	Esmir	128ad18641754367169d082a12d61ca8	3	2	2	qqqq	12	Captura de pantalla de 2015-09-09 06:56:37.png		\N	2015-09-15 11:44:05.219199		
22	usu	usu@usu.usu	usu	cc25dddbb8e44fbd804322fd50d2620f	4	3	2	camaro	423432	\N		t	2015-09-15 11:44:29.078026		
14	lenin2	lenin qweqweqweq	lenin hernandez	1	1	1	4			\N		f	2015-09-15 10:58:49.166795	11111	
20	jula111	jula@jula.com	qewqeqwewq	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			\N	\N	f	2015-09-15 11:26:48.181433		
23	ppalacios3	ppalacios3@banavih.gob.ve	ppppp	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			\N		f	2015-09-15 11:45:29.638632		
34	Bruno	anbrufla@gmaiil.com.ve	Bruno Aguirre	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			peluche.jpeg	Captura de pantalla de 2015-09-17 05:22:24.png	f	2015-09-17 10:45:31.12336		
2	usuariox	usuarioxcorreo@gmail.com	El Usuario  X	e10adc3949ba59abbe56e057f20f883e	1	\N	\N			PostgreSQL-leninmhs.svg		f	2015-09-14 01:50:36.382064	\N	\N
18	jula1	jula@hot.com	qewqeqwewq	e10adc3949ba59abbe56e057f20f883e	1	1	\N			\N		f	2015-09-15 11:12:04.731223		
3	usuarioy	usuarioycorreo@gmail.com	Usuario Y	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			yii booster boostrap yii.png		f	2015-09-14 02:06:43.060158	\N	\N
4	usuarioxy	usuarioxycorreo@gmail.com	El Usuario  XY	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			PostgreSQL_logo.3colors.svg		f	2015-09-14 02:08:55.053386	\N	\N
9	brunex	anbrufla@gmaiil.com	Bruno Anthony Aguirre Lara CHAVEZ	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N					f	2015-09-14 12:07:12.507185		
5	lenin	correo	lenin	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N					f	2015-09-14 12:00:36.944143		
6	yessica	yessichernandez	Yessica Hernandez	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N					f	2015-09-14 12:03:58.433059		
7	ppalacios	ppalacios@banavih.gob.ve	Paolina Palacios	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N					f	2015-09-14 12:04:29.154701		
11	vvv	vvv	vv	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N					f	2015-09-15 09:39:08.982384		
12	das	das	das	e10adc3949ba59abbe56e057f20f883e	3	2	2	das	111	Captura de pantalla de 2015-09-09 06:55:35.png		\N	2015-09-15 10:57:09.570129		
19	ppalacios2	ppalacios2@banavih.gob.ve	Paolina Palacios	e10adc3949ba59abbe56e057f20f883e	1	1	\N			\N		f	2015-09-15 11:13:44.687025		
27	admin	admin@admin.com	admin	21232f297a57a5a743894a0e4a801fc3	\N	\N	\N					t	2015-09-15 11:48:29.801916		
13	jula	jula@jula.jula	jula	e10adc3949ba59abbe56e057f20f883e	1	1	1	jula		Captura de pantalla de 2015-09-15 06:28:08.png		f	2015-09-15 10:58:29.236335		
30	chavez	chavez@candanga.com	Chavez	e10adc3949ba59abbe56e057f20f883e	1	\N	\N			\N	\N	f	2015-09-15 11:53:06.011721		
31	prueba	bruno@hotmail.com	Bruno	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			\N	Captura de pantalla de 2015-09-17 05:22:24.png	f	2015-09-17 09:51:20.541017		
32	prueba345	bruno@hotmail.com.ve	Bruno	c56d0e9a7ccec67b4ea131655038d604	\N	\N	\N			Captura de pantalla de 2015-09-17 05:22:24.png	\N	f	2015-09-17 09:53:25.488795		
33	prueba1231231	holaaaaaa@hot.com	bruno10	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			\N	Captura de pantalla de 2015-09-17 05:22:24.png	f	2015-09-17 10:00:11.636963		
1	leninmhs	leninmhs@gmail.com	Lenin Hernandez	14e1b600b1fd579f47433b88e8d85291	\N	\N	\N					f	2015-09-14 00:33:08.183621		
35	Peluche	peluche@peluche.com	Pelucheneitor	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			peluche.jpeg	\N	f	2015-09-17 11:00:46.681917		
36	peluche1	bruno@hotmail.com1	Brunillo1	e10adc3949ba59abbe56e057f20f883e	\N	\N	\N			peluche.jpeg	\N	f	2015-09-17 11:03:22.440713		
\.


--
-- TOC entry 1891 (class 0 OID 0)
-- Dependencies: 155
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 36, true);


--
-- TOC entry 1742 (class 2606 OID 214577)
-- Name: pk_favorito; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY favorito
    ADD CONSTRAINT pk_favorito PRIMARY KEY (id_favorito);


--
-- TOC entry 1744 (class 2606 OID 214579)
-- Name: pk_idioma; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY idioma
    ADD CONSTRAINT pk_idioma PRIMARY KEY (id_idioma);


--
-- TOC entry 1746 (class 2606 OID 214581)
-- Name: pk_pais; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pais
    ADD CONSTRAINT pk_pais PRIMARY KEY (id_pais);


--
-- TOC entry 1748 (class 2606 OID 214583)
-- Name: pk_pregunta_secreta; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pregunta_secreta
    ADD CONSTRAINT pk_pregunta_secreta PRIMARY KEY (id_pregunta_secreta);


--
-- TOC entry 1750 (class 2606 OID 214585)
-- Name: pk_retweet; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY retweet
    ADD CONSTRAINT pk_retweet PRIMARY KEY (id_retweet);


--
-- TOC entry 1752 (class 2606 OID 214587)
-- Name: pk_seguidor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY seguidor
    ADD CONSTRAINT pk_seguidor PRIMARY KEY (id_seguidor);


--
-- TOC entry 1754 (class 2606 OID 214589)
-- Name: pk_tweet; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tweet
    ADD CONSTRAINT pk_tweet PRIMARY KEY (id_tweet);


--
-- TOC entry 1756 (class 2606 OID 214591)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (id_usuario);


--
-- TOC entry 1757 (class 2606 OID 214592)
-- Name: fk_favorito; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorito
    ADD CONSTRAINT fk_favorito FOREIGN KEY (favorito) REFERENCES tweet(id_tweet);


--
-- TOC entry 1764 (class 2606 OID 214597)
-- Name: fk_idioma; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_idioma FOREIGN KEY (fk_idioma) REFERENCES idioma(id_idioma);


--
-- TOC entry 1765 (class 2606 OID 214602)
-- Name: fk_pais; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_pais FOREIGN KEY (fk_pais) REFERENCES pais(id_pais);


--
-- TOC entry 1766 (class 2606 OID 214607)
-- Name: fk_pregunta_secreta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT fk_pregunta_secreta FOREIGN KEY (fk_pregunta_secreta) REFERENCES pregunta_secreta(id_pregunta_secreta);


--
-- TOC entry 1759 (class 2606 OID 214612)
-- Name: fk_retweet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retweet
    ADD CONSTRAINT fk_retweet FOREIGN KEY (retweet) REFERENCES tweet(id_tweet);


--
-- TOC entry 1761 (class 2606 OID 214617)
-- Name: fk_seguidor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguidor
    ADD CONSTRAINT fk_seguidor FOREIGN KEY (seguidor) REFERENCES usuario(id_usuario);


--
-- TOC entry 1762 (class 2606 OID 214622)
-- Name: fk_siguiendo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY seguidor
    ADD CONSTRAINT fk_siguiendo FOREIGN KEY (siguiendo) REFERENCES usuario(id_usuario);


--
-- TOC entry 1763 (class 2606 OID 214627)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tweet
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario(id_usuario);


--
-- TOC entry 1760 (class 2606 OID 214632)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY retweet
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario(id_usuario);


--
-- TOC entry 1758 (class 2606 OID 214637)
-- Name: fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY favorito
    ADD CONSTRAINT fk_usuario FOREIGN KEY (usuario) REFERENCES usuario(id_usuario);


--
-- TOC entry 1875 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-09-17 09:21:30 VET

--
-- PostgreSQL database dump complete
--

