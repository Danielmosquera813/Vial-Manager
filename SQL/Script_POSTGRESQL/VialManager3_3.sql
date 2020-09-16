PGDMP         0                x            VialManager3_2    12.4    12.4 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17573    VialManager3_2    DATABASE     �   CREATE DATABASE "VialManager3_2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
     DROP DATABASE "VialManager3_2";
                postgres    false            �            1259    17574 
   tbl_barrio    TABLE     �   CREATE TABLE public.tbl_barrio (
    bar_id integer NOT NULL,
    bar_descripcion character varying(45) NOT NULL,
    comuna_id integer NOT NULL
);
    DROP TABLE public.tbl_barrio;
       public         heap    postgres    false            �            1259    17577    tbl_barrio_bar_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.tbl_barrio_bar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_barrio_bar_id_seq;
       public          postgres    false    202            �           0    0    tbl_barrio_bar_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_barrio_bar_id_seq OWNED BY public.tbl_barrio.bar_id;
          public          postgres    false    203            �            1259    17579    tbl_bitacora    TABLE     �   CREATE TABLE public.tbl_bitacora (
    bit_id integer NOT NULL,
    bit_usuario character varying(30),
    bit_fecha_modificacion timestamp without time zone,
    bit_tabla character varying(45),
    bit_observacion character varying(100)
);
     DROP TABLE public.tbl_bitacora;
       public         heap    postgres    false            �            1259    17582    tbl_bitacora_bit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_bitacora_bit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_bitacora_bit_id_seq;
       public          postgres    false    204            �           0    0    tbl_bitacora_bit_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_bitacora_bit_id_seq OWNED BY public.tbl_bitacora.bit_id;
          public          postgres    false    205            �            1259    17584    tbl_calzada    TABLE     �   CREATE TABLE public.tbl_calzada (
    cal_id integer NOT NULL,
    cal_calzada integer NOT NULL,
    cal_orientacion_carril character varying(20) NOT NULL,
    tipo_calzada_id integer NOT NULL
);
    DROP TABLE public.tbl_calzada;
       public         heap    postgres    false            �            1259    17587    tbl_calzada_cal_id_seq    SEQUENCE        CREATE SEQUENCE public.tbl_calzada_cal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_calzada_cal_id_seq;
       public          postgres    false    206            �           0    0    tbl_calzada_cal_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_calzada_cal_id_seq OWNED BY public.tbl_calzada.cal_id;
          public          postgres    false    207            �            1259    17589    tbl_caso    TABLE     I  CREATE TABLE public.tbl_caso (
    cas_id integer NOT NULL,
    cas_fecha_creacion date NOT NULL,
    cas_fecha_vencimiento date NOT NULL,
    cas_fotografia_inicio character varying(100) NOT NULL,
    cas_fotografia_fin character varying(100),
    cas_prioridad character varying(10) NOT NULL,
    cas_causa character varying(200) NOT NULL,
    cas_disponibilidad integer NOT NULL,
    tipo_pavimento_id integer NOT NULL,
    entorno_id integer NOT NULL,
    tramo_id integer NOT NULL,
    usuario_id integer NOT NULL,
    estado_id integer NOT NULL,
    orden_id integer NOT NULL
);
    DROP TABLE public.tbl_caso;
       public         heap    postgres    false            �            1259    17592    tbl_caso_cas_id_seq    SEQUENCE     |   CREATE SEQUENCE public.tbl_caso_cas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbl_caso_cas_id_seq;
       public          postgres    false    208            �           0    0    tbl_caso_cas_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_caso_cas_id_seq OWNED BY public.tbl_caso.cas_id;
          public          postgres    false    209            �            1259    17594    tbl_caso_deterioro    TABLE     
  CREATE TABLE public.tbl_caso_deterioro (
    cas_det_id integer NOT NULL,
    cas_det_gravedad integer NOT NULL,
    cas_det_area numeric(10,3) NOT NULL,
    cas_det_extension numeric(8,2) NOT NULL,
    deterioro_id integer NOT NULL,
    caso_id integer NOT NULL
);
 &   DROP TABLE public.tbl_caso_deterioro;
       public         heap    postgres    false            �            1259    17597 !   tbl_caso_deterioro_cas_det_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_caso_deterioro_cas_det_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.tbl_caso_deterioro_cas_det_id_seq;
       public          postgres    false    210            �           0    0 !   tbl_caso_deterioro_cas_det_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.tbl_caso_deterioro_cas_det_id_seq OWNED BY public.tbl_caso_deterioro.cas_det_id;
          public          postgres    false    211            �            1259    17599 
   tbl_comuna    TABLE     r   CREATE TABLE public.tbl_comuna (
    com_id integer NOT NULL,
    com_ubicacion character varying(30) NOT NULL
);
    DROP TABLE public.tbl_comuna;
       public         heap    postgres    false            �            1259    17602    tbl_comuna_com_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.tbl_comuna_com_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_comuna_com_id_seq;
       public          postgres    false    212            �           0    0    tbl_comuna_com_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_comuna_com_id_seq OWNED BY public.tbl_comuna.com_id;
          public          postgres    false    213            �            1259    17604    tbl_deterioro    TABLE     �   CREATE TABLE public.tbl_deterioro (
    det_id integer NOT NULL,
    det_nombre character varying(50) NOT NULL,
    det_tipo_deterioro character varying(40) NOT NULL,
    det_clasificacion character varying(2) NOT NULL
);
 !   DROP TABLE public.tbl_deterioro;
       public         heap    postgres    false            �            1259    17607    tbl_deterioro_det_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_deterioro_det_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.tbl_deterioro_det_id_seq;
       public          postgres    false    214            �           0    0    tbl_deterioro_det_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.tbl_deterioro_det_id_seq OWNED BY public.tbl_deterioro.det_id;
          public          postgres    false    215            �            1259    17609    tbl_eje_vial    TABLE     �   CREATE TABLE public.tbl_eje_vial (
    eje_id integer NOT NULL,
    eje_numero integer NOT NULL,
    jerarquia_id integer NOT NULL
);
     DROP TABLE public.tbl_eje_vial;
       public         heap    postgres    false            �            1259    17612    tbl_eje_vial_eje_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_eje_vial_eje_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_eje_vial_eje_id_seq;
       public          postgres    false    216            �           0    0    tbl_eje_vial_eje_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_eje_vial_eje_id_seq OWNED BY public.tbl_eje_vial.eje_id;
          public          postgres    false    217            �            1259    17614    tbl_elemento_complementario    TABLE     �   CREATE TABLE public.tbl_elemento_complementario (
    ele_id integer NOT NULL,
    ele_descripcion character varying(45) NOT NULL
);
 /   DROP TABLE public.tbl_elemento_complementario;
       public         heap    postgres    false            �            1259    17617 &   tbl_elemento_complementario_ele_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_elemento_complementario_ele_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.tbl_elemento_complementario_ele_id_seq;
       public          postgres    false    218            �           0    0 &   tbl_elemento_complementario_ele_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.tbl_elemento_complementario_ele_id_seq OWNED BY public.tbl_elemento_complementario.ele_id;
          public          postgres    false    219            �            1259    17619    tbl_entorno    TABLE     v   CREATE TABLE public.tbl_entorno (
    ent_id integer NOT NULL,
    ent_descripcion character varying(200) NOT NULL
);
    DROP TABLE public.tbl_entorno;
       public         heap    postgres    false            �            1259    17622    tbl_entorno_ent_id_seq    SEQUENCE        CREATE SEQUENCE public.tbl_entorno_ent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_entorno_ent_id_seq;
       public          postgres    false    220            �           0    0    tbl_entorno_ent_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_entorno_ent_id_seq OWNED BY public.tbl_entorno.ent_id;
          public          postgres    false    221            �            1259    17624 
   tbl_estado    TABLE     t   CREATE TABLE public.tbl_estado (
    est_id integer NOT NULL,
    est_descripcion character varying(45) NOT NULL
);
    DROP TABLE public.tbl_estado;
       public         heap    postgres    false            �            1259    17627    tbl_estado_est_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.tbl_estado_est_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_estado_est_id_seq;
       public          postgres    false    222            �           0    0    tbl_estado_est_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_estado_est_id_seq OWNED BY public.tbl_estado.est_id;
          public          postgres    false    223            �            1259    17629    tbl_jerarquia_vial    TABLE     |   CREATE TABLE public.tbl_jerarquia_vial (
    jer_id integer NOT NULL,
    jer_descripcion character varying(45) NOT NULL
);
 &   DROP TABLE public.tbl_jerarquia_vial;
       public         heap    postgres    false            �            1259    17632    tbl_metodologia    TABLE     y   CREATE TABLE public.tbl_metodologia (
    met_id integer NOT NULL,
    met_descripcion character varying(10) NOT NULL
);
 #   DROP TABLE public.tbl_metodologia;
       public         heap    postgres    false            �            1259    17635    tbl_metodologia_met_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_metodologia_met_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_metodologia_met_id_seq;
       public          postgres    false    225            �           0    0    tbl_metodologia_met_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_metodologia_met_id_seq OWNED BY public.tbl_metodologia.met_id;
          public          postgres    false    226            �            1259    17637    tbl_orden_mantenimiento    TABLE     �   CREATE TABLE public.tbl_orden_mantenimiento (
    ord_id integer NOT NULL,
    ord_fecha_creacion date NOT NULL,
    ord_fecha_vencimiento date NOT NULL,
    usuario_id integer NOT NULL,
    estado_id integer NOT NULL
);
 +   DROP TABLE public.tbl_orden_mantenimiento;
       public         heap    postgres    false            �            1259    17640 "   tbl_orden_mantenimiento_ord_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_orden_mantenimiento_ord_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tbl_orden_mantenimiento_ord_id_seq;
       public          postgres    false    227            �           0    0 "   tbl_orden_mantenimiento_ord_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tbl_orden_mantenimiento_ord_id_seq OWNED BY public.tbl_orden_mantenimiento.ord_id;
          public          postgres    false    228            �            1259    17642    tbl_rol    TABLE     l   CREATE TABLE public.tbl_rol (
    rol_id integer NOT NULL,
    rol_nombre character varying(20) NOT NULL
);
    DROP TABLE public.tbl_rol;
       public         heap    postgres    false            �            1259    17645    tbl_rol_rol_id_seq    SEQUENCE     {   CREATE SEQUENCE public.tbl_rol_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_rol_rol_id_seq;
       public          postgres    false    229            �           0    0    tbl_rol_rol_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_rol_rol_id_seq OWNED BY public.tbl_rol.rol_id;
          public          postgres    false    230            �            1259    17647    tbl_tipo_de_calzada    TABLE        CREATE TABLE public.tbl_tipo_de_calzada (
    tipc_id integer NOT NULL,
    tipc_descripcion character varying(20) NOT NULL
);
 '   DROP TABLE public.tbl_tipo_de_calzada;
       public         heap    postgres    false            �            1259    17650    tbl_tipo_de_calzada_tipc_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tipo_de_calzada_tipc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.tbl_tipo_de_calzada_tipc_id_seq;
       public          postgres    false    231            �           0    0    tbl_tipo_de_calzada_tipc_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.tbl_tipo_de_calzada_tipc_id_seq OWNED BY public.tbl_tipo_de_calzada.tipc_id;
          public          postgres    false    232            �            1259    17652    tbl_tipo_de_pavimento    TABLE     �   CREATE TABLE public.tbl_tipo_de_pavimento (
    pav_id integer NOT NULL,
    pav_descripcion character varying(16) NOT NULL,
    metodologia_id integer NOT NULL
);
 )   DROP TABLE public.tbl_tipo_de_pavimento;
       public         heap    postgres    false            �            1259    17655     tbl_tipo_de_pavimento_pav_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tipo_de_pavimento_pav_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.tbl_tipo_de_pavimento_pav_id_seq;
       public          postgres    false    233            �           0    0     tbl_tipo_de_pavimento_pav_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.tbl_tipo_de_pavimento_pav_id_seq OWNED BY public.tbl_tipo_de_pavimento.pav_id;
          public          postgres    false    234            �            1259    17657    tbl_tipo_documento    TABLE     |   CREATE TABLE public.tbl_tipo_documento (
    tip_id integer NOT NULL,
    tip_descripcion character varying(45) NOT NULL
);
 &   DROP TABLE public.tbl_tipo_documento;
       public         heap    postgres    false            �            1259    17660    tbl_tipo_documento_tip_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tipo_documento_tip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.tbl_tipo_documento_tip_id_seq;
       public          postgres    false    235            �           0    0    tbl_tipo_documento_tip_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.tbl_tipo_documento_tip_id_seq OWNED BY public.tbl_tipo_documento.tip_id;
          public          postgres    false    236            �            1259    17662 	   tbl_tramo    TABLE     t  CREATE TABLE public.tbl_tramo (
    tra_id integer NOT NULL,
    tra_codigo integer NOT NULL,
    tra_fecha_creacion date,
    tra_segmento integer NOT NULL,
    tra_nomenclatura character varying(45) NOT NULL,
    tra_nombre_via character varying(30) NOT NULL,
    tra_disponibilidad integer NOT NULL,
    tra_ancho_inicio numeric(5,2) NOT NULL,
    tra_ancho_fin numeric(5,2) NOT NULL,
    calzada_id integer NOT NULL,
    barrio_id integer NOT NULL,
    elemento_id integer NOT NULL,
    jerarquia_vial_id integer NOT NULL,
    eje_vial_id integer NOT NULL,
    estado_id integer NOT NULL,
    usuario_id integer NOT NULL
);
    DROP TABLE public.tbl_tramo;
       public         heap    postgres    false            �            1259    17665    tbl_tramo_tra_id_seq    SEQUENCE     }   CREATE SEQUENCE public.tbl_tramo_tra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tbl_tramo_tra_id_seq;
       public          postgres    false    237            �           0    0    tbl_tramo_tra_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tbl_tramo_tra_id_seq OWNED BY public.tbl_tramo.tra_id;
          public          postgres    false    238            �            1259    17667    tbl_usuario    TABLE     �  CREATE TABLE public.tbl_usuario (
    usu_id integer NOT NULL,
    usu_num_identificacion character varying(15) NOT NULL,
    usu_primer_nombre character varying(30) NOT NULL,
    usu_segundo_nombre character varying(30) NOT NULL,
    usu_primer_apellido character varying(30) NOT NULL,
    usu_segundo_apellido character varying(30) NOT NULL,
    usu_contrasena character varying(25) NOT NULL,
    usu_telefono character varying(15) NOT NULL,
    usu_nickname character varying(30) NOT NULL,
    usu_correo character varying(35) NOT NULL,
    rol_id integer NOT NULL,
    estado_id integer NOT NULL,
    tipo_documento_id integer NOT NULL
);
    DROP TABLE public.tbl_usuario;
       public         heap    postgres    false            �            1259    17670    tbl_usuario_usu_id_seq    SEQUENCE        CREATE SEQUENCE public.tbl_usuario_usu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_usuario_usu_id_seq;
       public          postgres    false    239            �           0    0    tbl_usuario_usu_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_usuario_usu_id_seq OWNED BY public.tbl_usuario.usu_id;
          public          postgres    false    240            �
           2604    17672    tbl_barrio bar_id    DEFAULT     v   ALTER TABLE ONLY public.tbl_barrio ALTER COLUMN bar_id SET DEFAULT nextval('public.tbl_barrio_bar_id_seq'::regclass);
 @   ALTER TABLE public.tbl_barrio ALTER COLUMN bar_id DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    17673    tbl_bitacora bit_id    DEFAULT     z   ALTER TABLE ONLY public.tbl_bitacora ALTER COLUMN bit_id SET DEFAULT nextval('public.tbl_bitacora_bit_id_seq'::regclass);
 B   ALTER TABLE public.tbl_bitacora ALTER COLUMN bit_id DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    17674    tbl_calzada cal_id    DEFAULT     x   ALTER TABLE ONLY public.tbl_calzada ALTER COLUMN cal_id SET DEFAULT nextval('public.tbl_calzada_cal_id_seq'::regclass);
 A   ALTER TABLE public.tbl_calzada ALTER COLUMN cal_id DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    17675    tbl_caso cas_id    DEFAULT     r   ALTER TABLE ONLY public.tbl_caso ALTER COLUMN cas_id SET DEFAULT nextval('public.tbl_caso_cas_id_seq'::regclass);
 >   ALTER TABLE public.tbl_caso ALTER COLUMN cas_id DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    17676    tbl_caso_deterioro cas_det_id    DEFAULT     �   ALTER TABLE ONLY public.tbl_caso_deterioro ALTER COLUMN cas_det_id SET DEFAULT nextval('public.tbl_caso_deterioro_cas_det_id_seq'::regclass);
 L   ALTER TABLE public.tbl_caso_deterioro ALTER COLUMN cas_det_id DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    17677    tbl_comuna com_id    DEFAULT     v   ALTER TABLE ONLY public.tbl_comuna ALTER COLUMN com_id SET DEFAULT nextval('public.tbl_comuna_com_id_seq'::regclass);
 @   ALTER TABLE public.tbl_comuna ALTER COLUMN com_id DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    17678    tbl_deterioro det_id    DEFAULT     |   ALTER TABLE ONLY public.tbl_deterioro ALTER COLUMN det_id SET DEFAULT nextval('public.tbl_deterioro_det_id_seq'::regclass);
 C   ALTER TABLE public.tbl_deterioro ALTER COLUMN det_id DROP DEFAULT;
       public          postgres    false    215    214            �
           2604    17679    tbl_eje_vial eje_id    DEFAULT     z   ALTER TABLE ONLY public.tbl_eje_vial ALTER COLUMN eje_id SET DEFAULT nextval('public.tbl_eje_vial_eje_id_seq'::regclass);
 B   ALTER TABLE public.tbl_eje_vial ALTER COLUMN eje_id DROP DEFAULT;
       public          postgres    false    217    216            �
           2604    17680 "   tbl_elemento_complementario ele_id    DEFAULT     �   ALTER TABLE ONLY public.tbl_elemento_complementario ALTER COLUMN ele_id SET DEFAULT nextval('public.tbl_elemento_complementario_ele_id_seq'::regclass);
 Q   ALTER TABLE public.tbl_elemento_complementario ALTER COLUMN ele_id DROP DEFAULT;
       public          postgres    false    219    218            �
           2604    17681    tbl_entorno ent_id    DEFAULT     x   ALTER TABLE ONLY public.tbl_entorno ALTER COLUMN ent_id SET DEFAULT nextval('public.tbl_entorno_ent_id_seq'::regclass);
 A   ALTER TABLE public.tbl_entorno ALTER COLUMN ent_id DROP DEFAULT;
       public          postgres    false    221    220            �
           2604    17682    tbl_estado est_id    DEFAULT     v   ALTER TABLE ONLY public.tbl_estado ALTER COLUMN est_id SET DEFAULT nextval('public.tbl_estado_est_id_seq'::regclass);
 @   ALTER TABLE public.tbl_estado ALTER COLUMN est_id DROP DEFAULT;
       public          postgres    false    223    222            �
           2604    17683    tbl_metodologia met_id    DEFAULT     �   ALTER TABLE ONLY public.tbl_metodologia ALTER COLUMN met_id SET DEFAULT nextval('public.tbl_metodologia_met_id_seq'::regclass);
 E   ALTER TABLE public.tbl_metodologia ALTER COLUMN met_id DROP DEFAULT;
       public          postgres    false    226    225            �
           2604    17684    tbl_orden_mantenimiento ord_id    DEFAULT     �   ALTER TABLE ONLY public.tbl_orden_mantenimiento ALTER COLUMN ord_id SET DEFAULT nextval('public.tbl_orden_mantenimiento_ord_id_seq'::regclass);
 M   ALTER TABLE public.tbl_orden_mantenimiento ALTER COLUMN ord_id DROP DEFAULT;
       public          postgres    false    228    227            �
           2604    17685    tbl_rol rol_id    DEFAULT     p   ALTER TABLE ONLY public.tbl_rol ALTER COLUMN rol_id SET DEFAULT nextval('public.tbl_rol_rol_id_seq'::regclass);
 =   ALTER TABLE public.tbl_rol ALTER COLUMN rol_id DROP DEFAULT;
       public          postgres    false    230    229            �
           2604    17686    tbl_tipo_de_calzada tipc_id    DEFAULT     �   ALTER TABLE ONLY public.tbl_tipo_de_calzada ALTER COLUMN tipc_id SET DEFAULT nextval('public.tbl_tipo_de_calzada_tipc_id_seq'::regclass);
 J   ALTER TABLE public.tbl_tipo_de_calzada ALTER COLUMN tipc_id DROP DEFAULT;
       public          postgres    false    232    231            �
           2604    17687    tbl_tipo_de_pavimento pav_id    DEFAULT     �   ALTER TABLE ONLY public.tbl_tipo_de_pavimento ALTER COLUMN pav_id SET DEFAULT nextval('public.tbl_tipo_de_pavimento_pav_id_seq'::regclass);
 K   ALTER TABLE public.tbl_tipo_de_pavimento ALTER COLUMN pav_id DROP DEFAULT;
       public          postgres    false    234    233            �
           2604    17688    tbl_tipo_documento tip_id    DEFAULT     �   ALTER TABLE ONLY public.tbl_tipo_documento ALTER COLUMN tip_id SET DEFAULT nextval('public.tbl_tipo_documento_tip_id_seq'::regclass);
 H   ALTER TABLE public.tbl_tipo_documento ALTER COLUMN tip_id DROP DEFAULT;
       public          postgres    false    236    235                        2604    17689    tbl_tramo tra_id    DEFAULT     t   ALTER TABLE ONLY public.tbl_tramo ALTER COLUMN tra_id SET DEFAULT nextval('public.tbl_tramo_tra_id_seq'::regclass);
 ?   ALTER TABLE public.tbl_tramo ALTER COLUMN tra_id DROP DEFAULT;
       public          postgres    false    238    237                       2604    17690    tbl_usuario usu_id    DEFAULT     x   ALTER TABLE ONLY public.tbl_usuario ALTER COLUMN usu_id SET DEFAULT nextval('public.tbl_usuario_usu_id_seq'::regclass);
 A   ALTER TABLE public.tbl_usuario ALTER COLUMN usu_id DROP DEFAULT;
       public          postgres    false    240    239            �          0    17574 
   tbl_barrio 
   TABLE DATA           H   COPY public.tbl_barrio (bar_id, bar_descripcion, comuna_id) FROM stdin;
    public          postgres    false    202   ��       �          0    17579    tbl_bitacora 
   TABLE DATA           o   COPY public.tbl_bitacora (bit_id, bit_usuario, bit_fecha_modificacion, bit_tabla, bit_observacion) FROM stdin;
    public          postgres    false    204   ��       �          0    17584    tbl_calzada 
   TABLE DATA           c   COPY public.tbl_calzada (cal_id, cal_calzada, cal_orientacion_carril, tipo_calzada_id) FROM stdin;
    public          postgres    false    206   ��       �          0    17589    tbl_caso 
   TABLE DATA           �   COPY public.tbl_caso (cas_id, cas_fecha_creacion, cas_fecha_vencimiento, cas_fotografia_inicio, cas_fotografia_fin, cas_prioridad, cas_causa, cas_disponibilidad, tipo_pavimento_id, entorno_id, tramo_id, usuario_id, estado_id, orden_id) FROM stdin;
    public          postgres    false    208   2�       �          0    17594    tbl_caso_deterioro 
   TABLE DATA           �   COPY public.tbl_caso_deterioro (cas_det_id, cas_det_gravedad, cas_det_area, cas_det_extension, deterioro_id, caso_id) FROM stdin;
    public          postgres    false    210   O�       �          0    17599 
   tbl_comuna 
   TABLE DATA           ;   COPY public.tbl_comuna (com_id, com_ubicacion) FROM stdin;
    public          postgres    false    212   l�       �          0    17604    tbl_deterioro 
   TABLE DATA           b   COPY public.tbl_deterioro (det_id, det_nombre, det_tipo_deterioro, det_clasificacion) FROM stdin;
    public          postgres    false    214   ��       �          0    17609    tbl_eje_vial 
   TABLE DATA           H   COPY public.tbl_eje_vial (eje_id, eje_numero, jerarquia_id) FROM stdin;
    public          postgres    false    216   ��       �          0    17614    tbl_elemento_complementario 
   TABLE DATA           N   COPY public.tbl_elemento_complementario (ele_id, ele_descripcion) FROM stdin;
    public          postgres    false    218   ��       �          0    17619    tbl_entorno 
   TABLE DATA           >   COPY public.tbl_entorno (ent_id, ent_descripcion) FROM stdin;
    public          postgres    false    220   R�       �          0    17624 
   tbl_estado 
   TABLE DATA           =   COPY public.tbl_estado (est_id, est_descripcion) FROM stdin;
    public          postgres    false    222   ��       �          0    17629    tbl_jerarquia_vial 
   TABLE DATA           E   COPY public.tbl_jerarquia_vial (jer_id, jer_descripcion) FROM stdin;
    public          postgres    false    224   ��       �          0    17632    tbl_metodologia 
   TABLE DATA           B   COPY public.tbl_metodologia (met_id, met_descripcion) FROM stdin;
    public          postgres    false    225   �       �          0    17637    tbl_orden_mantenimiento 
   TABLE DATA           {   COPY public.tbl_orden_mantenimiento (ord_id, ord_fecha_creacion, ord_fecha_vencimiento, usuario_id, estado_id) FROM stdin;
    public          postgres    false    227   @�       �          0    17642    tbl_rol 
   TABLE DATA           5   COPY public.tbl_rol (rol_id, rol_nombre) FROM stdin;
    public          postgres    false    229   ]�       �          0    17647    tbl_tipo_de_calzada 
   TABLE DATA           H   COPY public.tbl_tipo_de_calzada (tipc_id, tipc_descripcion) FROM stdin;
    public          postgres    false    231   ��       �          0    17652    tbl_tipo_de_pavimento 
   TABLE DATA           X   COPY public.tbl_tipo_de_pavimento (pav_id, pav_descripcion, metodologia_id) FROM stdin;
    public          postgres    false    233   ��       �          0    17657    tbl_tipo_documento 
   TABLE DATA           E   COPY public.tbl_tipo_documento (tip_id, tip_descripcion) FROM stdin;
    public          postgres    false    235   �       �          0    17662 	   tbl_tramo 
   TABLE DATA             COPY public.tbl_tramo (tra_id, tra_codigo, tra_fecha_creacion, tra_segmento, tra_nomenclatura, tra_nombre_via, tra_disponibilidad, tra_ancho_inicio, tra_ancho_fin, calzada_id, barrio_id, elemento_id, jerarquia_vial_id, eje_vial_id, estado_id, usuario_id) FROM stdin;
    public          postgres    false    237   |�       �          0    17667    tbl_usuario 
   TABLE DATA           �   COPY public.tbl_usuario (usu_id, usu_num_identificacion, usu_primer_nombre, usu_segundo_nombre, usu_primer_apellido, usu_segundo_apellido, usu_contrasena, usu_telefono, usu_nickname, usu_correo, rol_id, estado_id, tipo_documento_id) FROM stdin;
    public          postgres    false    239   ��                   0    0    tbl_barrio_bar_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tbl_barrio_bar_id_seq', 1, false);
          public          postgres    false    203                       0    0    tbl_bitacora_bit_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_bitacora_bit_id_seq', 1, false);
          public          postgres    false    205                       0    0    tbl_calzada_cal_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbl_calzada_cal_id_seq', 1, false);
          public          postgres    false    207                       0    0    tbl_caso_cas_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tbl_caso_cas_id_seq', 1, false);
          public          postgres    false    209                       0    0 !   tbl_caso_deterioro_cas_det_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.tbl_caso_deterioro_cas_det_id_seq', 1, false);
          public          postgres    false    211                       0    0    tbl_comuna_com_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tbl_comuna_com_id_seq', 1, false);
          public          postgres    false    213                       0    0    tbl_deterioro_det_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.tbl_deterioro_det_id_seq', 1, false);
          public          postgres    false    215                       0    0    tbl_eje_vial_eje_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_eje_vial_eje_id_seq', 1, false);
          public          postgres    false    217                       0    0 &   tbl_elemento_complementario_ele_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.tbl_elemento_complementario_ele_id_seq', 1, false);
          public          postgres    false    219            	           0    0    tbl_entorno_ent_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbl_entorno_ent_id_seq', 1, false);
          public          postgres    false    221            
           0    0    tbl_estado_est_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tbl_estado_est_id_seq', 1, false);
          public          postgres    false    223                       0    0    tbl_metodologia_met_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tbl_metodologia_met_id_seq', 1, false);
          public          postgres    false    226                       0    0 "   tbl_orden_mantenimiento_ord_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tbl_orden_mantenimiento_ord_id_seq', 1, false);
          public          postgres    false    228                       0    0    tbl_rol_rol_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_rol_rol_id_seq', 1, false);
          public          postgres    false    230                       0    0    tbl_tipo_de_calzada_tipc_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.tbl_tipo_de_calzada_tipc_id_seq', 1, false);
          public          postgres    false    232                       0    0     tbl_tipo_de_pavimento_pav_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.tbl_tipo_de_pavimento_pav_id_seq', 1, false);
          public          postgres    false    234                       0    0    tbl_tipo_documento_tip_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.tbl_tipo_documento_tip_id_seq', 1, false);
          public          postgres    false    236                       0    0    tbl_tramo_tra_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbl_tramo_tra_id_seq', 1, false);
          public          postgres    false    238                       0    0    tbl_usuario_usu_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tbl_usuario_usu_id_seq', 1, false);
          public          postgres    false    240                       2606    17692    tbl_barrio tbl_barrio_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_barrio
    ADD CONSTRAINT tbl_barrio_pkey PRIMARY KEY (bar_id);
 D   ALTER TABLE ONLY public.tbl_barrio DROP CONSTRAINT tbl_barrio_pkey;
       public            postgres    false    202                       2606    17694    tbl_bitacora tbl_bitacora_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_bitacora
    ADD CONSTRAINT tbl_bitacora_pkey PRIMARY KEY (bit_id);
 H   ALTER TABLE ONLY public.tbl_bitacora DROP CONSTRAINT tbl_bitacora_pkey;
       public            postgres    false    204                       2606    17696    tbl_calzada tbl_calzada_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_calzada
    ADD CONSTRAINT tbl_calzada_pkey PRIMARY KEY (cal_id);
 F   ALTER TABLE ONLY public.tbl_calzada DROP CONSTRAINT tbl_calzada_pkey;
       public            postgres    false    206                       2606    17698 *   tbl_caso_deterioro tbl_caso_deterioro_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.tbl_caso_deterioro
    ADD CONSTRAINT tbl_caso_deterioro_pkey PRIMARY KEY (cas_det_id);
 T   ALTER TABLE ONLY public.tbl_caso_deterioro DROP CONSTRAINT tbl_caso_deterioro_pkey;
       public            postgres    false    210            	           2606    17700    tbl_caso tbl_caso_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tbl_caso
    ADD CONSTRAINT tbl_caso_pkey PRIMARY KEY (cas_id);
 @   ALTER TABLE ONLY public.tbl_caso DROP CONSTRAINT tbl_caso_pkey;
       public            postgres    false    208                       2606    17702    tbl_comuna tbl_comuna_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_comuna
    ADD CONSTRAINT tbl_comuna_pkey PRIMARY KEY (com_id);
 D   ALTER TABLE ONLY public.tbl_comuna DROP CONSTRAINT tbl_comuna_pkey;
       public            postgres    false    212                       2606    17704     tbl_deterioro tbl_deterioro_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_deterioro
    ADD CONSTRAINT tbl_deterioro_pkey PRIMARY KEY (det_id);
 J   ALTER TABLE ONLY public.tbl_deterioro DROP CONSTRAINT tbl_deterioro_pkey;
       public            postgres    false    214                       2606    17706    tbl_eje_vial tbl_eje_vial_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_eje_vial
    ADD CONSTRAINT tbl_eje_vial_pkey PRIMARY KEY (eje_id);
 H   ALTER TABLE ONLY public.tbl_eje_vial DROP CONSTRAINT tbl_eje_vial_pkey;
       public            postgres    false    216                       2606    17708 <   tbl_elemento_complementario tbl_elemento_complementario_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.tbl_elemento_complementario
    ADD CONSTRAINT tbl_elemento_complementario_pkey PRIMARY KEY (ele_id);
 f   ALTER TABLE ONLY public.tbl_elemento_complementario DROP CONSTRAINT tbl_elemento_complementario_pkey;
       public            postgres    false    218                       2606    17710    tbl_entorno tbl_entorno_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_entorno
    ADD CONSTRAINT tbl_entorno_pkey PRIMARY KEY (ent_id);
 F   ALTER TABLE ONLY public.tbl_entorno DROP CONSTRAINT tbl_entorno_pkey;
       public            postgres    false    220                       2606    17712    tbl_estado tbl_estado_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_estado
    ADD CONSTRAINT tbl_estado_pkey PRIMARY KEY (est_id);
 D   ALTER TABLE ONLY public.tbl_estado DROP CONSTRAINT tbl_estado_pkey;
       public            postgres    false    222                       2606    17714 *   tbl_jerarquia_vial tbl_jerarquia_vial_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_jerarquia_vial
    ADD CONSTRAINT tbl_jerarquia_vial_pkey PRIMARY KEY (jer_id);
 T   ALTER TABLE ONLY public.tbl_jerarquia_vial DROP CONSTRAINT tbl_jerarquia_vial_pkey;
       public            postgres    false    224                       2606    17716 $   tbl_metodologia tbl_metodologia_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.tbl_metodologia
    ADD CONSTRAINT tbl_metodologia_pkey PRIMARY KEY (met_id);
 N   ALTER TABLE ONLY public.tbl_metodologia DROP CONSTRAINT tbl_metodologia_pkey;
       public            postgres    false    225                       2606    17718 4   tbl_orden_mantenimiento tbl_orden_mantenimiento_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.tbl_orden_mantenimiento
    ADD CONSTRAINT tbl_orden_mantenimiento_pkey PRIMARY KEY (ord_id);
 ^   ALTER TABLE ONLY public.tbl_orden_mantenimiento DROP CONSTRAINT tbl_orden_mantenimiento_pkey;
       public            postgres    false    227                       2606    17720    tbl_rol tbl_rol_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_rol
    ADD CONSTRAINT tbl_rol_pkey PRIMARY KEY (rol_id);
 >   ALTER TABLE ONLY public.tbl_rol DROP CONSTRAINT tbl_rol_pkey;
       public            postgres    false    229            !           2606    17722 ,   tbl_tipo_de_calzada tbl_tipo_de_calzada_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.tbl_tipo_de_calzada
    ADD CONSTRAINT tbl_tipo_de_calzada_pkey PRIMARY KEY (tipc_id);
 V   ALTER TABLE ONLY public.tbl_tipo_de_calzada DROP CONSTRAINT tbl_tipo_de_calzada_pkey;
       public            postgres    false    231            #           2606    17724 0   tbl_tipo_de_pavimento tbl_tipo_de_pavimento_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.tbl_tipo_de_pavimento
    ADD CONSTRAINT tbl_tipo_de_pavimento_pkey PRIMARY KEY (pav_id);
 Z   ALTER TABLE ONLY public.tbl_tipo_de_pavimento DROP CONSTRAINT tbl_tipo_de_pavimento_pkey;
       public            postgres    false    233            %           2606    17726 *   tbl_tipo_documento tbl_tipo_documento_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_tipo_documento
    ADD CONSTRAINT tbl_tipo_documento_pkey PRIMARY KEY (tip_id);
 T   ALTER TABLE ONLY public.tbl_tipo_documento DROP CONSTRAINT tbl_tipo_documento_pkey;
       public            postgres    false    235            '           2606    17728    tbl_tramo tbl_tramo_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT tbl_tramo_pkey PRIMARY KEY (tra_id);
 B   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT tbl_tramo_pkey;
       public            postgres    false    237            )           2606    17730    tbl_usuario tbl_usuario_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT tbl_usuario_pkey PRIMARY KEY (usu_id);
 F   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT tbl_usuario_pkey;
       public            postgres    false    239            *           2606    17731 )   tbl_barrio fk_tbl_barrio_tblcomuna_com_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_barrio
    ADD CONSTRAINT fk_tbl_barrio_tblcomuna_com_id FOREIGN KEY (comuna_id) REFERENCES public.tbl_comuna(com_id);
 S   ALTER TABLE ONLY public.tbl_barrio DROP CONSTRAINT fk_tbl_barrio_tblcomuna_com_id;
       public          postgres    false    202    2829    212            +           2606    17736 -   tbl_calzada fk_tbl_calzada_tipo_de_calzada_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_calzada
    ADD CONSTRAINT fk_tbl_calzada_tipo_de_calzada_id FOREIGN KEY (tipo_calzada_id) REFERENCES public.tbl_tipo_de_calzada(tipc_id);
 W   ALTER TABLE ONLY public.tbl_calzada DROP CONSTRAINT fk_tbl_calzada_tipo_de_calzada_id;
       public          postgres    false    231    2849    206            2           2606    17741 7   tbl_caso_deterioro fk_tbl_caso_deterioro_tblcaso_cas_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso_deterioro
    ADD CONSTRAINT fk_tbl_caso_deterioro_tblcaso_cas_id FOREIGN KEY (caso_id) REFERENCES public.tbl_caso(cas_id);
 a   ALTER TABLE ONLY public.tbl_caso_deterioro DROP CONSTRAINT fk_tbl_caso_deterioro_tblcaso_cas_id;
       public          postgres    false    210    208    2825            3           2606    17746 <   tbl_caso_deterioro fk_tbl_caso_deterioro_tbldeterioro_det_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso_deterioro
    ADD CONSTRAINT fk_tbl_caso_deterioro_tbldeterioro_det_id FOREIGN KEY (deterioro_id) REFERENCES public.tbl_deterioro(det_id);
 f   ALTER TABLE ONLY public.tbl_caso_deterioro DROP CONSTRAINT fk_tbl_caso_deterioro_tbldeterioro_det_id;
       public          postgres    false    210    214    2831            ,           2606    17751 &   tbl_caso fk_tbl_caso_tblentorno_ent_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblentorno_ent_id FOREIGN KEY (entorno_id) REFERENCES public.tbl_entorno(ent_id);
 P   ALTER TABLE ONLY public.tbl_caso DROP CONSTRAINT fk_tbl_caso_tblentorno_ent_id;
       public          postgres    false    2837    220    208            -           2606    17756 %   tbl_caso fk_tbl_caso_tblestado_est_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES public.tbl_estado(est_id);
 O   ALTER TABLE ONLY public.tbl_caso DROP CONSTRAINT fk_tbl_caso_tblestado_est_id;
       public          postgres    false    222    2839    208            .           2606    17761 2   tbl_caso fk_tbl_caso_tblorden_mantenimiento_ord_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblorden_mantenimiento_ord_id FOREIGN KEY (orden_id) REFERENCES public.tbl_orden_mantenimiento(ord_id);
 \   ALTER TABLE ONLY public.tbl_caso DROP CONSTRAINT fk_tbl_caso_tblorden_mantenimiento_ord_id;
       public          postgres    false    227    208    2845            /           2606    17766 .   tbl_caso fk_tbl_caso_tbltipodepavimento_pav_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tbltipodepavimento_pav_id FOREIGN KEY (tipo_pavimento_id) REFERENCES public.tbl_tipo_de_pavimento(pav_id);
 X   ALTER TABLE ONLY public.tbl_caso DROP CONSTRAINT fk_tbl_caso_tbltipodepavimento_pav_id;
       public          postgres    false    2851    233    208            0           2606    17771 $   tbl_caso fk_tbl_caso_tbltramo_tra_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tbltramo_tra_id FOREIGN KEY (tramo_id) REFERENCES public.tbl_tramo(tra_id);
 N   ALTER TABLE ONLY public.tbl_caso DROP CONSTRAINT fk_tbl_caso_tbltramo_tra_id;
       public          postgres    false    2855    237    208            1           2606    17776 &   tbl_caso fk_tbl_caso_tblusuario_usu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_caso
    ADD CONSTRAINT fk_tbl_caso_tblusuario_usu_id FOREIGN KEY (usuario_id) REFERENCES public.tbl_usuario(usu_id);
 P   ALTER TABLE ONLY public.tbl_caso DROP CONSTRAINT fk_tbl_caso_tblusuario_usu_id;
       public          postgres    false    2857    208    239            4           2606    17781 9   tbl_eje_vial fk_tbl_ejevial_tbljerarquiavial_jerarquia_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_eje_vial
    ADD CONSTRAINT fk_tbl_ejevial_tbljerarquiavial_jerarquia_id FOREIGN KEY (jerarquia_id) REFERENCES public.tbl_jerarquia_vial(jer_id);
 c   ALTER TABLE ONLY public.tbl_eje_vial DROP CONSTRAINT fk_tbl_ejevial_tbljerarquiavial_jerarquia_id;
       public          postgres    false    216    2841    224            5           2606    17786 C   tbl_orden_mantenimiento fk_tbl_orden_mantenimiento_tblestado_est_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_orden_mantenimiento
    ADD CONSTRAINT fk_tbl_orden_mantenimiento_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES public.tbl_estado(est_id);
 m   ALTER TABLE ONLY public.tbl_orden_mantenimiento DROP CONSTRAINT fk_tbl_orden_mantenimiento_tblestado_est_id;
       public          postgres    false    222    227    2839            6           2606    17791 D   tbl_orden_mantenimiento fk_tbl_orden_mantenimiento_tblusuario_usu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_orden_mantenimiento
    ADD CONSTRAINT fk_tbl_orden_mantenimiento_tblusuario_usu_id FOREIGN KEY (usuario_id) REFERENCES public.tbl_usuario(usu_id);
 n   ALTER TABLE ONLY public.tbl_orden_mantenimiento DROP CONSTRAINT fk_tbl_orden_mantenimiento_tblusuario_usu_id;
       public          postgres    false    2857    227    239            7           2606    17796 B   tbl_tipo_de_pavimento fk_tbl_tipodepavimento_tblmetodologia_met_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tipo_de_pavimento
    ADD CONSTRAINT fk_tbl_tipodepavimento_tblmetodologia_met_id FOREIGN KEY (metodologia_id) REFERENCES public.tbl_metodologia(met_id);
 l   ALTER TABLE ONLY public.tbl_tipo_de_pavimento DROP CONSTRAINT fk_tbl_tipodepavimento_tblmetodologia_met_id;
       public          postgres    false    233    225    2843            8           2606    17801 '   tbl_tramo fk_tbl_tramo_tblbarrio_bar_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblbarrio_bar_id FOREIGN KEY (barrio_id) REFERENCES public.tbl_barrio(bar_id);
 Q   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT fk_tbl_tramo_tblbarrio_bar_id;
       public          postgres    false    237    202    2819            9           2606    17806 (   tbl_tramo fk_tbl_tramo_tblcalzada_cal_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblcalzada_cal_id FOREIGN KEY (calzada_id) REFERENCES public.tbl_calzada(cal_id);
 R   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT fk_tbl_tramo_tblcalzada_cal_id;
       public          postgres    false    2823    237    206            :           2606    17811 )   tbl_tramo fk_tbl_tramo_tbleje_vial_eje_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tbleje_vial_eje_id FOREIGN KEY (eje_vial_id) REFERENCES public.tbl_eje_vial(eje_id);
 S   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT fk_tbl_tramo_tbleje_vial_eje_id;
       public          postgres    false    2833    237    216            ;           2606    17816 8   tbl_tramo fk_tbl_tramo_tblelemento_complementario_ele_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblelemento_complementario_ele_id FOREIGN KEY (elemento_id) REFERENCES public.tbl_elemento_complementario(ele_id);
 b   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT fk_tbl_tramo_tblelemento_complementario_ele_id;
       public          postgres    false    2835    218    237            <           2606    17821 '   tbl_tramo fk_tbl_tramo_tblestado_est_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES public.tbl_estado(est_id);
 Q   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT fk_tbl_tramo_tblestado_est_id;
       public          postgres    false    2839    222    237            =           2606    17826 /   tbl_tramo fk_tbl_tramo_tbljerarquia_vial_jer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tbljerarquia_vial_jer_id FOREIGN KEY (jerarquia_vial_id) REFERENCES public.tbl_jerarquia_vial(jer_id);
 Y   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT fk_tbl_tramo_tbljerarquia_vial_jer_id;
       public          postgres    false    237    2841    224            >           2606    17831 (   tbl_tramo fk_tbl_tramo_tblusuario_usu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tramo
    ADD CONSTRAINT fk_tbl_tramo_tblusuario_usu_id FOREIGN KEY (usuario_id) REFERENCES public.tbl_usuario(usu_id);
 R   ALTER TABLE ONLY public.tbl_tramo DROP CONSTRAINT fk_tbl_tramo_tblusuario_usu_id;
       public          postgres    false    239    2857    237            ?           2606    17836 +   tbl_usuario fk_tbl_usuario_tblestado_est_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT fk_tbl_usuario_tblestado_est_id FOREIGN KEY (estado_id) REFERENCES public.tbl_estado(est_id);
 U   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT fk_tbl_usuario_tblestado_est_id;
       public          postgres    false    222    2839    239            @           2606    17841 (   tbl_usuario fk_tbl_usuario_tblrol_rol_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT fk_tbl_usuario_tblrol_rol_id FOREIGN KEY (rol_id) REFERENCES public.tbl_rol(rol_id);
 R   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT fk_tbl_usuario_tblrol_rol_id;
       public          postgres    false    229    2847    239            A           2606    17846 2   tbl_usuario fk_tbl_usuario_tbltipodocumento_tip_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_usuario
    ADD CONSTRAINT fk_tbl_usuario_tbltipodocumento_tip_id FOREIGN KEY (tipo_documento_id) REFERENCES public.tbl_tipo_documento(tip_id);
 \   ALTER TABLE ONLY public.tbl_usuario DROP CONSTRAINT fk_tbl_usuario_tbltipodocumento_tip_id;
       public          postgres    false    235    239    2853            �     x�MT�R1<��B_@��e����x� �)�� ��������H�8���쏥%����Ѭf�{�h�!/���7'W������D��]���OX�}7ֲl��W�(�=[�{�EEg����5���c�!�ѩ�+�O).Ĝ���c7x��E�/F�,}�DHet�Ã��=s�S)���Oڙ�����pa�)[�;�p%UB�t�{\�"���������Z3�4:�36���jF_")�0@<'to:4�`A��޻�����V�:��[��e��<#���^b(�"�@a����4'$��O�����ȋ}���6�#Tҝ�@Ko�WP�
ws�A�B�5-�x���Y$q`y�Ӱ\j˶��w�DzN7�L�5�We"_����>�\d�Ɠd�����w�&��*)x"�D��VP��s��S)��7:�6ø	��EQ����XF�u?p��]�$ �f�]ˏ(+D1�{0+�E�e���]²7��8���1P)J0�0p�o�ۄ�{{v]�8��w)YЭ�Q�(K�ԍQ��@*Z���V�����'�����5\>�Au-����<˲����`�yy˝��8��bX��]kH�D�a>�����( Y�4�wq`��^����\T]O�[��#,i9j56� Ute�'�I-DU�7gb�k�S��=��Y�i���C���z�E�������X�ѷ���wܘ����SN��pZ�.�χ�/G�T`ˇ �?���h���r�2]ph�W�ޛ=����j�QA�ߨ\�8B��q��      �      x������ � �      �   c   x�3�4�)J��WHJ,�L��4�2�4���*,�L-J��4�2�4�tI-JM� �L89]+JR�2��L�LA��H���%`�p�s� B��qqq �[+�      �      x������ � �      �      x������ � �      �   }   x�3���/��ON�LI�+I�2B���M ��L0��g��3G�Y��,�L54�.-�24䄩04B0�9]2�K�2K��K�r��Mp���7Ci��BY�)#�#��k72K��qqq g�_      �   �  x���Mn�0���)x� ����Ad�v3&�
��d��FY=�/�!m�L� ��5�{3|CM��9���tы{�z�@�0H�l��19m� �w��I�G|��.� �qz.LH�7h�F�����B`h1@uo�{�[���
�w����޿�6�)�$�HIE&�(��Z���ߌ���.�<�+e��i���v�U9|��\���DF��3
jv2�|�x�_yZYm<i����F���py.�v>{
t��'<�7C��Sx=r�d9&ދ�8�������o|aBꑶF�<���C����Ų�N���[}n��W���?EbFcD2����K��Z���gǫA���m�Qt�Ohت�C�L[�ʾB�^LW��1��Xq<|3�n��_Q������ /y�h.V�t�s-l���P?���E�4� ����      �   �  x�%�˵$!C�t0s
0�\^�q̕��Bm([�To}���7f��ڐq�!�n�N�2�6e|����d����8+-�۲�ڲ}����m�O۶߶���c_;�C���h��g{�_���j��al9�g+`�co�v�c*�ބކS��N&���������L<//Ƴ�Qx�>���X�q0���a�E>͹Ȩ9�!�^|ɸ�@S�Sa�O�ơ�0N���b\* �V��x�x�׶��8�S�#;���N,�˘��X@HbJ�,ڱ���;���`�fr���N�8i <_O��jJ)4�۝= �>-ּ�\��|�r� ����i����X'��Ùz�3T3T3|x6Çg����y{x6ՇgS}x6�.z�ڿNub��f�=6j�c[�*���9��Ck���,�2��.�� D7��z ;`%`�Oh� :$�5��܀�^ ���p݃ʺZ.��v݅�� �� Rb"H��O���B�H4U*�fYB*n5H49I�DC�#����*G6�4&i��Q*CP� �2���ȋ�2,�sن@g�j�d���Yb�B�a ��b�0@��]"��.�Ze����h�
��� �V �
�[a�|+�o�^�ב�Ճ:�o�a%G�xl:�c[��v[�B^a��WX!�VD_�b^�B��7���z�a����E�!�~hz����Ǿv�!�~����w�w�i��C�;YC�;YC�;}����T���y ��bH�3�����ͺʺͱ��v�Yy��z���@��\t؝�Yb��>a�����v�4~���p���E�l��u-u~ްB�7���=Aĸy��:�/��cÈ~a���\1~��/q����(��ފ�b��:�ߗ�����*Pga8�
�B�t��E���{�Ω��Z_�#w��:�B@7��*�BA_9_j�O�/�A�=��@�=�X�Q}�-g�α.�vA;�GOs蛣�;���#u��Ι:t{����m:�~���y�      �   �   x�]��1co[�8�ɓ��|�cm���(��!|3�7wgC���%z����/N�v�?�X -�NL��r�b� |��������I$>ICP�Fr5$ڸ6W�"���Y2_���.ha�nҀ�B�} �P;�      �   A  x�]�MN�0���S��v��mAj%+6g��ڑ�T���)z1�Qɂ��z�}�g��?-��ZG�1�)�C�8��j�}��R��x���V�s�x��1˰����r�j��c{�H�v�s��d#a��W�m��b,�5�{>SL�`#X=��X�Pe��p���\h�5����X�'������W��ĞS��z�%�;tJO�m\�SM��`�5;�9<��q�I�O��߀1���{N�ϻ�m)N�5���zqg���(�n���.�L�h�>S��ؓ�.b�3y�P��I��
��.�9|P����y���)'�      �      x������ � �      �   D   x�3�t,*I-�LT(��K�,H��2���&��$�\Ɯa@�������D.0�'?�!F��� ��7      �      x�3�ˬ�,�2�H�T������ 6��      �      x������ � �      �   6   x�3���/�2�NM.J-I,���2�.M*F�M8s2sS�JS�b���� �@?      �   0   x�3�t�/VpN̩JLI,�2�t.M,)�G�rB�
�y�ɉ\1z\\\ ��S      �   &   x�3�t�I��L�I�4�2�:�6=3%�ӈ+F��� ��)      �   S   x�3�t>�2�4'Q!%U�9�4%1%1���D.#ΐĢ����gJj^I&P��Y�kEIQb^VjH�	g@bqbA~QI*W� ��      �      x������ � �      �      x������ � �     