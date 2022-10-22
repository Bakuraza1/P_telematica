PGDMP         %            	    z            intel    14.5    14.5 d    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    49534    intel    DATABASE     b   CREATE DATABASE intel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE intel;
                postgres    false            �            1259    49771    InOut_app_comentario    TABLE     �   CREATE TABLE public."InOut_app_comentario" (
    id bigint NOT NULL,
    "Comentario" character varying(150) NOT NULL,
    "Producto_id" bigint NOT NULL,
    "Usuario_id" bigint NOT NULL
);
 *   DROP TABLE public."InOut_app_comentario";
       public         heap    postgres    false            �            1259    49770    InOut_app_comentario_id_seq    SEQUENCE     �   ALTER TABLE public."InOut_app_comentario" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."InOut_app_comentario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    233            �            1259    49561    InOut_app_producto    TABLE     �   CREATE TABLE public."InOut_app_producto" (
    id bigint NOT NULL,
    "Nombre" character varying(20) NOT NULL,
    "Cantidad" integer NOT NULL,
    "Precio" numeric(10,2) NOT NULL,
    "Imagen" character varying(100) NOT NULL
);
 (   DROP TABLE public."InOut_app_producto";
       public         heap    postgres    false            �            1259    49560    InOut_app_producto_id_seq    SEQUENCE     �   ALTER TABLE public."InOut_app_producto" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."InOut_app_producto_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �            1259    49612    InOut_app_usuario    TABLE     �  CREATE TABLE public."InOut_app_usuario" (
    id bigint NOT NULL,
    "Nombre" character varying(60) NOT NULL,
    "Apellido" character varying(120) NOT NULL,
    "Password" character varying(100) NOT NULL,
    "Ciudad" character varying(20) NOT NULL,
    "Direccion" character varying(100) NOT NULL,
    "Correo" character varying(100) NOT NULL,
    "Usuario" character varying(120) NOT NULL
);
 '   DROP TABLE public."InOut_app_usuario";
       public         heap    postgres    false            �            1259    49611    InOut_app_usuario_id_seq    SEQUENCE     �   ALTER TABLE public."InOut_app_usuario" ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."InOut_app_usuario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    49646 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    49645    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    49654    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    49653    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    49640    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    49639    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    49660 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         heap    postgres    false            �            1259    49668    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    49667    auth_user_groups_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    49659    auth_user_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    49674    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    49673 !   auth_user_user_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    228            �            1259    49732    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    49731    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    230            �            1259    49632    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    49631    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    49536    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    49535    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            �            1259    49760    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            }          0    49771    InOut_app_comentario 
   TABLE DATA           _   COPY public."InOut_app_comentario" (id, "Comentario", "Producto_id", "Usuario_id") FROM stdin;
    public          postgres    false    233   x�       h          0    49561    InOut_app_producto 
   TABLE DATA           \   COPY public."InOut_app_producto" (id, "Nombre", "Cantidad", "Precio", "Imagen") FROM stdin;
    public          postgres    false    212   ��       j          0    49612    InOut_app_usuario 
   TABLE DATA              COPY public."InOut_app_usuario" (id, "Nombre", "Apellido", "Password", "Ciudad", "Direccion", "Correo", "Usuario") FROM stdin;
    public          postgres    false    214   �       p          0    49646 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    220   ]�       r          0    49654    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    222   z�       n          0    49640    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    218   ��       t          0    49660 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    224   �       v          0    49668    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    226   ː       x          0    49674    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    228   �       z          0    49732    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    230   �       l          0    49632    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    216   ȕ       f          0    49536    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   P�       {          0    49760    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    231   3�       �           0    0    InOut_app_comentario_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."InOut_app_comentario_id_seq"', 6, true);
          public          postgres    false    232            �           0    0    InOut_app_producto_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."InOut_app_producto_id_seq"', 50, true);
          public          postgres    false    211            �           0    0    InOut_app_usuario_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."InOut_app_usuario_id_seq"', 2, true);
          public          postgres    false    213            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    219            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    217            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    225            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    223            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 49, true);
          public          postgres    false    229            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    215            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);
          public          postgres    false    209            �           2606    49775 .   InOut_app_comentario InOut_app_comentario_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."InOut_app_comentario"
    ADD CONSTRAINT "InOut_app_comentario_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."InOut_app_comentario" DROP CONSTRAINT "InOut_app_comentario_pkey";
       public            postgres    false    233            �           2606    49565 *   InOut_app_producto InOut_app_producto_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."InOut_app_producto"
    ADD CONSTRAINT "InOut_app_producto_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."InOut_app_producto" DROP CONSTRAINT "InOut_app_producto_pkey";
       public            postgres    false    212            �           2606    49616 (   InOut_app_usuario InOut_app_usuario_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."InOut_app_usuario"
    ADD CONSTRAINT "InOut_app_usuario_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."InOut_app_usuario" DROP CONSTRAINT "InOut_app_usuario_pkey";
       public            postgres    false    214            �           2606    49758    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    220            �           2606    49689 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    222    222            �           2606    49658 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    222            �           2606    49650    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    220            �           2606    49680 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    218    218            �           2606    49644 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    218            �           2606    49672 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    226            �           2606    49704 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    226    226            �           2606    49664    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    224            �           2606    49678 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    228            �           2606    49718 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    228    228            �           2606    49753     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    224            �           2606    49739 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    230            �           2606    49638 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    216    216            �           2606    49636 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    216            �           2606    49542 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    49766 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    231            �           1259    49786 )   InOut_app_comentario_Producto_id_83212787    INDEX     w   CREATE INDEX "InOut_app_comentario_Producto_id_83212787" ON public."InOut_app_comentario" USING btree ("Producto_id");
 ?   DROP INDEX public."InOut_app_comentario_Producto_id_83212787";
       public            postgres    false    233            �           1259    49787 (   InOut_app_comentario_Usuario_id_217d7b0f    INDEX     u   CREATE INDEX "InOut_app_comentario_Usuario_id_217d7b0f" ON public."InOut_app_comentario" USING btree ("Usuario_id");
 >   DROP INDEX public."InOut_app_comentario_Usuario_id_217d7b0f";
       public            postgres    false    233            �           1259    49759    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    220            �           1259    49700 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    222            �           1259    49701 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    222            �           1259    49686 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    218            �           1259    49716 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    226            �           1259    49715 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    226            �           1259    49730 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    228            �           1259    49729 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    228            �           1259    49754     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    224            �           1259    49750 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    230            �           1259    49751 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    230            �           1259    49768 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    231            �           1259    49767 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    231            �           2606    49776 K   InOut_app_comentario InOut_app_comentario_Producto_id_83212787_fk_InOut_app    FK CONSTRAINT     �   ALTER TABLE ONLY public."InOut_app_comentario"
    ADD CONSTRAINT "InOut_app_comentario_Producto_id_83212787_fk_InOut_app" FOREIGN KEY ("Producto_id") REFERENCES public."InOut_app_producto"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public."InOut_app_comentario" DROP CONSTRAINT "InOut_app_comentario_Producto_id_83212787_fk_InOut_app";
       public          postgres    false    3227    212    233            �           2606    49781 J   InOut_app_comentario InOut_app_comentario_Usuario_id_217d7b0f_fk_InOut_app    FK CONSTRAINT     �   ALTER TABLE ONLY public."InOut_app_comentario"
    ADD CONSTRAINT "InOut_app_comentario_Usuario_id_217d7b0f_fk_InOut_app" FOREIGN KEY ("Usuario_id") REFERENCES public."InOut_app_usuario"(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public."InOut_app_comentario" DROP CONSTRAINT "InOut_app_comentario_Usuario_id_217d7b0f_fk_InOut_app";
       public          postgres    false    233    214    3229            �           2606    49695 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    218    3238    222            �           2606    49690 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    220    222    3243            �           2606    49681 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    218    3233    216            �           2606    49710 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    226    220    3243            �           2606    49705 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    224    3251    226            �           2606    49724 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    218    3238    228            �           2606    49719 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    228    224    3251            �           2606    49740 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    230    216    3233            �           2606    49745 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3251    224    230            }   t   x�3����ITH�H,K�I-�QH-.I
��
E���E
����y%�E������\F����:
ũ�y)������M8CR��S� <SN��Ģ����J��Ԃ�D��W� 2f1�      h   �  x�u��r�0�����P[�9\r�2$��v:�a�Q�2�re��<}e��&��^����İ��ACA�D�0��U��/����:��o��"��.Ul���������@�J���=��C	s�LY��b+��u��>)Z2����U8�SP��(���Tɖ��4j��zPU��eLZprW�Zׇ�-4�k]����34����ONZ2�ޡ{w�}p�`3��Y�s����>G��/�Wl�m���1�#�tG(�j��5�3��GeӃI�*���$J�XԙcS}ǣ�Ze�ƸӖ`(2�\�R�P�#M�;��=ћwꦰP��let�A�Q���*rGM<W�C��1��Ý
�i���z�J��p��:U�<G5\��UE�B'<�GG���AY�젫�������/��d�:��{�˙�N����]�|3��("�FD��;N)�'��y!�}9\�U+�.e����[�M3SM���D�@�B�Ҥ�jP��m���xv��ڳ�Ǻ� �#���{�~0��z{��UB�/�E9����dJG�";��ʴ�K�Tg�����N�l���
m�f��)'����^�IW��LX.�t�$��S�v;K�)C6rW8{&Z�	lr�n�)�>Ƥ�|oV!;��W�lG������ba�1\��]��v�[�>��M������pX����ɲ8!>��n]��5��ztS���E��4��V=g���E��?_M�      j   g   x�3�,pp�r��r��44261�,H-H�I�K�L�LN��IU0400P�M,NK9��&f��%�点\F���`�*jF ����D$} ��\1z\\\ C'�      p      x������ � �      r      x������ � �      n   r  x�]�Yj�0@��S�Œ��߽F��X���
^Zr�ڣ�,���?g>��臡x�{�u~g��{�a���O?݃�Ҋ�
�!<ª��b��w
;5d�
�s\�1Nƃ/l+��v��H?Ţ�`���Hp\G��9n/S� |[WJ���^�8��AĳJ��+2ؖ0��O�jy_�|y<���o�3�N��|�Ӻ��b}��i� W�ƺ�9�(��Nz�x���/Y�D��bY/!���q�^��z�jg��3V����8l�5�K�G�u�L��	ԍ3�'P�Xʛ�N�������V�.,3bNw�1J1/k��H%�{�����[�:8ARn7�6Sk�25�bh~}Xk��N��      t   �   x�e��
�@@���S�p'�s﨓B��D)��ED���Ѥ��羳<�T[<�����z����1��Z�s�폧�XF	�C�2���ɴS;U���'0/I��0�Cy��u�O� G��[�+�@�� Z�%�4�@i��G����%��,�^���i.i      v      x������ � �      x      x������ � �      z   �  x����n�6��� �Nީ��"A�$u�t�˂ְ3
��T#q��{�����~~:$���6�q���	�F��;
 ��Lm��}��B�2�����NZ���6D���zm��l����o�a��!߾�kc6p�K��T9��q��Sw8[����RS��u��+bw:�Ҹd�NG�$ɒ�,UR���r�@�p��
Rk�n@Q` f�~ �џ���6�Bt	���r(fy��i�}8U�L	�*��T3ȮAױ�c%Ėɨ�\��!��S8�mp�@��%|%ɕ$�(�Ӷ�/�6~�\h2��[�J�']�豚�O��\��jn�L,�����'�����v���p�2�.[���m��H!m��%�`�Ա��EW�������k�������P]R���j\�����f�E���ZB�	f+�U�m�gՌ�a6��S��m�S)��09^zd����9�f�`))��N��
���O��(E�z�O�i��cp��.�u�P(��5�����dg��k7��;<r
��$��p�f/tw�����t_y����T�S���r�m-jm�dS�Y2�4϶_~�Z?Ԯ����7���ϖ��~�ީ�ٸ<��9�t�x6�C��B��W�:-�Y�>[}:��>�cm{��F#��I' ��c~�����Y¼IX��Q�=�N��y'x-c-52�����Ag���1s��Ӭ��vZ��:|ݗ�������)\QPJ������V\��j4���EV�����8�SW�F��o��̱R,����!tsC4��jU�����;-uj$EV�m�N~F�"
��{F1�K�Ld�/�����@~��NՠB|�0�Oc|�5��t.�!��}�(䗩���^�l��ᵝ�(2@6R�t�nK����;�ڤE�Fi�M�]z���v�N�Ӵ�Bu�"T�p�p*=���e��;r��Mc�0Yd���A=�E�g�;��Sk�E
�\��θtdN�+?�t�j�C��df�����K59>������(�OͼvJۥ��ˇx��]-�P?���)��zV��C$���XKX;����:��AXf��G8r�~��TW��\k�$�)aeJ�����.NC�<"׺+��:g�C��=�G~LWOh-�Zz�`{��j���,�2���2��[;��q��:uۊ���~(�����$�      l   x   x�M�K
�@��#��#����!8�M��!A��UA�=���N_Kw�p��!)ڪY��jF��V+�3e�>g>I�-�BV���Wz�g�;��(��q�ȰHZ������E�v ~�b<      f   �  x���_n�0Ɵ�S�Zy��s�}��dy7E�S��_�R��I"�d~�������~�A���B@�]j�� >yB�����3��z"|�e�޻�xN׭9�n=\�2��2�jo[�f�8���N۶�v0��~4�����6�I���Յ8A`�b�BL�&X��l�~��W���"x	�sJ�sퟭ �r��D�K�(Ɓ$FU2��OYB�CET� ���G �Df� )(@����()0�g=�F�s	P�P�]��	��AiY�)����� (=,G�vX�c@�Qi=��h��R�2dj(�ُ��l����O���f=��Lk�+�4��-�`y�����T��]bw��>j|s�q���vB�3cx�"�I`9v����1�TUI��ԍ���1ϕ�A��tڀ��g#�B��9��u��1g}|u�q�i��j��Ⱦi�s>�:��i��YB	5)�qv��m=)��ǭy׍���_��J�+��¢�8ěmM���H*�����I����ÆDR��*� �gDc��ԯcic����3�BQ߿c����:�������yu�܆o&v�	�� �{�ӀbS�V�ƞ�
N��sC�*�-r"�BR�4�7l��Ψ�d8{7��a���1l�ģ���O���O��Ї"���.~�\�K��-�JN���n��Uo��I6�4�e���6}~|=�'Ar y��~���� ����      {   
  x��Kr�0  е���!�ghD4
�:�q�Jj��H���[>���q���\Z�n66/k�F�[����f����%i�b���#�����;�G�̍3_�o<J�A�a�r~���TP����2l���m�"��+���1G����j!� t��x�� �3�Z3�KX��,�O��z{`6��*�07���������&��H�6!����Eo7�����X�G�سgmJP�&���* �f~ �˅pji���k�(���]i     