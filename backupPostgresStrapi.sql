PGDMP         +                 y            ecf-cms    12.4    12.4 {    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16677    ecf-cms    DATABASE     �   CREATE DATABASE "ecf-cms" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE "ecf-cms";
                postgres    false            �            1259    16680 
   core_store    TABLE     �   CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
    DROP TABLE public.core_store;
       public         heap    postgres    false            �            1259    16678    core_store_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_store_id_seq;
       public          postgres    false    203            �           0    0    core_store_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;
          public          postgres    false    202            �            1259    16830    messages    TABLE     �  CREATE TABLE public.messages (
    id integer NOT NULL,
    texte text,
    date_creation date,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    sujet integer,
    message text,
    users_permissions_user integer,
    corp text,
    admin_user integer,
    users_crea integer
);
    DROP TABLE public.messages;
       public         heap    postgres    false            �            1259    16867    messages__user    TABLE     m   CREATE TABLE public.messages__user (
    id integer NOT NULL,
    message_id integer,
    user_id integer
);
 "   DROP TABLE public.messages__user;
       public         heap    postgres    false            �            1259    16865    messages__user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages__user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.messages__user_id_seq;
       public          postgres    false    229            �           0    0    messages__user_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.messages__user_id_seq OWNED BY public.messages__user.id;
          public          postgres    false    228            �            1259    16828    messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.messages_id_seq;
       public          postgres    false    227            �           0    0    messages_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;
          public          postgres    false    226            �            1259    16883     messages_sujets__sujets_messages    TABLE     �   CREATE TABLE public.messages_sujets__sujets_messages (
    id integer NOT NULL,
    message_id integer,
    sujet_id integer
);
 4   DROP TABLE public.messages_sujets__sujets_messages;
       public         heap    postgres    false            �            1259    16881 '   messages_sujets__sujets_messages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.messages_sujets__sujets_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.messages_sujets__sujets_messages_id_seq;
       public          postgres    false    233            �           0    0 '   messages_sujets__sujets_messages_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.messages_sujets__sujets_messages_id_seq OWNED BY public.messages_sujets__sujets_messages.id;
          public          postgres    false    232            �            1259    16732    strapi_administrator    TABLE     �  CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean
);
 (   DROP TABLE public.strapi_administrator;
       public         heap    postgres    false            �            1259    16730    strapi_administrator_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.strapi_administrator_id_seq;
       public          postgres    false    211            �           0    0    strapi_administrator_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;
          public          postgres    false    210            �            1259    16702    strapi_permission    TABLE     S  CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    fields jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.strapi_permission;
       public         heap    postgres    false            �            1259    16700    strapi_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_permission_id_seq;
       public          postgres    false    207            �           0    0    strapi_permission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;
          public          postgres    false    206            �            1259    16715    strapi_role    TABLE     ?  CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.strapi_role;
       public         heap    postgres    false            �            1259    16713    strapi_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.strapi_role_id_seq;
       public          postgres    false    209            �           0    0    strapi_role_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;
          public          postgres    false    208            �            1259    16745    strapi_users_roles    TABLE     n   CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
 &   DROP TABLE public.strapi_users_roles;
       public         heap    postgres    false            �            1259    16743    strapi_users_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.strapi_users_roles_id_seq;
       public          postgres    false    213            �           0    0    strapi_users_roles_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;
          public          postgres    false    212            �            1259    16691    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    16689    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    205            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    204            �            1259    16817    sujets    TABLE     �  CREATE TABLE public.sujets (
    id integer NOT NULL,
    titre character varying(255),
    "date_Creation" timestamp with time zone,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    users_permissions_user integer,
    admin_user integer,
    id_sujet character varying(255),
    date_creation date,
    users_crea integer
);
    DROP TABLE public.sujets;
       public         heap    postgres    false            �            1259    16875    sujets__user_crea    TABLE     n   CREATE TABLE public.sujets__user_crea (
    id integer NOT NULL,
    sujet_id integer,
    user_id integer
);
 %   DROP TABLE public.sujets__user_crea;
       public         heap    postgres    false            �            1259    16873    sujets__user_crea_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sujets__user_crea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.sujets__user_crea_id_seq;
       public          postgres    false    231            �           0    0    sujets__user_crea_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.sujets__user_crea_id_seq OWNED BY public.sujets__user_crea.id;
          public          postgres    false    230            �            1259    16815    sujets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sujets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.sujets_id_seq;
       public          postgres    false    225            �           0    0    sujets_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.sujets_id_seq OWNED BY public.sujets.id;
          public          postgres    false    224            �            1259    16792    upload_file    TABLE     �  CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.upload_file;
       public         heap    postgres    false            �            1259    16790    upload_file_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.upload_file_id_seq;
       public          postgres    false    221            �           0    0    upload_file_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;
          public          postgres    false    220            �            1259    16805    upload_file_morph    TABLE     �   CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);
 %   DROP TABLE public.upload_file_morph;
       public         heap    postgres    false            �            1259    16803    upload_file_morph_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.upload_file_morph_id_seq;
       public          postgres    false    223            �           0    0    upload_file_morph_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;
          public          postgres    false    222            �            1259    16753    users-permissions_permission    TABLE     Y  CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);
 2   DROP TABLE public."users-permissions_permission";
       public         heap    postgres    false            �            1259    16751 #   users-permissions_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."users-permissions_permission_id_seq";
       public          postgres    false    215            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;
          public          postgres    false    214            �            1259    16764    users-permissions_role    TABLE     �   CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);
 ,   DROP TABLE public."users-permissions_role";
       public         heap    postgres    false            �            1259    16762    users-permissions_role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_role_id_seq";
       public          postgres    false    217            �           0    0    users-permissions_role_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;
          public          postgres    false    216            �            1259    16777    users-permissions_user    TABLE     B  CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 ,   DROP TABLE public."users-permissions_user";
       public         heap    postgres    false            �            1259    16775    users-permissions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."users-permissions_user_id_seq";
       public          postgres    false    219            �           0    0    users-permissions_user_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;
          public          postgres    false    218            �
           2604    16683    core_store id    DEFAULT     n   ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);
 <   ALTER TABLE public.core_store ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    16833    messages id    DEFAULT     j   ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);
 :   ALTER TABLE public.messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �
           2604    16870    messages__user id    DEFAULT     v   ALTER TABLE ONLY public.messages__user ALTER COLUMN id SET DEFAULT nextval('public.messages__user_id_seq'::regclass);
 @   ALTER TABLE public.messages__user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229                        2604    16886 #   messages_sujets__sujets_messages id    DEFAULT     �   ALTER TABLE ONLY public.messages_sujets__sujets_messages ALTER COLUMN id SET DEFAULT nextval('public.messages_sujets__sujets_messages_id_seq'::regclass);
 R   ALTER TABLE public.messages_sujets__sujets_messages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �
           2604    16735    strapi_administrator id    DEFAULT     �   ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);
 F   ALTER TABLE public.strapi_administrator ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    16705    strapi_permission id    DEFAULT     |   ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);
 C   ALTER TABLE public.strapi_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16718    strapi_role id    DEFAULT     p   ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);
 =   ALTER TABLE public.strapi_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    16748    strapi_users_roles id    DEFAULT     ~   ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);
 D   ALTER TABLE public.strapi_users_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �
           2604    16694    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16820 	   sujets id    DEFAULT     f   ALTER TABLE ONLY public.sujets ALTER COLUMN id SET DEFAULT nextval('public.sujets_id_seq'::regclass);
 8   ALTER TABLE public.sujets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    16878    sujets__user_crea id    DEFAULT     |   ALTER TABLE ONLY public.sujets__user_crea ALTER COLUMN id SET DEFAULT nextval('public.sujets__user_crea_id_seq'::regclass);
 C   ALTER TABLE public.sujets__user_crea ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �
           2604    16795    upload_file id    DEFAULT     p   ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);
 =   ALTER TABLE public.upload_file ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    16808    upload_file_morph id    DEFAULT     |   ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);
 C   ALTER TABLE public.upload_file_morph ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �
           2604    16756    users-permissions_permission id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);
 P   ALTER TABLE public."users-permissions_permission" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    16767    users-permissions_role id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    16780    users-permissions_user id    DEFAULT     �   ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);
 J   ALTER TABLE public."users-permissions_user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �          0    16680 
   core_store 
   TABLE DATA           L   COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    203   ��       �          0    16830    messages 
   TABLE DATA           �   COPY public.messages (id, texte, date_creation, published_at, created_by, updated_by, created_at, updated_at, sujet, message, users_permissions_user, corp, admin_user, users_crea) FROM stdin;
    public          postgres    false    227   E�       �          0    16867    messages__user 
   TABLE DATA           A   COPY public.messages__user (id, message_id, user_id) FROM stdin;
    public          postgres    false    229   q�       �          0    16883     messages_sujets__sujets_messages 
   TABLE DATA           T   COPY public.messages_sujets__sujets_messages (id, message_id, sujet_id) FROM stdin;
    public          postgres    false    233   ��       �          0    16732    strapi_administrator 
   TABLE DATA           �   COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked) FROM stdin;
    public          postgres    false    211   մ       �          0    16702    strapi_permission 
   TABLE DATA           r   COPY public.strapi_permission (id, action, subject, fields, conditions, role, created_at, updated_at) FROM stdin;
    public          postgres    false    207   [�       �          0    16715    strapi_role 
   TABLE DATA           Z   COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
    public          postgres    false    209   C�       �          0    16745    strapi_users_roles 
   TABLE DATA           B   COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
    public          postgres    false    213   %�       �          0    16691    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    205   H�       �          0    16817    sujets 
   TABLE DATA           �   COPY public.sujets (id, titre, "date_Creation", published_at, created_by, updated_by, created_at, updated_at, users_permissions_user, admin_user, id_sujet, date_creation, users_crea) FROM stdin;
    public          postgres    false    225   e�       �          0    16875    sujets__user_crea 
   TABLE DATA           B   COPY public.sujets__user_crea (id, sujet_id, user_id) FROM stdin;
    public          postgres    false    231   &�       �          0    16792    upload_file 
   TABLE DATA           �   COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    221   S�       �          0    16805    upload_file_morph 
   TABLE DATA           i   COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    223   ��       �          0    16753    users-permissions_permission 
   TABLE DATA           �   COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
    public          postgres    false    215   ��       �          0    16764    users-permissions_role 
   TABLE DATA           g   COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
    public          postgres    false    217   {�       �          0    16777    users-permissions_user 
   TABLE DATA           �   COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
    public          postgres    false    219   ��       �           0    0    core_store_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.core_store_id_seq', 24, true);
          public          postgres    false    202            �           0    0    messages__user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.messages__user_id_seq', 4, true);
          public          postgres    false    228            �           0    0    messages_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.messages_id_seq', 5, true);
          public          postgres    false    226            �           0    0 '   messages_sujets__sujets_messages_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.messages_sujets__sujets_messages_id_seq', 4, true);
          public          postgres    false    232            �           0    0    strapi_administrator_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 1, true);
          public          postgres    false    210            �           0    0    strapi_permission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_permission_id_seq', 98, true);
          public          postgres    false    206            �           0    0    strapi_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);
          public          postgres    false    208            �           0    0    strapi_users_roles_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 1, true);
          public          postgres    false    212            �           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    204            �           0    0    sujets__user_crea_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.sujets__user_crea_id_seq', 3, true);
          public          postgres    false    230            �           0    0    sujets_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.sujets_id_seq', 8, true);
          public          postgres    false    224            �           0    0    upload_file_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.upload_file_id_seq', 4, true);
          public          postgres    false    220            �           0    0    upload_file_morph_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 1, false);
          public          postgres    false    222            �           0    0 #   users-permissions_permission_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 178, true);
          public          postgres    false    214            �           0    0    users-permissions_role_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);
          public          postgres    false    216            �           0    0    users-permissions_user_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 3, true);
          public          postgres    false    218                       2606    16688    core_store core_store_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_store DROP CONSTRAINT core_store_pkey;
       public            postgres    false    203            *           2606    16872 "   messages__user messages__user_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.messages__user
    ADD CONSTRAINT messages__user_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.messages__user DROP CONSTRAINT messages__user_pkey;
       public            postgres    false    229            (           2606    16840    messages messages_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.messages DROP CONSTRAINT messages_pkey;
       public            postgres    false    227            .           2606    16888 F   messages_sujets__sujets_messages messages_sujets__sujets_messages_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.messages_sujets__sujets_messages
    ADD CONSTRAINT messages_sujets__sujets_messages_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.messages_sujets__sujets_messages DROP CONSTRAINT messages_sujets__sujets_messages_pkey;
       public            postgres    false    233                       2606    16742 6   strapi_administrator strapi_administrator_email_unique 
   CONSTRAINT     r   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);
 `   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_email_unique;
       public            postgres    false    211                       2606    16740 .   strapi_administrator strapi_administrator_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.strapi_administrator DROP CONSTRAINT strapi_administrator_pkey;
       public            postgres    false    211                       2606    16712 (   strapi_permission strapi_permission_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_permission DROP CONSTRAINT strapi_permission_pkey;
       public            postgres    false    207                       2606    16729 #   strapi_role strapi_role_code_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_code_unique;
       public            postgres    false    209            
           2606    16727 #   strapi_role strapi_role_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_name_unique;
       public            postgres    false    209                       2606    16725    strapi_role strapi_role_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.strapi_role DROP CONSTRAINT strapi_role_pkey;
       public            postgres    false    209                       2606    16750 *   strapi_users_roles strapi_users_roles_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.strapi_users_roles DROP CONSTRAINT strapi_users_roles_pkey;
       public            postgres    false    213                       2606    16699 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    205            ,           2606    16880 (   sujets__user_crea sujets__user_crea_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.sujets__user_crea
    ADD CONSTRAINT sujets__user_crea_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.sujets__user_crea DROP CONSTRAINT sujets__user_crea_pkey;
       public            postgres    false    231            "           2606    16852    sujets sujets_id_sujet_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.sujets
    ADD CONSTRAINT sujets_id_sujet_unique UNIQUE (id_sujet);
 G   ALTER TABLE ONLY public.sujets DROP CONSTRAINT sujets_id_sujet_unique;
       public            postgres    false    225            $           2606    16827    sujets sujets_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.sujets
    ADD CONSTRAINT sujets_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.sujets DROP CONSTRAINT sujets_pkey;
       public            postgres    false    225            &           2606    16864    sujets sujets_titre_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.sujets
    ADD CONSTRAINT sujets_titre_unique UNIQUE (titre);
 D   ALTER TABLE ONLY public.sujets DROP CONSTRAINT sujets_titre_unique;
       public            postgres    false    225                        2606    16813 (   upload_file_morph upload_file_morph_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.upload_file_morph DROP CONSTRAINT upload_file_morph_pkey;
       public            postgres    false    223                       2606    16802    upload_file upload_file_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.upload_file DROP CONSTRAINT upload_file_pkey;
       public            postgres    false    221                       2606    16761 >   users-permissions_permission users-permissions_permission_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);
 l   ALTER TABLE ONLY public."users-permissions_permission" DROP CONSTRAINT "users-permissions_permission_pkey";
       public            postgres    false    215                       2606    16772 2   users-permissions_role users-permissions_role_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_pkey";
       public            postgres    false    217                       2606    16774 9   users-permissions_role users-permissions_role_type_unique 
   CONSTRAINT     x   ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);
 g   ALTER TABLE ONLY public."users-permissions_role" DROP CONSTRAINT "users-permissions_role_type_unique";
       public            postgres    false    217                       2606    16787 2   users-permissions_user users-permissions_user_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_pkey";
       public            postgres    false    219                       2606    16789 =   users-permissions_user users-permissions_user_username_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);
 k   ALTER TABLE ONLY public."users-permissions_user" DROP CONSTRAINT "users-permissions_user_username_unique";
       public            postgres    false    219            �   �  x��ko�6�s�+����ll'M[#�]^E��%F�\q����e��T�Z�-�߸�w���)��܇�G�%gFC�S����2Op:I�lR���$�K|����[D5I�����8OSS�g/�3(>:ѣ$����Q�%��KR�l(�:�rqQ�	�,qEѲ`W3�V�#JK2�)��R ^X�F�9G�Bi�������&�lE�<[⌂�́�WW���{��޽`?���dX���d��I]ᲺS�rI��?ژ�1]I׃�(�s�%B�z���[�+��D3�(KN�iJ��Z�gM�Fq���Q��.}�R��$ߖ�A�$�s��)�r���ȯ|�hYc��ٌ��MSl�(�5)q"���-I-����� WQ�+�0	��TUy�X3̭ �����%�0=U(��s�2�@��ݰL�~�i��eb3�P�R3��4���0�y*��P46_\3�'H+��:iJ��<���+M1�P�V�K`%���
2��A:���.����L��L���X -��Z �,�M;l,������������aŌ:8�qIB�ѓ�}@�|�y2T۱K~j8�N����������lq�$5fG��Y��h���DiK�RU�^963�z�a7���')i��ƥX��@�-�� ���}�4��D&;����9;8�ko�Nߐg��܂1Awm۰���*C��$��<��Ro��R��Ô�qk��l3�Rn�X6���p>lsneڻ�z�o�Lr���t�C��rH}��3,�c���y����-�w�¼De�erBc:�~ �8��q����w�b��`�~ZCȒC�~�0�-���(M�(>gWwQMw�]3��cN�i,��(�]F:o���ŘY��4ȝ����I/z�L��<����w�W �d%�:��.�iQ	LT��D�~���4,I\�U>�=<\0��_T�L��|��V&�>� �����������W��3S�c�C��	�dft>�(�a��?�os�΃ɮ��d.�x�F�`�Ƌ·<�im��d�8!Y$�=d����b-j�r'��$%�*�S��3B��P���i�3�ly96��8_B�*b=��#��l��!��ߺ}td�{��(�T�R��yѢ"��,RX�ߑt�Ү�g-��'+���.�r��}h�	6�Wy�cM�����d�24g��x(�ތ�(�Ei:�&HRr�E?��s��$������w*��xa�)K��#�����+&�N99�R���뼤�/;^���=z���%��9m$�"��%�A��+aS4���$�8�����Ir2��QÒs�����E�J�DT�
�dQ�3�C8d{�����jh�!L��W�?ȑ!X4�m��hX��̉F>��|Ҍ���>�_�Ͷ9�kl���*�H� ���-`� ��e�XW�Y/_�V�`�M3:����r�2�eQX"{+Kw�rVFa���Er�
�H���� �~k���0���P�V��r�L�������Mo \�yo'��W�Ώ����Z|��j�7��ξ��BdTi�7��0�)�!��*8m�Z�Cp���Y��+�q�>aFʊv9M1̕�JWm�O���^BY6�	\��!č��>N��ط��3�ԭ�����<E�w�����h�w�h�Q���Qv߭u�]�okh������Ӌ{�)���9�Qy�����Oy�M5���3U��?�s{�*ϡ5g��Ϥ�<�O�d��T�PC��	{�9���9�?Dh�g�<�x�g��Ozl�-�A��H:
{��*ၙuJ���c54�d�;�7��McnuW.�566?���CNm�ho���C���D��X|5��kC����i�*z�о�*@�(�p!�)�ќ�Z9}򡭞g��}�BV��OK�a=:Pe�A�y���N~y��$z3���7s�̋��� ��F�?� =�MY����joT�Vx���V!���Էq�i WR���S���$���)q��'WF��]���N|��z��X�__�u˟Bb�wOxJalT��(�t���Y�z�fy���3˵]�sM3<t-����������g��� �j,�7��M놡B޺�	~��-�a^Bd6x8+|bʰ�V?�b�'�޼9߈���9�b]�mq��{��pl��6��ov���Y�1?��w��M��Q�ڈ�9C��ƿ��j�-�A��� �:kO�p��w�$��ş��j�!�-0�/�u�Q���At`%��|^rX���P,P.��� B����4X����ς5xI`��2�iT��>��F����8(�*���M9L�-�%�xE�����ft�\�F�a���nVP���1� ɹM%���I�+54��"���D�G�W�ؼ�6A�[��ݨ���	�<:��	m��YS@_�,�G���N6���)+�L .�2����O�j�;����o�{7�ԗ厢�8��	�ؖ噜��)^|�[��{��2�#��ɬ�����G��95:ENMf��P~��Ez�7yj|L���|d�'��P��ʒ��n����%�l�a���x�`Z����ӄQ�W����XfZ^�Д)� ������w�2��p<fw�<���KG�ѿ�e#&L6�fy��,��o�G4		�tNV���ߍ޼z>��������볗���qh�-Pv^���Ȕ�'v5�w� p�V��V[��\�Gq���sVN<�X1��#y��^3���X��2W��ݑ�<:M1b��$>���&֊���b��tV��P�ғ�O��/��u�=SP�BY�^��s���%G|CM�c�,�vb���Y���4��R7P�L#�1�]3e�����Ou�j���"� �ɉZ�j�1�~�h�d�6X�f�6Y"9��?�k`?��A�r�n��8/��j�T�xA�G��1�A�8M���H�����@�{m�0���c�7IR�u�$[�93�7�U{֢)f-�$M@e=?%ˎ�LV��y�X:>�R-�
c��V�Rf$P���U'Jh�������mA�D��h_�S5���9<�s|tvttrx�~Ƈ�����մ_
"ץ�F=�����jkS�.�FQ7S�{@o���4]}j���yj��gmwM��lX7Y��N���j���}�æ[:�V�k����O���|�6��߾�[�g�]{5�|�A��7�����t�������n��__?��@�{���~m�s�|o��?�Tr+L���4�x��:�uMr Ltwk�o~;��W[�Oox�u�;�Y����v=��Owց$���I���k9��L�,�?�14�8������g� �(�+����{�����{yڑ�����HɠW��\`W�VR�b�Ǉ96�R�9�Ѿ�JZ�\�+g�
�v*V�z��������s^�|6�?�緜�}X�p`�������%�ٷ���ֹ��	��',Ƙ���oeN��H�M��J��m#Y�>ۑ�gptu�d�����	ڐ�{�%�m�w�z��s�#dM��N*�HG���.�'��o��y�r��!�7�p��W10ȗ�
s�wğn�o��P�/�9��D�"i�=�w�����nO��5t��N�o���$`�I U֨������D�K�M���F�$��������r�      �   	  x��XMsI=ۿ�:h�f�S�B�Zk1�ݵ"@�DNw�L��VU�`�č��� m�.7���Kx��#i$�ĲW²4�U�U�^�ˬ?8y�?��h�7j89������G���wgt2���S�o��x�V���������Nsr&��p��喑��xx8���O��>�����������?NC��;���������wQ��	=u�KF�=�J�FE��ғ͵�L�Y��W��C��kZ�:(�ɝ���SP��W�`IP�T��,bY�j��R�.�X����������!*<i�6���m�VU��P8�Ѿ�ݲ2��.չ�>����֨S��]]U������L�'v��a�@K���)��=W��іw͜�<Ξ�#���h�,�a�w�7��!�:��լ�*��RL�Q�s����Qؽ־Й�ǂ?�=e?����b���ܣ_.�{�4��{+W�a��^���c]:����<�yx>�O���b8��||b�ߑ
.��8��վ� u�*(6*�۴�KJq�F�&���0)���@	L�f��0^�,EDxdx��G������R�N����r�^�e�3�u`LlA��	��,�?�kmð��P�>Қ�X(�nj��G�n6�����pA�)9rU�~�`ltU���5X����$Ta�
�_�L��K���H�����k���{��p�I��Hu�K�����c�Z�����y�I1;T�7�N
֯��!���s�� �;�~B4G����d
Q�'�2<���g�h6Ds<�?�vr���޼|��ً璀>"�����N�]��v�9O��4OS惃
�g��._:/�v�������ȕ�Z�֚��������D{�%�b 5e�����5�{��1�~g{�J�@��fE����(>"oɥ,��gf��:�ȿ�B��F,5�9�L���ie��^")��E��^�5���ނ)R��7bQ��L��s���WL|�]a(k;�7U��!	�%�a�C��@�e��#`J���S{|��p*�$�C�������|�X��;���L�{p��sq5������h/���!���]ZX��Ay@ջ�LإdP8U�������	d��c�����I`�{�P�H�N�m�,�x�|�KɞN	��W�E�D6ߥ��4m/�"5�*A|��`�8�����J��b-Z�v͈�X���@��"��?��,�����E�)��@e"�yߧ���K��E__$k�=c('��,".8��g�l 4��mN�{/���(։f���y��_����܈)F�T��k����Y�n-;=�xť%cN��Z�T��1��8e6�@>�厬��"�5�D¢q����+&���\ś+
�o�A��`b�����q7lva*O`!Frj�?;�k$P�hL!����f���1؍���y8�G�z�ZP��/��ER\F~6;�t4Q���Q��G][e���9���v��=�I�� 6��,$H*���9��;3�z�p+���$�Ex�OIk�9Bv��
PsHsR@��`�������Jí	B }I{��sKc�\Y�ŋ�d�gI @_˩��u��k��3=(��!�X�O���gkp>�L�|�eف�{�Ea� ;�_0�ن��]�8������	s���f4ܨ97!u�~ۤd>�2"�cW���eYԲ�����XC�<���ڇ�;�a���y�o�x�9q:;D�U&%hF�u��G�)2:A�.Q�*��L�$LR9�+��鈺�ի���l��}�:�����r����&%?RG+\��%��F
ӣC�e|j�j|ҟ�4֤��7w"���VX�����x��,^�Hm��aˑ �DCP�7
!��?���2zwi�4��,�.���o�n��zW��D��(E�Ċر��X�G��oy��j�iFOn�v�iE`����ۏ�����`ö��Wr�{������Ο����'��z���=�[�罓7s�����,���6��s��\�Jn�Y��\� :���6�?�"�z�+�Y���[��Ԧ�z4�n��-�8�V#�9��}�#Ϳ�tj�}�M��-~���\��{�M|�:�s:������Ow��t׉�=׉��`�p0�O�}��WD�n_(n����Q�h��ֈ-��񽫒֒��I������2�:�k/�y�+ɰ��9.J�.]Gн�ry�ܫ�R�]���R{�����9��E��>]� ��=P:���R��b�+	E�]o�l8���n�w9�:���z8<�WV���M8�zk��@��>|�
-j�      �   "   x�3�4�4�2�4�Ɯ&�F\&��@2F��� 4�y      �   "   x�3�4�4�2�4�Ɯ&�f\&��@2F��� 4�}      �   v   x�3�,�L.�/�L�,J��,J����Z:��&f��%��r�%���F$���:�X�f�{fV�����Fd���'�g���d��D�%�f{��� ����� �H&A      �   �  x�ݘ�r�0��������A�!:��]��Pj�I���N�`��t�{�������T����&��J�$sk�d��/�u}���a�x���
���1�(d�<4y�!�nm�H7i�6n��[���M���K�S�~&�J����!Y=;"/�g#����%Y��q�7��Y�n7dZ��VT`P!t�m�`�&�$�f�T3<	�"�wB���WH*˖��S$er�k��R�Z]�jM��Ʃx]�M��REZ���2)���ՎI.�EU��<㵹V<�:��5W�|��=/��2�G^I�t�r�;!�}YK��$*���]54�����ߔ��=x?Tѿ�?���)�����Ֆ�cK��;w].�C���j�|�_%ap�_M �y;��	�Nh�k�����F�h��M7
-�F�b�a�m6�#��^핪�����cΟ���cal� �t�T
�S�:V­)x�ϴ�T�,�ȟX�<ˮ=�O�?�~t���,�@IY��$��� Xi/��e����A����X��C�@#����\�9�Y����P4���Y#J�yJ!�&�S ��Q��1)S�9'5�Y�Y�	=�zo{���GER�y���r�O֜9hSڃ��z����s����,$:���݃�{h�%����'IC�`Y�z#aX��b�FҰ^J"�cE�4>H�Z��9
�tɱ.(�3���=�wQ�?���vI��(Oy| �rڣeM��X�e��X[f9S���Iٱ.0�s�&���B�T��S��U��7��U�.Ծ:�u�������O�z@'��l��j1��1�b���J��V`"�&6��!c�(}��.>��QN�Zlr�Đ�G�p���$��^l8}{Ǟ�z�o���xTݝț�w�¬F~�2�ɳBcB]D&���-j����,�%21S�x^�wm��ܚ�f@9�}f��ƻڼT��|S��Z}�n���M	s�      �   �   x�}�1n�0Eg����A�=A�.����� �}�.������'�Q�p��K�%t����W��0:G̀��#^	p��B(%S�L"!^�Wv��Lgs�N����e0�Dڪw$�͇��`�تk�R������0���� Ȕ� ] �T_Q���8�J=#��Υ���¶5�G�vm2���	���E�w���k�?{��7��}      �      x�3�4�4����� �X      �      x������ � �      �   �   x�u�M� F�p
��df�-���%�.�i���Q
m�o������|## l ���s,�	=� �J�J)�a�T))�P�A�u�q��]�~�!��+��ʊ�!�]�j�
-�,�m2vӳ��kƺ][���������$����.�SY�}�?��������Ɏ���76�k�      �      x�3�4�4�2�4�4�2� �1z\\\ "�      �   ?  x����n�0���)*�[\��%渇��e���eHR%A�]m�w_Z�86���>'?� h�m�|��f7���m�*ǯ�!DӔ P����2�"��ާ��7�>u1�Ǉi����S���&�=����vUue���&jIS�-S���2���Jr	uY�]L�����&ߗi���N�E.rc��6mU٫]���QB0{�����@q���b��J�?\xm�*ă}`�AI�t��x fi�q� c�9P�Y��!"c=�7�['����cC"�l�*u6���zј2�f8ǚ�8��E�(K�q�2�u���@#D{�����+����I֠�ߨZ/M�>�}QBaF`F����9����X��.M(�E �r)\�ܱ(p$U2���ú�z�q�e�\.�1�rC�x�����1�)x�&�A��>�%X�?<�e���J� ��M�A���I���`rEh��A��e�x�|<%S����S~�'�OC[B�ǿC&A�����ǈ�,ypB��H�K���_Ek��F7����&3��G�ޖ���Ƅ���<���U^K#\-2��ߖ�f�l\��Sc8��ٛ��N�V�Cyw�?��T���%�.�V"Ӄ�x�C@%�\
����n5*�BL�p�q���u���.P1�Ir�m�{���`I.z��(w��hQ�vU����jm;c��-(JP�n}}(�]A��D�/��|�$��="�T�8�v����i7\�hB�#�2�ka�5����3���b�=��1*�i��%EͲ1.��x.�D�c��u/f;E�:��/�؜��$8�%��K���g<�L�Cw      �      x������ � �      �   �  x��Y�r�:}N��g0��'��
n�.�K���o�l�vzf:mC�$Y^�%#NU�Ͳ�_oeW^�>�����^��AN�����e+gyz?���׿��%~?��X�����g@���rו?�-~�{�զ�s8d�r	��Z�����Ƅ�ÆQ~5���{�my�fB�H�� ?�2,om3} ��1``-�3KG���� �,Cm���F�-�A�A�|7o$��J.�!(�):����)n�:�b�O8�Gq�8���T���b��Y������Ÿg�G�-����e��&x�?	E��T��ӨLVO\J� ����t�V�#��|O\�y�`��B�'`��A��A��%)�]� y��.8�n%u�AȺ���σ��˃��OՇ�>�?�Wٴ�[�6�7����\�aW�IE~y��4��>!��f�oK��
����y���dݕ7\:���X�{����*_��� _P@���h�6S�k�u3���?�~${��ȃ�'h��yя ����6�A��Df(x �>b(b~������>�9������,únk=�돦m�aGh��2��-v��#d�e�O��2�а3���%�O����а��r�`�w�A�eG(X���>�@-�zh���m_���ZN�أJz��3�ǌ hHk0�؞l~Or�U��}�ڵڔEuXN��o�4��S.�ǩ*����>�tꕞ��Q%_9mSm����P)�0�f�`�/��r_
<�N� C��]�Q��E��(��4+�̱[P��'&�������`+9c��Y=	�\z��H��*f�?|���h�夜;~�I�T_��=I�'Ea�X�T�-	�b*Eζ�I�c�z�KΒ~;sL�_
Nx]�:=�7g�[�,MDg������_e��#����9ň)ۙ�4�L�$-믲�dMm�H�\�S}�U(,x���i��I�c�������3�v3��5�[��݆�5�̥��-�S��Z2��]X�;w�B��7|�Ĝ���s���ڶ�P�����4���@T���k���,���Bk˸�Rj�+�����C9M����.�@�CḨ
.H�BTӂ�e�S�4'��v9Ҽ�[EE��Bm����$n����Yy���
oy�0'��C]KCU@�$�2y��� �c��#�8W�-��F�_���v�j|Dq:z�Oԯ���A$e����Q.�1L�l;N�2K8aO�tb�*�e��,�yM��<>���'��eVG��]���1'���]	���4ɷ_:�	���M:��$*'�+��i*���E�H�u~>R��_I�-Et(�^UZ�8���PiMhQ��鱠֘�����,�?1�f���Vv<�B���L�Ī�-{��-��ӆ�q�i�/4t������'�.��C��w��럗�����W�      �   X   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"��D\F��I9��8�)��fPDĄ=... ��3O      �   @  x�}лr�P���"�]�#���P�;��(l�i���#f&�LLfw���o����Ze��/�"rI����F)��f��2t;�u���_��qb��W��������xf����?���aS��~����̎�� ��堋� ���"*<r?U(*<%<������4�A�j5G~�7�a�	gg!��'��$��z#��e^ZA �ߠx�W@$�x��+�DB�u��\>o�Y����-+�[mu��b�X�Ik"�����XN���y��O����SK���5'�>�*x�J���
� 
mb��e�f���     