PGDMP                       {            marriage    16.0    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17057    marriage    DATABASE     �   CREATE DATABASE marriage WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE marriage;
                postgres    false            �            1259    17058 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17061    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    215            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    216            �            1259    17062    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17065    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    217            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    218            �            1259    17066    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17069    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    219            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    220            �            1259    17070 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    17075    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17078    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    223            �            1259    17079    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    224            �            1259    17080    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17083 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    225            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    226            �            1259    17084    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17090    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    228            �            1259    17091    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17094    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    229            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    230            �            1259    17095    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17100    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    231            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    232            �            1259    17101    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17106    marriage_contact    TABLE     �   CREATE TABLE public.marriage_contact (
    id bigint NOT NULL,
    "Name" character varying(500) NOT NULL,
    "Email" character varying(500) NOT NULL,
    "Message" text NOT NULL,
    "Number" character varying(20) NOT NULL
);
 $   DROP TABLE public.marriage_contact;
       public         heap    postgres    false            �            1259    17111    marriage_contact_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marriage_contact_id_seq;
       public          postgres    false    234            �           0    0    marriage_contact_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marriage_contact_id_seq OWNED BY public.marriage_contact.id;
          public          postgres    false    235            �            1259    17112    marriage_gallery    TABLE       CREATE TABLE public.marriage_gallery (
    id bigint NOT NULL,
    "EventID" integer NOT NULL,
    "EventName" character varying(255) NOT NULL,
    "EventDesc" text NOT NULL,
    "DisplayImage" character varying(100) NOT NULL,
    "HeaderImage" character varying(100) NOT NULL
);
 $   DROP TABLE public.marriage_gallery;
       public         heap    postgres    false            �            1259    17117    marriage_gallery2    TABLE     �   CREATE TABLE public.marriage_gallery2 (
    id bigint NOT NULL,
    "EventID" integer NOT NULL,
    "Image" character varying(100) NOT NULL,
    "InPortfolio" character varying(1) NOT NULL
);
 %   DROP TABLE public.marriage_gallery2;
       public         heap    postgres    false            �            1259    17120    marriage_gallery_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_gallery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marriage_gallery_id_seq;
       public          postgres    false    236            �           0    0    marriage_gallery_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marriage_gallery_id_seq OWNED BY public.marriage_gallery.id;
          public          postgres    false    238            �            1259    17121    marriage_galllery2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_galllery2_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.marriage_galllery2_id_seq;
       public          postgres    false    237            �           0    0    marriage_galllery2_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public.marriage_galllery2_id_seq OWNED BY public.marriage_gallery2.id;
          public          postgres    false    239            �            1259    17122    marriage_masterimagetable    TABLE     �   CREATE TABLE public.marriage_masterimagetable (
    id bigint NOT NULL,
    "PageName" text NOT NULL,
    "Image" character varying(100) NOT NULL,
    "ImagePosition" text NOT NULL
);
 -   DROP TABLE public.marriage_masterimagetable;
       public         heap    postgres    false            �            1259    17127     marriage_masterimagetable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_masterimagetable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.marriage_masterimagetable_id_seq;
       public          postgres    false    240            �           0    0     marriage_masterimagetable_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.marriage_masterimagetable_id_seq OWNED BY public.marriage_masterimagetable.id;
          public          postgres    false    241            �            1259    17128    marriage_mastervideotable    TABLE     �   CREATE TABLE public.marriage_mastervideotable (
    id bigint NOT NULL,
    "PageName" text NOT NULL,
    "Video" character varying(100) NOT NULL,
    "VideoPosition" text NOT NULL
);
 -   DROP TABLE public.marriage_mastervideotable;
       public         heap    postgres    false            �            1259    17133     marriage_mastervideotable_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_mastervideotable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.marriage_mastervideotable_id_seq;
       public          postgres    false    242            �           0    0     marriage_mastervideotable_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.marriage_mastervideotable_id_seq OWNED BY public.marriage_mastervideotable.id;
          public          postgres    false    243            �            1259    17134    marriage_services    TABLE     A  CREATE TABLE public.marriage_services (
    id bigint NOT NULL,
    "ServiceID" integer NOT NULL,
    "ServiceName" character varying(255) NOT NULL,
    "ServiceDesc" text NOT NULL,
    "ServiceOneLiner" text NOT NULL,
    "HeaderImage" character varying(100) NOT NULL,
    "LogoImage" character varying(100) NOT NULL
);
 %   DROP TABLE public.marriage_services;
       public         heap    postgres    false            �            1259    17139    marriage_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_services_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.marriage_services_id_seq;
       public          postgres    false    244            �           0    0    marriage_services_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.marriage_services_id_seq OWNED BY public.marriage_services.id;
          public          postgres    false    245            �            1259    17140    marriage_stories    TABLE     �  CREATE TABLE public.marriage_stories (
    id bigint NOT NULL,
    "ClientNames" character varying(255) NOT NULL,
    "StoryName" character varying(255) NOT NULL,
    "Date" date NOT NULL,
    "Location" character varying(155) NOT NULL,
    "LogoImage" character varying(100) NOT NULL,
    "StoryID" integer NOT NULL,
    "StoryContent" text NOT NULL,
    "HeaderImage" character varying(100) NOT NULL
);
 $   DROP TABLE public.marriage_stories;
       public         heap    postgres    false            �            1259    17145    marriage_stories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_stories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.marriage_stories_id_seq;
       public          postgres    false    246            �           0    0    marriage_stories_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.marriage_stories_id_seq OWNED BY public.marriage_stories.id;
          public          postgres    false    247            �            1259    17146    marriage_testimonials    TABLE     %  CREATE TABLE public.marriage_testimonials (
    id bigint NOT NULL,
    "TestimonialID" integer NOT NULL,
    "ClientNames" character varying(255) NOT NULL,
    "ClientReview" text NOT NULL,
    "LogoImage" character varying(100) NOT NULL,
    "ServiceType" character varying(255) NOT NULL
);
 )   DROP TABLE public.marriage_testimonials;
       public         heap    postgres    false            �            1259    17151    marriage_testimonials_id_seq    SEQUENCE     �   CREATE SEQUENCE public.marriage_testimonials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.marriage_testimonials_id_seq;
       public          postgres    false    248            �           0    0    marriage_testimonials_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.marriage_testimonials_id_seq OWNED BY public.marriage_testimonials.id;
          public          postgres    false    249            �           2604    17152    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    17153    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    17154    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17155    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    221            �           2604    17156    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    17157    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    17158    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    17159    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    17160    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    17161    marriage_contact id    DEFAULT     z   ALTER TABLE ONLY public.marriage_contact ALTER COLUMN id SET DEFAULT nextval('public.marriage_contact_id_seq'::regclass);
 B   ALTER TABLE public.marriage_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    17162    marriage_gallery id    DEFAULT     z   ALTER TABLE ONLY public.marriage_gallery ALTER COLUMN id SET DEFAULT nextval('public.marriage_gallery_id_seq'::regclass);
 B   ALTER TABLE public.marriage_gallery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    236            �           2604    17163    marriage_gallery2 id    DEFAULT     }   ALTER TABLE ONLY public.marriage_gallery2 ALTER COLUMN id SET DEFAULT nextval('public.marriage_galllery2_id_seq'::regclass);
 C   ALTER TABLE public.marriage_gallery2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    237            �           2604    17164    marriage_masterimagetable id    DEFAULT     �   ALTER TABLE ONLY public.marriage_masterimagetable ALTER COLUMN id SET DEFAULT nextval('public.marriage_masterimagetable_id_seq'::regclass);
 K   ALTER TABLE public.marriage_masterimagetable ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    17165    marriage_mastervideotable id    DEFAULT     �   ALTER TABLE ONLY public.marriage_mastervideotable ALTER COLUMN id SET DEFAULT nextval('public.marriage_mastervideotable_id_seq'::regclass);
 K   ALTER TABLE public.marriage_mastervideotable ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    17166    marriage_services id    DEFAULT     |   ALTER TABLE ONLY public.marriage_services ALTER COLUMN id SET DEFAULT nextval('public.marriage_services_id_seq'::regclass);
 C   ALTER TABLE public.marriage_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    17167    marriage_stories id    DEFAULT     z   ALTER TABLE ONLY public.marriage_stories ALTER COLUMN id SET DEFAULT nextval('public.marriage_stories_id_seq'::regclass);
 B   ALTER TABLE public.marriage_stories ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            �           2604    17168    marriage_testimonials id    DEFAULT     �   ALTER TABLE ONLY public.marriage_testimonials ALTER COLUMN id SET DEFAULT nextval('public.marriage_testimonials_id_seq'::regclass);
 G   ALTER TABLE public.marriage_testimonials ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    248            �          0    17058 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    215   Y�       �          0    17062    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    217   v�       �          0    17066    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    219   ��       �          0    17070 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    221   ��       �          0    17075    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ��       �          0    17080    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    225   ��       �          0    17084    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   �       �          0    17091    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    229   ��       �          0    17095    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    231   ��       �          0    17101    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    233   L�       �          0    17106    marriage_contact 
   TABLE DATA           T   COPY public.marriage_contact (id, "Name", "Email", "Message", "Number") FROM stdin;
    public          postgres    false    234   ��       �          0    17112    marriage_gallery 
   TABLE DATA           r   COPY public.marriage_gallery (id, "EventID", "EventName", "EventDesc", "DisplayImage", "HeaderImage") FROM stdin;
    public          postgres    false    236   Y�       �          0    17117    marriage_gallery2 
   TABLE DATA           R   COPY public.marriage_gallery2 (id, "EventID", "Image", "InPortfolio") FROM stdin;
    public          postgres    false    237    �       �          0    17122    marriage_masterimagetable 
   TABLE DATA           ]   COPY public.marriage_masterimagetable (id, "PageName", "Image", "ImagePosition") FROM stdin;
    public          postgres    false    240   %�       �          0    17128    marriage_mastervideotable 
   TABLE DATA           ]   COPY public.marriage_mastervideotable (id, "PageName", "Video", "VideoPosition") FROM stdin;
    public          postgres    false    242   ��       �          0    17134    marriage_services 
   TABLE DATA           �   COPY public.marriage_services (id, "ServiceID", "ServiceName", "ServiceDesc", "ServiceOneLiner", "HeaderImage", "LogoImage") FROM stdin;
    public          postgres    false    244   ��       �          0    17140    marriage_stories 
   TABLE DATA           �   COPY public.marriage_stories (id, "ClientNames", "StoryName", "Date", "Location", "LogoImage", "StoryID", "StoryContent", "HeaderImage") FROM stdin;
    public          postgres    false    246   ��       �          0    17146    marriage_testimonials 
   TABLE DATA              COPY public.marriage_testimonials (id, "TestimonialID", "ClientNames", "ClientReview", "LogoImage", "ServiceType") FROM stdin;
    public          postgres    false    248   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    216            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    218            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    220            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    223            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 93, true);
          public          postgres    false    228            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    230            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);
          public          postgres    false    232            �           0    0    marriage_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marriage_contact_id_seq', 5, true);
          public          postgres    false    235            �           0    0    marriage_gallery_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marriage_gallery_id_seq', 3, true);
          public          postgres    false    238            �           0    0    marriage_galllery2_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.marriage_galllery2_id_seq', 12, true);
          public          postgres    false    239            �           0    0     marriage_masterimagetable_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.marriage_masterimagetable_id_seq', 20, true);
          public          postgres    false    241            �           0    0     marriage_mastervideotable_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.marriage_mastervideotable_id_seq', 1, true);
          public          postgres    false    243            �           0    0    marriage_services_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.marriage_services_id_seq', 6, true);
          public          postgres    false    245            �           0    0    marriage_stories_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.marriage_stories_id_seq', 5, true);
          public          postgres    false    247            �           0    0    marriage_testimonials_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.marriage_testimonials_id_seq', 7, true);
          public          postgres    false    249            �           2606    17170    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    215            �           2606    17172 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    217    217            �           2606    17174 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    217            �           2606    17176    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    215            �           2606    17178 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    219    219            �           2606    17180 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    219            �           2606    17182 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    17184 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    17186    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    221            �           2606    17188 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    225            �           2606    17190 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    225    225            �           2606    17192     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    221            �           2606    17194 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227            �           2606    17196 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    229    229            �           2606    17198 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    229            �           2606    17200 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    231            �           2606    17202 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    233            �           2606    17204 &   marriage_contact marriage_contact_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marriage_contact
    ADD CONSTRAINT marriage_contact_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marriage_contact DROP CONSTRAINT marriage_contact_pkey;
       public            postgres    false    234            �           2606    17206 &   marriage_gallery marriage_gallery_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marriage_gallery
    ADD CONSTRAINT marriage_gallery_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marriage_gallery DROP CONSTRAINT marriage_gallery_pkey;
       public            postgres    false    236            �           2606    17208 )   marriage_gallery2 marriage_galllery2_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.marriage_gallery2
    ADD CONSTRAINT marriage_galllery2_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.marriage_gallery2 DROP CONSTRAINT marriage_galllery2_pkey;
       public            postgres    false    237            �           2606    17210 8   marriage_masterimagetable marriage_masterimagetable_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.marriage_masterimagetable
    ADD CONSTRAINT marriage_masterimagetable_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.marriage_masterimagetable DROP CONSTRAINT marriage_masterimagetable_pkey;
       public            postgres    false    240            �           2606    17212 8   marriage_mastervideotable marriage_mastervideotable_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.marriage_mastervideotable
    ADD CONSTRAINT marriage_mastervideotable_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.marriage_mastervideotable DROP CONSTRAINT marriage_mastervideotable_pkey;
       public            postgres    false    242            �           2606    17214 (   marriage_services marriage_services_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.marriage_services
    ADD CONSTRAINT marriage_services_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.marriage_services DROP CONSTRAINT marriage_services_pkey;
       public            postgres    false    244            �           2606    17216 &   marriage_stories marriage_stories_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.marriage_stories
    ADD CONSTRAINT marriage_stories_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.marriage_stories DROP CONSTRAINT marriage_stories_pkey;
       public            postgres    false    246            �           2606    17218 0   marriage_testimonials marriage_testimonials_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.marriage_testimonials
    ADD CONSTRAINT marriage_testimonials_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.marriage_testimonials DROP CONSTRAINT marriage_testimonials_pkey;
       public            postgres    false    248            �           1259    17219    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    215            �           1259    17220 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    217            �           1259    17221 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    217            �           1259    17222 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    219            �           1259    17223 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    17224 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    17225 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    225            �           1259    17226 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    225            �           1259    17227     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    221            �           1259    17228 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            �           1259    17229 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            �           1259    17230 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    233            �           1259    17231 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    233            �           2606    17232 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    4805    217    219            �           2606    17237 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    217    4794    215            �           2606    17242 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    229    4830    219            �           2606    17247 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    222    4794            �           2606    17252 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    221    4807    222            �           2606    17257 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    225    4805    219            �           2606    17262 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    221    4807    225            �           2606    17267 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    229    4830    227            �           2606    17272 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    4807    221    227            �      x������ � �      �      x������ � �      �   >  x�m�A�� E�p
�����I�s��F�e,9vd�3��.
�E��J~>`ԯ~��ۭ����e��ᑮi������0�����݆T�H�%�5����D��fu�k��Uդ��C�X(q'4��w�N@�Tb.�j���M�
#m>�Tb�SČpJXT�XJ	
Fi��8�+7m������4�Ƣb�����d�LvY9���)�=���u�'Ւ^��挂�dC�/�(`���̚%OMN�2?U���ֵ�>���D枑���`���9��>o�D�O]���*> "��� ��e�tX̩���淮�~�N�ɀ��݈x0	^���O���&]�6pC�m������L�k���t=0���!��i�ܺ�y�qU�RؽpN7"�%Ί�B侬`[Qa!�%O�6"�uSƤ���u����ה���8qV�6Si��ɧ�_�Z�ߥZ[q<�o�'�9AR�O����Q��'�ѯ�[�������N��6�Z�y݊St\����D�r/�p��+�������5���,tI\e�,
E�X�tYԊ.��{벨�.������?��      �   �  x�m�[��0���Wx��{���L����03��M60UPPd��o�k�M{����-v���ѯ}h#BED_b���1����aډ���]����Ym8pi4�8ݦ�3?5Z������h5�R�!v� \���`@*A ����p�܍�pٝ�N\;����;?�؎6��6���,��X�,(J1Q/Y���D�L?�}�Z��4�t���$�jE ������Q�8-�U�����|�\+>-�7X�r!��!Ue���G�v�s�r;rr>�8'}7TM���(c�j��[|�F��.N�4~�
��]�6}���\�m51�cD[�{��AK�z]1Ұ�{���ǂ�-x�D��$w��v��C��?�m��`_�+�s؉<F����i�P�2O�� ��u����-�� V���mg��ǉaM���* �o� 	S�U�>��'���P���?�J��ǁ      �      x������ � �      �      x������ � �      �   �  x����k$7ǟ�����BX��)�_��ȅ@B^ry��'�9�;�6��_��Q���=���a��竖��U���H�"��r2�����G�����w��o����w����������777ۛ��꯿���/�=N��S.���9�p4�	�"Dp��GK8��4���s/�����Hhں�����Α��Ӹ��2ʴs��ݸJK�&�ڲ`�i���o��������A4��a{�������ܞxZ�?�,����x������ͧ���_w�ۛ{���o��_�|�^����G5~�
�`RB���I�ks{������+<�֞���h:*��ՈC�K�P��_�X^�K�9���c��~}xb�#�=0��r��-�f�n8=e$	WW�v�_�n����v�:�QK�ZL!	���ߠ��Z�WfW��z�o��^�`a�D���fZ]7{�9�NY�~yX�́�D�umCB�T��:�2�'�)%�5>����O���$�ĠYq
î	���z�gJ�F�܁��~P�C�ϳ�v�@�C�>B�Aٌ�F@��P�x�h���@Ĭ'��QR�`����y 2:����?l�Fw�a������҅�cr&�qw�ݿ�\�����������TWLс���A�s��Ep?�F08��A1�Q�����g`��K�¥9�"�� #����zIkB�B���,r�F2r�q��-��2�(�H�}C�����XG�^^-Gmͨ�^��f�T�!��Z^~���Dc�`f>l|Y�ep��TWD�7?X��.m�x��d��!a�B�=��G[�X�J񨬯�:,';�G� 9d��rV��ӝq�� W�\�^��;,'<�%T�fD�nBI�~6Iu}���ϒ�~Z޴qV�-�e�&�DՃ������z���5L�4w��d�e�4'ۄ!�D[�Z�lXNm�];��P	�4Ϙ�P}�xv�m�g;;�'���1��q�de*2���.��#�HB�!N���|y���4@	��w�����1K�g��U�R��?�<�_�b�! �t�����Z6�s���ڮ����9u��ԐV ��t:���Η���o7��*��T�G�VۅT��ִ��nn���Qj���:�J�k�Cg�*N��-�8��b���r����Z��RR�-�V
>.|��c�U'���ѯ��^���@���wdX�l��,��)c��UjS ��%�K�#�[��l?=|��� �T�:P[H���t�u�]Nũ�Y�-r$n�t�{DSK^M�my�ĥ5�+_s�~?��k�o(3�#�_��m��bu,��{����9R�sf+��%��)�>kD�GZg�6kQ:	}�0
�)���pj���Q�S�dǄҦ�S���=J�1͏mޏ�A4�Թw�Xy�5�;0+��>c�<�MM��p<q�<A˺)r;W௭�&��T��/���ؤ����C}*�C����A�Cyơ��[�\�],��,r�j\��8��ä�~�*5�jb^m
|���!3z�T�p��;�����ǡJ��x��si%��2k<�q�J�MI�r���������_��T�p�jlMG�:5,5Sˤ��$�Cջ��2�S'{�1�K�1�a�:ݚ3�|��!�f�e���/nwֳ|�����^|ƚ��$�����W��
Z/Kh�۲u&7�V9�W�
���(���W{/}9�3k�,���ŐJ����LR�	����#�S}      �   �   x�eO��@<o?Ƹ���R�Y�샴���w���摙i�K(����d�f��d�N;͊p�Z�C��b	����'{��$�*��U	R��+�j'�\_�՘-#����~����ۺ������������75�w�'T#�T�a	|�k�<PY�� ^Rke6      �   �  x����n�0��S����,+Y.���\X'���뤱!�TTBQ�p�̜��v��0�/��  �І!�zC@ll�f���X	vLs�~��li�ß�"Ł��El�NMh�Ҍ��)�P���s�8�m�Mw�6U�Yw:�c�2�����&I�;�k�{��������N�f8���(�4���ۺƯØ֘[T�M��|����c]#�6��־=���2-f�.46Ӯ}��ƅ�%H2�2������2|�b<�P�3�v�0�!�����ԗɖ#�L^���X̞�`G���h���������]짅�1v�6�����]0ZH�����Q/L7���f���#G2�4�i3����g$���~YHh��d����}ܟvu�+#a��]Gzn�=ğ���Х?�i\�!�U����P��lz?W�Z�I�$�o�|?��k�z逪@UhL	,&\��}����-�и��`GP���$!J�ȧC�B���PE�Bu@e�y�B񙦣
8j�R���{�;���
0!JV |��4ų����;Mw��:��Py&$,�V�Oބ&=�[���p�������'�TB�L����r�ԶO�<���yVc�� +0��R����	I�^�E�W�<��{͛�EO4�������}�n�� ���      �   N  x���ɒ�:�����}!!1�0���x66DG8��y�鯳:���Zi����5���3�=�`g�)H�q��+�N������Q�W������`(�v��1Yʲ��j������Ű����+��I9:���ZW����x�o�'Vv;r��<�9����s�J����z�2y���G[�G[CƐ́�2qwLe��
X.�<GG%���ݞ=�<0�@�n���;�m�n��%��$�C#��;4t=�U+�����Q�� �Icbqȳ4���/�G�fNKg����Jo��zN�v�$��J�!;�]��K�۱��@���'Ũpܮ,��3zm��ԥ���[�fB(0o~�9ȗ��4�#������H�j�����8࿣R��Ka��~���TD�"���Z�ill�E�+M.͎�����T¿�' Z`Ђ@�'�S)����l;wN�1ޜ���!W�-G'���R�>7����Fa��^:�!^�%��}=m@1��`�~
� 	�O��?�  +�d�	��T��A�S!:�ʙ0\�Dt��yf\��T�=QXM��"�I���,��n�e�$_���N����G	���@�CG��ҟJ�呗$dLي���H���؎z�}K�>��wM�� �0D�x�'
s��$X�Y�V���w����Qb~�ㆰ@���W{�v�cU�S��0�<NM�V���=|*i͇��r���u=yv��;K�������]]�����l��� �ᥬt;�R���ù�Y��d��(+WG٤xk��6vo�陣��^��Z�im�"��͆x��뵽��-ʊ�\E�d�I!Q�t��P�]�Ͻ!�z�Va3;`P�nWpP���9s�i����>��L��~����?���O��xy�㤀���m�@�hLX>�T�Q�9J6H��[J��� (�ۇh��13���>��D>�0��ސ!�W-��n@���đS�vlO������wD����D茹�S��۶���l	M��[�z|�=���ĕ}k�Fz���p�V�lf��1G`�t�}������HvY
�48�nqǘK��Y��z/��fw�8��k����� pf��T����������Q��V�#&��o�4� w�S�ڗU����F��q\��z�Z;���,a�j���{����5-O3�׶E\�ɀF����-��h`�}G/�/��	�Vj�U��w��[�:I��5o�Wݶ�8x8��7�::�ׁ�gee<�PYۋ3�`���yfYp�N��\)����������ڗ.��1��Tv����wד���k2sFz،X"P�&��������o&��A��շJ��1le�b$�~�q�V�W����2Ԣ������`f���fJ�<��i��+�C8�m\Ψ���" ��I=���\V�u�\�=t��z���2Ѱ�]�9��\]�r�6�-�yLt�d/#�G�R���S�Fޣ�?�G���4�,+�\������1egk�n��,jwU��ɶ�n�Ud����K�b o�[���Gp�E�&\gT+���*��R�|R�0XJՀ�uW��O%H��w/a�@,f�׈���Ǐ��ڷ�      �   �   x�U���@��W1�ک���W�p,x�����/!2��4�$��#MKz��iz~������IOB(d�Ă�z�Z�|�

s=#���̹Ex\/���D	�n"�6l�M���:l�ܣ��#/�@�1Z�ʿ��`�SV��"�ʬ:�:QJ� ��K      �   �   x�M��
�0����*v�:����.��9��R4���8���y�?����B�Dpd�M'��G#���Zy�w5Sj��=`�D��-�{D��d^��1;f����K��\������Y!�=ˑhJ����i����77���&a2�2���k� ���"Κa��پջ�|oT��K|U �?�J�      �   �   x���Mo�@E���2�._p��Ng��L�����Hb~�2��+��ܓ{�gQ�޿��<(�s�d|��9w��YaY( �L�A�T���B�@�x"R��$���������9��!"�4'�U7[=�� �^����"�c	��
Ho;x�%���LM��Gٞ��1>�;���1��6�l���6�Y�6դ򇆳qi�$�e��G�H��kb(���ԴU��f��x#5Gw�M�pм9��U˨1      �   }  x�m��r�0���S��ri;mu������3� )�@h����`5:^��lv7�^�+e�i$��9��}kU&֬�퉮�c���6��'Ze�4n{.Q�l�t���Fk�Fz`�,������ '�WE���e�Ҝ)�L��Q��sn޵�i�1�3(=�V��Wh4 t[���?��^(�Ɓ�a��%=5�Á���+8���d1�C�i�1�D��wt�;Z�e���f��UL��^+a���M_���t�IA�&�^�.����I�in�"����>�B����B^�a���#
#N����}__�����M1ـ[��	aI hm��f�_D!�{������f�"*b��E�?j�Vǌ��fF��k      �   -   x�3���KI��,�LI�/�wJL�1�rL8A<0�+F��� T��      �   �  x�u�AO�@�ϛ_1���J(7�P
TDD
B�&��^{=k����_߱��큓G�}�y�5Q�ǚSXd�3X"cJ%qP�|Pkl!z��F,������A�W��![;��ʓ��\О��J����8��C9���TMխu�u�Qy�ҡ�.��x"lt�F��� #cW�MGh �I�wtj֡�N�����L}�]GЖ�Ζ�Ec�e�Q�R�B�֋��eC_hc�l.x���4�1~���e/եZh�Xb=�o`CΣka��W_8�t��D��j���G���$��p�Ї���s'�\#�φ�RW��x����,m��F�C`m���V"Kf����XR�T�{���7�/ׯ�Հ�o^����Nz⵼�2���'#�'9����8M�.�)׎����ͪ�/�&O�i�\�\�U����}<�� ���b      �   �  x���n�@���)��;(��e~�(M����DQ%�2\`쁡3�߾ΦRy����9���=�s��X������Hi;���N臁�n;OX㠜�3��ɡ�����c�z��v"gK�����ד?�ĹT�����n��� �|�Dn`9������ �Vi�a�+L|�J�2���"� �5��y��.��]��#z%G^��`�=���T h$�Mj� ����	%���:M�QǨC��V/9C3M$0�������UR�d��r:�*�.^G���3�J=��m*RD{�b)&ۖ�wHI�֤&��SR�H�\v�x��1r==�7g�W��ߝ��si��u3,u��C[ �,�q�YRPfE��j�YE��,�1���[�r��s]n�����u�Iֻ1��5�޳���:��Y��ў=c1[��ϫ*
eU����[1f�����/o�X�E,[C      �   �   x�M��N�0�g�)�5iBI;��R?�1!U�8��(���4T��	������r���4����
} %�O�``�l�Ic��E�.t+zs���D��DD��(,��"R2�3h�7*>P�$�}�*���KV��z�z,;/%�Jd�:!�����ȓ�.~�ʍ�
�M�R=���fۮ+r��˩-p=��'�w�{5Qk�[���F=��!��u���tǃ��_<�&9�߄�]�     