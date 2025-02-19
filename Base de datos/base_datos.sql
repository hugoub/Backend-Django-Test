PGDMP     	    :                x            menu_app    11.8    11.8 "   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24576    menu_app    DATABASE     �   CREATE DATABASE menu_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Chile.1252' LC_CTYPE = 'Spanish_Chile.1252';
    DROP DATABASE menu_app;
             postgres    false            �            1259    24747    Menuapp_almuerzo    TABLE     �   CREATE TABLE public."Menuapp_almuerzo" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text NOT NULL
);
 &   DROP TABLE public."Menuapp_almuerzo";
       public         postgres    false            �            1259    24745    Menuapp_almuerzo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_almuerzo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Menuapp_almuerzo_id_seq";
       public       postgres    false    216            �           0    0    Menuapp_almuerzo_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Menuapp_almuerzo_id_seq" OWNED BY public."Menuapp_almuerzo".id;
            public       postgres    false    215            �            1259    24797    Menuapp_elegir_menu    TABLE     �   CREATE TABLE public."Menuapp_elegir_menu" (
    id integer NOT NULL,
    id_empleado_id integer NOT NULL,
    id_menu_id integer,
    cambios text,
    uuid uuid NOT NULL
);
 )   DROP TABLE public."Menuapp_elegir_menu";
       public         postgres    false            �            1259    24795    Menuapp_elegir_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_elegir_menu_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Menuapp_elegir_menu_id_seq";
       public       postgres    false    226            �           0    0    Menuapp_elegir_menu_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Menuapp_elegir_menu_id_seq" OWNED BY public."Menuapp_elegir_menu".id;
            public       postgres    false    225            �            1259    24781    Menuapp_empleado    TABLE     l  CREATE TABLE public."Menuapp_empleado" (
    id integer NOT NULL,
    pais character varying(20) NOT NULL,
    id_slack character varying(20) NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    first_name character varying(30) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone,
    last_name character varying(150) NOT NULL,
    password character varying(128) NOT NULL,
    username character varying(150) NOT NULL,
    user_slack character varying(20) NOT NULL
);
 &   DROP TABLE public."Menuapp_empleado";
       public         postgres    false            �            1259    24863    Menuapp_empleado_groups    TABLE     �   CREATE TABLE public."Menuapp_empleado_groups" (
    id integer NOT NULL,
    empleado_id integer NOT NULL,
    group_id integer NOT NULL
);
 -   DROP TABLE public."Menuapp_empleado_groups";
       public         postgres    false            �            1259    24861    Menuapp_empleado_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_empleado_groups_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."Menuapp_empleado_groups_id_seq";
       public       postgres    false    228            �           0    0    Menuapp_empleado_groups_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."Menuapp_empleado_groups_id_seq" OWNED BY public."Menuapp_empleado_groups".id;
            public       postgres    false    227            �            1259    24779    Menuapp_empleado_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_empleado_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Menuapp_empleado_id_seq";
       public       postgres    false    222            �           0    0    Menuapp_empleado_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Menuapp_empleado_id_seq" OWNED BY public."Menuapp_empleado".id;
            public       postgres    false    221            �            1259    24879 !   Menuapp_empleado_user_permissions    TABLE     �   CREATE TABLE public."Menuapp_empleado_user_permissions" (
    id integer NOT NULL,
    empleado_id integer NOT NULL,
    permission_id integer NOT NULL
);
 7   DROP TABLE public."Menuapp_empleado_user_permissions";
       public         postgres    false            �            1259    24877 (   Menuapp_empleado_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_empleado_user_permissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."Menuapp_empleado_user_permissions_id_seq";
       public       postgres    false    230            �           0    0 (   Menuapp_empleado_user_permissions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."Menuapp_empleado_user_permissions_id_seq" OWNED BY public."Menuapp_empleado_user_permissions".id;
            public       postgres    false    229            �            1259    24758    Menuapp_ensalada    TABLE     �   CREATE TABLE public."Menuapp_ensalada" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text NOT NULL
);
 &   DROP TABLE public."Menuapp_ensalada";
       public         postgres    false            �            1259    24756    Menuapp_ensalada_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_ensalada_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Menuapp_ensalada_id_seq";
       public       postgres    false    218            �           0    0    Menuapp_ensalada_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Menuapp_ensalada_id_seq" OWNED BY public."Menuapp_ensalada".id;
            public       postgres    false    217            �            1259    24789    Menuapp_menu    TABLE     �   CREATE TABLE public."Menuapp_menu" (
    id integer NOT NULL,
    fecha_menu timestamp with time zone NOT NULL,
    id_almuerzo_id integer,
    id_ensalada_id integer,
    id_postre_id integer
);
 "   DROP TABLE public."Menuapp_menu";
       public         postgres    false            �            1259    24787    Menuapp_menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_menu_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Menuapp_menu_id_seq";
       public       postgres    false    224            �           0    0    Menuapp_menu_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Menuapp_menu_id_seq" OWNED BY public."Menuapp_menu".id;
            public       postgres    false    223            �            1259    24769    Menuapp_postre    TABLE     �   CREATE TABLE public."Menuapp_postre" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion text NOT NULL
);
 $   DROP TABLE public."Menuapp_postre";
       public         postgres    false            �            1259    24767    Menuapp_postre_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Menuapp_postre_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Menuapp_postre_id_seq";
       public       postgres    false    220            �           0    0    Menuapp_postre_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Menuapp_postre_id_seq" OWNED BY public."Menuapp_postre".id;
            public       postgres    false    219            �            1259    24608 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    24606    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    24618    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    24616    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    24600    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    24598    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    24626 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    24636    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    24634    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    24624    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    24644    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    24642 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    32805    celery_taskmeta    TABLE       CREATE TABLE public.celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);
 #   DROP TABLE public.celery_taskmeta;
       public         postgres    false            �            1259    32803    celery_taskmeta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.celery_taskmeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.celery_taskmeta_id_seq;
       public       postgres    false    245            �           0    0    celery_taskmeta_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.celery_taskmeta_id_seq OWNED BY public.celery_taskmeta.id;
            public       postgres    false    244            �            1259    32818    celery_tasksetmeta    TABLE     �   CREATE TABLE public.celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);
 &   DROP TABLE public.celery_tasksetmeta;
       public         postgres    false            �            1259    32816    celery_tasksetmeta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.celery_tasksetmeta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.celery_tasksetmeta_id_seq;
       public       postgres    false    247            �           0    0    celery_tasksetmeta_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.celery_tasksetmeta_id_seq OWNED BY public.celery_tasksetmeta.id;
            public       postgres    false    246            �            1259    24704    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false            �            1259    24702    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    24590    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    24588    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    24579    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    24577    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    24735    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    32770    djcelery_crontabschedule    TABLE     1  CREATE TABLE public.djcelery_crontabschedule (
    id integer NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);
 ,   DROP TABLE public.djcelery_crontabschedule;
       public         postgres    false            �            1259    32768    djcelery_crontabschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.djcelery_crontabschedule_id_seq;
       public       postgres    false    238            �           0    0    djcelery_crontabschedule_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.djcelery_crontabschedule_id_seq OWNED BY public.djcelery_crontabschedule.id;
            public       postgres    false    237            �            1259    32778    djcelery_intervalschedule    TABLE     �   CREATE TABLE public.djcelery_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);
 -   DROP TABLE public.djcelery_intervalschedule;
       public         postgres    false            �            1259    32776     djcelery_intervalschedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djcelery_intervalschedule_id_seq;
       public       postgres    false    240            �           0    0     djcelery_intervalschedule_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.djcelery_intervalschedule_id_seq OWNED BY public.djcelery_intervalschedule.id;
            public       postgres    false    239            �            1259    32786    djcelery_periodictask    TABLE     �  CREATE TABLE public.djcelery_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);
 )   DROP TABLE public.djcelery_periodictask;
       public         postgres    false            �            1259    32784    djcelery_periodictask_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.djcelery_periodictask_id_seq;
       public       postgres    false    242            �           0    0    djcelery_periodictask_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.djcelery_periodictask_id_seq OWNED BY public.djcelery_periodictask.id;
            public       postgres    false    241            �            1259    32798    djcelery_periodictasks    TABLE        CREATE TABLE public.djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);
 *   DROP TABLE public.djcelery_periodictasks;
       public         postgres    false            �            1259    32831    djcelery_taskstate    TABLE     �  CREATE TABLE public.djcelery_taskstate (
    id integer NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    hidden boolean NOT NULL,
    worker_id integer
);
 &   DROP TABLE public.djcelery_taskstate;
       public         postgres    false            �            1259    32829    djcelery_taskstate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_taskstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.djcelery_taskstate_id_seq;
       public       postgres    false    249            �           0    0    djcelery_taskstate_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.djcelery_taskstate_id_seq OWNED BY public.djcelery_taskstate.id;
            public       postgres    false    248            �            1259    32844    djcelery_workerstate    TABLE     �   CREATE TABLE public.djcelery_workerstate (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);
 (   DROP TABLE public.djcelery_workerstate;
       public         postgres    false            �            1259    32842    djcelery_workerstate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djcelery_workerstate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.djcelery_workerstate_id_seq;
       public       postgres    false    251            �           0    0    djcelery_workerstate_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.djcelery_workerstate_id_seq OWNED BY public.djcelery_workerstate.id;
            public       postgres    false    250            �            1259    24947    slack_app_slackusermapping    TABLE     B  CREATE TABLE public.slack_app_slackusermapping (
    slack_user_id character varying(255) NOT NULL,
    slack_team_id character varying(255) NOT NULL,
    access_token character varying(255) NOT NULL,
    nonce uuid NOT NULL,
    slack_email character varying(254),
    image_24 character varying(200),
    image_32 character varying(200),
    image_48 character varying(200),
    image_72 character varying(200),
    image_192 character varying(200),
    image_512 character varying(200),
    image_1024 character varying(200),
    workspace_name character varying(255) NOT NULL,
    workspace_domain character varying(255) NOT NULL,
    workspace_image_34 character varying(200),
    workspace_image_44 character varying(200),
    workspace_image_68 character varying(200),
    workspace_image_88 character varying(200),
    workspace_image_102 character varying(200),
    workspace_image_132 character varying(200),
    workspace_image_230 character varying(200),
    workspace_image_original character varying(200),
    slack_workspace_id character varying(255),
    user_id integer
);
 .   DROP TABLE public.slack_app_slackusermapping;
       public         postgres    false            �            1259    24938    slack_app_slackwebhook    TABLE     k  CREATE TABLE public.slack_app_slackwebhook (
    id integer NOT NULL,
    channel_name character varying(255) NOT NULL,
    channel_id character varying(255) NOT NULL,
    configuration_url character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    created timestamp with time zone NOT NULL,
    workspace_id character varying(255) NOT NULL
);
 *   DROP TABLE public.slack_app_slackwebhook;
       public         postgres    false            �            1259    24936    slack_app_slackwebhook_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slack_app_slackwebhook_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.slack_app_slackwebhook_id_seq;
       public       postgres    false    235            �           0    0    slack_app_slackwebhook_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.slack_app_slackwebhook_id_seq OWNED BY public.slack_app_slackwebhook.id;
            public       postgres    false    234            �            1259    24920    slack_app_slackworkspace    TABLE     [  CREATE TABLE public.slack_app_slackworkspace (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    scope character varying(1024) NOT NULL,
    bot_access_token character varying(255) NOT NULL,
    bot_user_id character varying(255) NOT NULL,
    last_changed timestamp with time zone NOT NULL,
    created timestamp with time zone NOT NULL,
    response jsonb NOT NULL,
    domain character varying(255),
    image_34 character varying(200),
    image_44 character varying(200),
    image_68 character varying(200),
    image_88 character varying(200),
    image_102 character varying(200),
    image_132 character varying(200),
    image_230 character varying(200),
    image_original character varying(200),
    image_default boolean,
    enterprise_id character varying(128),
    enterprise_name character varying(128)
);
 ,   DROP TABLE public.slack_app_slackworkspace;
       public         postgres    false            �            1259    24930    slack_app_slackworkspace_owners    TABLE     �   CREATE TABLE public.slack_app_slackworkspace_owners (
    id integer NOT NULL,
    slackworkspace_id character varying(255) NOT NULL,
    empleado_id integer NOT NULL
);
 3   DROP TABLE public.slack_app_slackworkspace_owners;
       public         postgres    false            �            1259    24928 &   slack_app_slackworkspace_owners_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slack_app_slackworkspace_owners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.slack_app_slackworkspace_owners_id_seq;
       public       postgres    false    233            �           0    0 &   slack_app_slackworkspace_owners_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.slack_app_slackworkspace_owners_id_seq OWNED BY public.slack_app_slackworkspace_owners.id;
            public       postgres    false    232            =           2604    24750    Menuapp_almuerzo id    DEFAULT     ~   ALTER TABLE ONLY public."Menuapp_almuerzo" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_almuerzo_id_seq"'::regclass);
 D   ALTER TABLE public."Menuapp_almuerzo" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            B           2604    24800    Menuapp_elegir_menu id    DEFAULT     �   ALTER TABLE ONLY public."Menuapp_elegir_menu" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_elegir_menu_id_seq"'::regclass);
 G   ALTER TABLE public."Menuapp_elegir_menu" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    226    226            @           2604    24784    Menuapp_empleado id    DEFAULT     ~   ALTER TABLE ONLY public."Menuapp_empleado" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_empleado_id_seq"'::regclass);
 D   ALTER TABLE public."Menuapp_empleado" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            C           2604    24866    Menuapp_empleado_groups id    DEFAULT     �   ALTER TABLE ONLY public."Menuapp_empleado_groups" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_empleado_groups_id_seq"'::regclass);
 K   ALTER TABLE public."Menuapp_empleado_groups" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            D           2604    24882 $   Menuapp_empleado_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_empleado_user_permissions_id_seq"'::regclass);
 U   ALTER TABLE public."Menuapp_empleado_user_permissions" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    229    230            >           2604    24761    Menuapp_ensalada id    DEFAULT     ~   ALTER TABLE ONLY public."Menuapp_ensalada" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_ensalada_id_seq"'::regclass);
 D   ALTER TABLE public."Menuapp_ensalada" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    217    218            A           2604    24792    Menuapp_menu id    DEFAULT     v   ALTER TABLE ONLY public."Menuapp_menu" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_menu_id_seq"'::regclass);
 @   ALTER TABLE public."Menuapp_menu" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224            ?           2604    24772    Menuapp_postre id    DEFAULT     z   ALTER TABLE ONLY public."Menuapp_postre" ALTER COLUMN id SET DEFAULT nextval('public."Menuapp_postre_id_seq"'::regclass);
 B   ALTER TABLE public."Menuapp_postre" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220            6           2604    24611    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            7           2604    24621    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            5           2604    24603    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            8           2604    24629    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            9           2604    24639    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            :           2604    24647    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            K           2604    32808    celery_taskmeta id    DEFAULT     x   ALTER TABLE ONLY public.celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('public.celery_taskmeta_id_seq'::regclass);
 A   ALTER TABLE public.celery_taskmeta ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            L           2604    32821    celery_tasksetmeta id    DEFAULT     ~   ALTER TABLE ONLY public.celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('public.celery_tasksetmeta_id_seq'::regclass);
 D   ALTER TABLE public.celery_tasksetmeta ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246    247            ;           2604    24707    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            4           2604    24593    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            3           2604    24582    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            G           2604    32773    djcelery_crontabschedule id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.djcelery_crontabschedule_id_seq'::regclass);
 J   ALTER TABLE public.djcelery_crontabschedule ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    237    238            H           2604    32781    djcelery_intervalschedule id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.djcelery_intervalschedule_id_seq'::regclass);
 K   ALTER TABLE public.djcelery_intervalschedule ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    240    240            I           2604    32789    djcelery_periodictask id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('public.djcelery_periodictask_id_seq'::regclass);
 G   ALTER TABLE public.djcelery_periodictask ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    242    242            M           2604    32834    djcelery_taskstate id    DEFAULT     ~   ALTER TABLE ONLY public.djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('public.djcelery_taskstate_id_seq'::regclass);
 D   ALTER TABLE public.djcelery_taskstate ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248    249            N           2604    32847    djcelery_workerstate id    DEFAULT     �   ALTER TABLE ONLY public.djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('public.djcelery_workerstate_id_seq'::regclass);
 F   ALTER TABLE public.djcelery_workerstate ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250    251            F           2604    24941    slack_app_slackwebhook id    DEFAULT     �   ALTER TABLE ONLY public.slack_app_slackwebhook ALTER COLUMN id SET DEFAULT nextval('public.slack_app_slackwebhook_id_seq'::regclass);
 H   ALTER TABLE public.slack_app_slackwebhook ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    235    235            E           2604    24933 "   slack_app_slackworkspace_owners id    DEFAULT     �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners ALTER COLUMN id SET DEFAULT nextval('public.slack_app_slackworkspace_owners_id_seq'::regclass);
 Q   ALTER TABLE public.slack_app_slackworkspace_owners ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            �          0    24747    Menuapp_almuerzo 
   TABLE DATA               E   COPY public."Menuapp_almuerzo" (id, nombre, descripcion) FROM stdin;
    public       postgres    false    216   ��      �          0    24797    Menuapp_elegir_menu 
   TABLE DATA               ^   COPY public."Menuapp_elegir_menu" (id, id_empleado_id, id_menu_id, cambios, uuid) FROM stdin;
    public       postgres    false    226   U�      �          0    24781    Menuapp_empleado 
   TABLE DATA               �   COPY public."Menuapp_empleado" (id, pais, id_slack, date_joined, email, first_name, is_active, is_staff, is_superuser, last_login, last_name, password, username, user_slack) FROM stdin;
    public       postgres    false    222   r�      �          0    24863    Menuapp_empleado_groups 
   TABLE DATA               N   COPY public."Menuapp_empleado_groups" (id, empleado_id, group_id) FROM stdin;
    public       postgres    false    228   ��      �          0    24879 !   Menuapp_empleado_user_permissions 
   TABLE DATA               ]   COPY public."Menuapp_empleado_user_permissions" (id, empleado_id, permission_id) FROM stdin;
    public       postgres    false    230   ��      �          0    24758    Menuapp_ensalada 
   TABLE DATA               E   COPY public."Menuapp_ensalada" (id, nombre, descripcion) FROM stdin;
    public       postgres    false    218   ��      �          0    24789    Menuapp_menu 
   TABLE DATA               f   COPY public."Menuapp_menu" (id, fecha_menu, id_almuerzo_id, id_ensalada_id, id_postre_id) FROM stdin;
    public       postgres    false    224   ��      �          0    24769    Menuapp_postre 
   TABLE DATA               C   COPY public."Menuapp_postre" (id, nombre, descripcion) FROM stdin;
    public       postgres    false    220   >�      w          0    24608 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   ��      y          0    24618    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   ��      u          0    24600    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ֗      {          0    24626 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   ��      }          0    24636    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��                0    24644    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   М      �          0    32805    celery_taskmeta 
   TABLE DATA               j   COPY public.celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
    public       postgres    false    245   �      �          0    32818    celery_tasksetmeta 
   TABLE DATA               W   COPY public.celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
    public       postgres    false    247   
�      �          0    24704    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   '�      s          0    24590    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   D�      q          0    24579    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   X�      �          0    24735    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   �      �          0    32770    djcelery_crontabschedule 
   TABLE DATA               n   COPY public.djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
    public       postgres    false    238   g�      �          0    32778    djcelery_intervalschedule 
   TABLE DATA               F   COPY public.djcelery_intervalschedule (id, every, period) FROM stdin;
    public       postgres    false    240   ��      �          0    32786    djcelery_periodictask 
   TABLE DATA               �   COPY public.djcelery_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id) FROM stdin;
    public       postgres    false    242   ��      �          0    32798    djcelery_periodictasks 
   TABLE DATA               D   COPY public.djcelery_periodictasks (ident, last_update) FROM stdin;
    public       postgres    false    243   ��      �          0    32831    djcelery_taskstate 
   TABLE DATA               �   COPY public.djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, hidden, worker_id) FROM stdin;
    public       postgres    false    249   ۣ      �          0    32844    djcelery_workerstate 
   TABLE DATA               L   COPY public.djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
    public       postgres    false    251   ��      �          0    24947    slack_app_slackusermapping 
   TABLE DATA               �  COPY public.slack_app_slackusermapping (slack_user_id, slack_team_id, access_token, nonce, slack_email, image_24, image_32, image_48, image_72, image_192, image_512, image_1024, workspace_name, workspace_domain, workspace_image_34, workspace_image_44, workspace_image_68, workspace_image_88, workspace_image_102, workspace_image_132, workspace_image_230, workspace_image_original, slack_workspace_id, user_id) FROM stdin;
    public       postgres    false    236   �      �          0    24938    slack_app_slackwebhook 
   TABLE DATA               }   COPY public.slack_app_slackwebhook (id, channel_name, channel_id, configuration_url, url, created, workspace_id) FROM stdin;
    public       postgres    false    235   2�      �          0    24920    slack_app_slackworkspace 
   TABLE DATA                 COPY public.slack_app_slackworkspace (id, name, scope, bot_access_token, bot_user_id, last_changed, created, response, domain, image_34, image_44, image_68, image_88, image_102, image_132, image_230, image_original, image_default, enterprise_id, enterprise_name) FROM stdin;
    public       postgres    false    231   O�      �          0    24930    slack_app_slackworkspace_owners 
   TABLE DATA               ]   COPY public.slack_app_slackworkspace_owners (id, slackworkspace_id, empleado_id) FROM stdin;
    public       postgres    false    233   l�      �           0    0    Menuapp_almuerzo_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Menuapp_almuerzo_id_seq"', 47, true);
            public       postgres    false    215            �           0    0    Menuapp_elegir_menu_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."Menuapp_elegir_menu_id_seq"', 48, true);
            public       postgres    false    225            �           0    0    Menuapp_empleado_groups_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Menuapp_empleado_groups_id_seq"', 1, false);
            public       postgres    false    227            �           0    0    Menuapp_empleado_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Menuapp_empleado_id_seq"', 20, true);
            public       postgres    false    221            �           0    0 (   Menuapp_empleado_user_permissions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public."Menuapp_empleado_user_permissions_id_seq"', 1, false);
            public       postgres    false    229            �           0    0    Menuapp_ensalada_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Menuapp_ensalada_id_seq"', 13, true);
            public       postgres    false    217            �           0    0    Menuapp_menu_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Menuapp_menu_id_seq"', 18, true);
            public       postgres    false    223            �           0    0    Menuapp_postre_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Menuapp_postre_id_seq"', 26, true);
            public       postgres    false    219            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    celery_taskmeta_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.celery_taskmeta_id_seq', 1, false);
            public       postgres    false    244            �           0    0    celery_tasksetmeta_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.celery_tasksetmeta_id_seq', 1, false);
            public       postgres    false    246            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
            public       postgres    false    196            �           0    0    djcelery_crontabschedule_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.djcelery_crontabschedule_id_seq', 1, false);
            public       postgres    false    237            �           0    0     djcelery_intervalschedule_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.djcelery_intervalschedule_id_seq', 1, false);
            public       postgres    false    239            �           0    0    djcelery_periodictask_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.djcelery_periodictask_id_seq', 1, false);
            public       postgres    false    241            �           0    0    djcelery_taskstate_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.djcelery_taskstate_id_seq', 1, false);
            public       postgres    false    248            �           0    0    djcelery_workerstate_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.djcelery_workerstate_id_seq', 1, false);
            public       postgres    false    250            �           0    0    slack_app_slackwebhook_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.slack_app_slackwebhook_id_seq', 1, false);
            public       postgres    false    234            �           0    0 &   slack_app_slackworkspace_owners_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.slack_app_slackworkspace_owners_id_seq', 1, false);
            public       postgres    false    232                       2606    24755 &   Menuapp_almuerzo Menuapp_almuerzo_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Menuapp_almuerzo"
    ADD CONSTRAINT "Menuapp_almuerzo_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Menuapp_almuerzo" DROP CONSTRAINT "Menuapp_almuerzo_pkey";
       public         postgres    false    216            �           2606    24802 ,   Menuapp_elegir_menu Menuapp_elegir_menu_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Menuapp_elegir_menu"
    ADD CONSTRAINT "Menuapp_elegir_menu_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Menuapp_elegir_menu" DROP CONSTRAINT "Menuapp_elegir_menu_pkey";
       public         postgres    false    226            �           2606    24889 R   Menuapp_empleado_groups Menuapp_empleado_groups_empleado_id_group_id_cfde56a4_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_empleado_groups"
    ADD CONSTRAINT "Menuapp_empleado_groups_empleado_id_group_id_cfde56a4_uniq" UNIQUE (empleado_id, group_id);
 �   ALTER TABLE ONLY public."Menuapp_empleado_groups" DROP CONSTRAINT "Menuapp_empleado_groups_empleado_id_group_id_cfde56a4_uniq";
       public         postgres    false    228    228            �           2606    24868 4   Menuapp_empleado_groups Menuapp_empleado_groups_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public."Menuapp_empleado_groups"
    ADD CONSTRAINT "Menuapp_empleado_groups_pkey" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public."Menuapp_empleado_groups" DROP CONSTRAINT "Menuapp_empleado_groups_pkey";
       public         postgres    false    228            �           2606    24786 &   Menuapp_empleado Menuapp_empleado_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Menuapp_empleado"
    ADD CONSTRAINT "Menuapp_empleado_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Menuapp_empleado" DROP CONSTRAINT "Menuapp_empleado_pkey";
       public         postgres    false    222            �           2606    24903 a   Menuapp_empleado_user_permissions Menuapp_empleado_user_pe_empleado_id_permission_i_66db296f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions"
    ADD CONSTRAINT "Menuapp_empleado_user_pe_empleado_id_permission_i_66db296f_uniq" UNIQUE (empleado_id, permission_id);
 �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions" DROP CONSTRAINT "Menuapp_empleado_user_pe_empleado_id_permission_i_66db296f_uniq";
       public         postgres    false    230    230            �           2606    24884 H   Menuapp_empleado_user_permissions Menuapp_empleado_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions"
    ADD CONSTRAINT "Menuapp_empleado_user_permissions_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions" DROP CONSTRAINT "Menuapp_empleado_user_permissions_pkey";
       public         postgres    false    230            �           2606    24887 .   Menuapp_empleado Menuapp_empleado_username_key 
   CONSTRAINT     q   ALTER TABLE ONLY public."Menuapp_empleado"
    ADD CONSTRAINT "Menuapp_empleado_username_key" UNIQUE (username);
 \   ALTER TABLE ONLY public."Menuapp_empleado" DROP CONSTRAINT "Menuapp_empleado_username_key";
       public         postgres    false    222            �           2606    24766 &   Menuapp_ensalada Menuapp_ensalada_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Menuapp_ensalada"
    ADD CONSTRAINT "Menuapp_ensalada_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Menuapp_ensalada" DROP CONSTRAINT "Menuapp_ensalada_pkey";
       public         postgres    false    218            �           2606    24794    Menuapp_menu Menuapp_menu_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Menuapp_menu"
    ADD CONSTRAINT "Menuapp_menu_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Menuapp_menu" DROP CONSTRAINT "Menuapp_menu_pkey";
       public         postgres    false    224            �           2606    24777 "   Menuapp_postre Menuapp_postre_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Menuapp_postre"
    ADD CONSTRAINT "Menuapp_postre_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Menuapp_postre" DROP CONSTRAINT "Menuapp_postre_pkey";
       public         postgres    false    220            \           2606    24733    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            a           2606    24660 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            d           2606    24623 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            ^           2606    24613    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            W           2606    24651 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            Y           2606    24605 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201            l           2606    24641 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209            o           2606    24675 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            f           2606    24631    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            r           2606    24649 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211            u           2606    24689 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211            i           2606    24727     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207            �           2606    32813 $   celery_taskmeta celery_taskmeta_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_pkey;
       public         postgres    false    245            �           2606    32815 +   celery_taskmeta celery_taskmeta_task_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);
 U   ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_task_id_key;
       public         postgres    false    245            �           2606    32826 *   celery_tasksetmeta celery_tasksetmeta_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_pkey;
       public         postgres    false    247            �           2606    32828 4   celery_tasksetmeta celery_tasksetmeta_taskset_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);
 ^   ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_taskset_id_key;
       public         postgres    false    247            x           2606    24713 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            R           2606    24597 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            T           2606    24595 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            P           2606    24587 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197            |           2606    24742 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214            �           2606    32775 6   djcelery_crontabschedule djcelery_crontabschedule_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.djcelery_crontabschedule DROP CONSTRAINT djcelery_crontabschedule_pkey;
       public         postgres    false    238            �           2606    32783 8   djcelery_intervalschedule djcelery_intervalschedule_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djcelery_intervalschedule DROP CONSTRAINT djcelery_intervalschedule_pkey;
       public         postgres    false    240            �           2606    32797 4   djcelery_periodictask djcelery_periodictask_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);
 ^   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_name_key;
       public         postgres    false    242            �           2606    32795 0   djcelery_periodictask djcelery_periodictask_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_pkey;
       public         postgres    false    242            �           2606    32802 2   djcelery_periodictasks djcelery_periodictasks_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);
 \   ALTER TABLE ONLY public.djcelery_periodictasks DROP CONSTRAINT djcelery_periodictasks_pkey;
       public         postgres    false    243            �           2606    32839 *   djcelery_taskstate djcelery_taskstate_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_pkey;
       public         postgres    false    249            �           2606    32841 1   djcelery_taskstate djcelery_taskstate_task_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);
 [   ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_task_id_key;
       public         postgres    false    249            �           2606    32851 6   djcelery_workerstate djcelery_workerstate_hostname_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);
 `   ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_hostname_key;
       public         postgres    false    251            �           2606    32849 .   djcelery_workerstate djcelery_workerstate_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_pkey;
       public         postgres    false    251            �           2606    24954 :   slack_app_slackusermapping slack_app_slackusermapping_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackusermapping
    ADD CONSTRAINT slack_app_slackusermapping_pkey PRIMARY KEY (slack_user_id);
 d   ALTER TABLE ONLY public.slack_app_slackusermapping DROP CONSTRAINT slack_app_slackusermapping_pkey;
       public         postgres    false    236            �           2606    24946 2   slack_app_slackwebhook slack_app_slackwebhook_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.slack_app_slackwebhook
    ADD CONSTRAINT slack_app_slackwebhook_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.slack_app_slackwebhook DROP CONSTRAINT slack_app_slackwebhook_pkey;
       public         postgres    false    235            �           2606    24935 D   slack_app_slackworkspace_owners slack_app_slackworkspace_owners_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners
    ADD CONSTRAINT slack_app_slackworkspace_owners_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.slack_app_slackworkspace_owners DROP CONSTRAINT slack_app_slackworkspace_owners_pkey;
       public         postgres    false    233            �           2606    24927 6   slack_app_slackworkspace slack_app_slackworkspace_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.slack_app_slackworkspace
    ADD CONSTRAINT slack_app_slackworkspace_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.slack_app_slackworkspace DROP CONSTRAINT slack_app_slackworkspace_pkey;
       public         postgres    false    231            �           2606    24957 _   slack_app_slackworkspace_owners slack_app_slackworkspace_slackworkspace_id_emplea_3be8bef3_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners
    ADD CONSTRAINT slack_app_slackworkspace_slackworkspace_id_emplea_3be8bef3_uniq UNIQUE (slackworkspace_id, empleado_id);
 �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners DROP CONSTRAINT slack_app_slackworkspace_slackworkspace_id_emplea_3be8bef3_uniq;
       public         postgres    false    233    233            �           1259    24841 +   Menuapp_elegir_menu_id_empleado_id_5b3e39b1    INDEX     y   CREATE INDEX "Menuapp_elegir_menu_id_empleado_id_5b3e39b1" ON public."Menuapp_elegir_menu" USING btree (id_empleado_id);
 A   DROP INDEX public."Menuapp_elegir_menu_id_empleado_id_5b3e39b1";
       public         postgres    false    226            �           1259    24842 '   Menuapp_elegir_menu_id_menu_id_6f7595c1    INDEX     q   CREATE INDEX "Menuapp_elegir_menu_id_menu_id_6f7595c1" ON public."Menuapp_elegir_menu" USING btree (id_menu_id);
 =   DROP INDEX public."Menuapp_elegir_menu_id_menu_id_6f7595c1";
       public         postgres    false    226            �           1259    24900 ,   Menuapp_empleado_groups_empleado_id_fc475419    INDEX     {   CREATE INDEX "Menuapp_empleado_groups_empleado_id_fc475419" ON public."Menuapp_empleado_groups" USING btree (empleado_id);
 B   DROP INDEX public."Menuapp_empleado_groups_empleado_id_fc475419";
       public         postgres    false    228            �           1259    24901 )   Menuapp_empleado_groups_group_id_8645717d    INDEX     u   CREATE INDEX "Menuapp_empleado_groups_group_id_8645717d" ON public."Menuapp_empleado_groups" USING btree (group_id);
 ?   DROP INDEX public."Menuapp_empleado_groups_group_id_8645717d";
       public         postgres    false    228            �           1259    24914 6   Menuapp_empleado_user_permissions_empleado_id_99c09480    INDEX     �   CREATE INDEX "Menuapp_empleado_user_permissions_empleado_id_99c09480" ON public."Menuapp_empleado_user_permissions" USING btree (empleado_id);
 L   DROP INDEX public."Menuapp_empleado_user_permissions_empleado_id_99c09480";
       public         postgres    false    230            �           1259    24915 8   Menuapp_empleado_user_permissions_permission_id_e0103d3d    INDEX     �   CREATE INDEX "Menuapp_empleado_user_permissions_permission_id_e0103d3d" ON public."Menuapp_empleado_user_permissions" USING btree (permission_id);
 N   DROP INDEX public."Menuapp_empleado_user_permissions_permission_id_e0103d3d";
       public         postgres    false    230            �           1259    24916 '   Menuapp_empleado_username_5bab6b3d_like    INDEX     �   CREATE INDEX "Menuapp_empleado_username_5bab6b3d_like" ON public."Menuapp_empleado" USING btree (username varchar_pattern_ops);
 =   DROP INDEX public."Menuapp_empleado_username_5bab6b3d_like";
       public         postgres    false    222            �           1259    24828 $   Menuapp_menu_id_almuerzo_id_bba4b4dc    INDEX     k   CREATE INDEX "Menuapp_menu_id_almuerzo_id_bba4b4dc" ON public."Menuapp_menu" USING btree (id_almuerzo_id);
 :   DROP INDEX public."Menuapp_menu_id_almuerzo_id_bba4b4dc";
       public         postgres    false    224            �           1259    24829 $   Menuapp_menu_id_ensalada_id_d134b171    INDEX     k   CREATE INDEX "Menuapp_menu_id_ensalada_id_d134b171" ON public."Menuapp_menu" USING btree (id_ensalada_id);
 :   DROP INDEX public."Menuapp_menu_id_ensalada_id_d134b171";
       public         postgres    false    224            �           1259    24830 "   Menuapp_menu_id_postre_id_0d7d1a5e    INDEX     g   CREATE INDEX "Menuapp_menu_id_postre_id_0d7d1a5e" ON public."Menuapp_menu" USING btree (id_postre_id);
 8   DROP INDEX public."Menuapp_menu_id_postre_id_0d7d1a5e";
       public         postgres    false    224            Z           1259    24734    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            _           1259    24671 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            b           1259    24672 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            U           1259    24657 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201            j           1259    24687 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209            m           1259    24686 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209            p           1259    24701 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            s           1259    24700 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            g           1259    24728     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207            �           1259    32871    celery_taskmeta_hidden_23fd02dc    INDEX     ]   CREATE INDEX celery_taskmeta_hidden_23fd02dc ON public.celery_taskmeta USING btree (hidden);
 3   DROP INDEX public.celery_taskmeta_hidden_23fd02dc;
       public         postgres    false    245            �           1259    32870 %   celery_taskmeta_task_id_9558b198_like    INDEX     x   CREATE INDEX celery_taskmeta_task_id_9558b198_like ON public.celery_taskmeta USING btree (task_id varchar_pattern_ops);
 9   DROP INDEX public.celery_taskmeta_task_id_9558b198_like;
       public         postgres    false    245            �           1259    32873 "   celery_tasksetmeta_hidden_593cfc24    INDEX     c   CREATE INDEX celery_tasksetmeta_hidden_593cfc24 ON public.celery_tasksetmeta USING btree (hidden);
 6   DROP INDEX public.celery_tasksetmeta_hidden_593cfc24;
       public         postgres    false    247            �           1259    32872 +   celery_tasksetmeta_taskset_id_a5a1d4ae_like    INDEX     �   CREATE INDEX celery_tasksetmeta_taskset_id_a5a1d4ae_like ON public.celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);
 ?   DROP INDEX public.celery_tasksetmeta_taskset_id_a5a1d4ae_like;
       public         postgres    false    247            v           1259    24724 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213            y           1259    24725 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213            z           1259    24744 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214            }           1259    24743 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214            �           1259    32868 )   djcelery_periodictask_crontab_id_75609bab    INDEX     q   CREATE INDEX djcelery_periodictask_crontab_id_75609bab ON public.djcelery_periodictask USING btree (crontab_id);
 =   DROP INDEX public.djcelery_periodictask_crontab_id_75609bab;
       public         postgres    false    242            �           1259    32869 *   djcelery_periodictask_interval_id_b426ab02    INDEX     s   CREATE INDEX djcelery_periodictask_interval_id_b426ab02 ON public.djcelery_periodictask USING btree (interval_id);
 >   DROP INDEX public.djcelery_periodictask_interval_id_b426ab02;
       public         postgres    false    242            �           1259    32867 (   djcelery_periodictask_name_cb62cda9_like    INDEX     ~   CREATE INDEX djcelery_periodictask_name_cb62cda9_like ON public.djcelery_periodictask USING btree (name varchar_pattern_ops);
 <   DROP INDEX public.djcelery_periodictask_name_cb62cda9_like;
       public         postgres    false    242            �           1259    32880 "   djcelery_taskstate_hidden_c3905e57    INDEX     c   CREATE INDEX djcelery_taskstate_hidden_c3905e57 ON public.djcelery_taskstate USING btree (hidden);
 6   DROP INDEX public.djcelery_taskstate_hidden_c3905e57;
       public         postgres    false    249            �           1259    32877     djcelery_taskstate_name_8af9eded    INDEX     _   CREATE INDEX djcelery_taskstate_name_8af9eded ON public.djcelery_taskstate USING btree (name);
 4   DROP INDEX public.djcelery_taskstate_name_8af9eded;
       public         postgres    false    249            �           1259    32878 %   djcelery_taskstate_name_8af9eded_like    INDEX     x   CREATE INDEX djcelery_taskstate_name_8af9eded_like ON public.djcelery_taskstate USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.djcelery_taskstate_name_8af9eded_like;
       public         postgres    false    249            �           1259    32874 !   djcelery_taskstate_state_53543be4    INDEX     a   CREATE INDEX djcelery_taskstate_state_53543be4 ON public.djcelery_taskstate USING btree (state);
 5   DROP INDEX public.djcelery_taskstate_state_53543be4;
       public         postgres    false    249            �           1259    32875 &   djcelery_taskstate_state_53543be4_like    INDEX     z   CREATE INDEX djcelery_taskstate_state_53543be4_like ON public.djcelery_taskstate USING btree (state varchar_pattern_ops);
 :   DROP INDEX public.djcelery_taskstate_state_53543be4_like;
       public         postgres    false    249            �           1259    32876 (   djcelery_taskstate_task_id_9d2efdb5_like    INDEX     ~   CREATE INDEX djcelery_taskstate_task_id_9d2efdb5_like ON public.djcelery_taskstate USING btree (task_id varchar_pattern_ops);
 <   DROP INDEX public.djcelery_taskstate_task_id_9d2efdb5_like;
       public         postgres    false    249            �           1259    32879 "   djcelery_taskstate_tstamp_4c3f93a1    INDEX     c   CREATE INDEX djcelery_taskstate_tstamp_4c3f93a1 ON public.djcelery_taskstate USING btree (tstamp);
 6   DROP INDEX public.djcelery_taskstate_tstamp_4c3f93a1;
       public         postgres    false    249            �           1259    32883 %   djcelery_taskstate_worker_id_f7f57a05    INDEX     i   CREATE INDEX djcelery_taskstate_worker_id_f7f57a05 ON public.djcelery_taskstate USING btree (worker_id);
 9   DROP INDEX public.djcelery_taskstate_worker_id_f7f57a05;
       public         postgres    false    249            �           1259    32881 +   djcelery_workerstate_hostname_b31c7fab_like    INDEX     �   CREATE INDEX djcelery_workerstate_hostname_b31c7fab_like ON public.djcelery_workerstate USING btree (hostname varchar_pattern_ops);
 ?   DROP INDEX public.djcelery_workerstate_hostname_b31c7fab_like;
       public         postgres    false    251            �           1259    32882 ,   djcelery_workerstate_last_heartbeat_4539b544    INDEX     w   CREATE INDEX djcelery_workerstate_last_heartbeat_4539b544 ON public.djcelery_workerstate USING btree (last_heartbeat);
 @   DROP INDEX public.djcelery_workerstate_last_heartbeat_4539b544;
       public         postgres    false    251            �           1259    24988 6   slack_app_slackusermapping_slack_user_id_f992b9f6_like    INDEX     �   CREATE INDEX slack_app_slackusermapping_slack_user_id_f992b9f6_like ON public.slack_app_slackusermapping USING btree (slack_user_id varchar_pattern_ops);
 J   DROP INDEX public.slack_app_slackusermapping_slack_user_id_f992b9f6_like;
       public         postgres    false    236            �           1259    24989 6   slack_app_slackusermapping_slack_workspace_id_38295b16    INDEX     �   CREATE INDEX slack_app_slackusermapping_slack_workspace_id_38295b16 ON public.slack_app_slackusermapping USING btree (slack_workspace_id);
 J   DROP INDEX public.slack_app_slackusermapping_slack_workspace_id_38295b16;
       public         postgres    false    236            �           1259    24990 ;   slack_app_slackusermapping_slack_workspace_id_38295b16_like    INDEX     �   CREATE INDEX slack_app_slackusermapping_slack_workspace_id_38295b16_like ON public.slack_app_slackusermapping USING btree (slack_workspace_id varchar_pattern_ops);
 O   DROP INDEX public.slack_app_slackusermapping_slack_workspace_id_38295b16_like;
       public         postgres    false    236            �           1259    24991 +   slack_app_slackusermapping_user_id_7f07dbc3    INDEX     u   CREATE INDEX slack_app_slackusermapping_user_id_7f07dbc3 ON public.slack_app_slackusermapping USING btree (user_id);
 ?   DROP INDEX public.slack_app_slackusermapping_user_id_7f07dbc3;
       public         postgres    false    236            �           1259    24976 ,   slack_app_slackwebhook_workspace_id_6ca4cf82    INDEX     w   CREATE INDEX slack_app_slackwebhook_workspace_id_6ca4cf82 ON public.slack_app_slackwebhook USING btree (workspace_id);
 @   DROP INDEX public.slack_app_slackwebhook_workspace_id_6ca4cf82;
       public         postgres    false    235            �           1259    24977 1   slack_app_slackwebhook_workspace_id_6ca4cf82_like    INDEX     �   CREATE INDEX slack_app_slackwebhook_workspace_id_6ca4cf82_like ON public.slack_app_slackwebhook USING btree (workspace_id varchar_pattern_ops);
 E   DROP INDEX public.slack_app_slackwebhook_workspace_id_6ca4cf82_like;
       public         postgres    false    235            �           1259    24955 )   slack_app_slackworkspace_id_8d860fc1_like    INDEX     �   CREATE INDEX slack_app_slackworkspace_id_8d860fc1_like ON public.slack_app_slackworkspace USING btree (id varchar_pattern_ops);
 =   DROP INDEX public.slack_app_slackworkspace_id_8d860fc1_like;
       public         postgres    false    231            �           1259    24970 4   slack_app_slackworkspace_owners_empleado_id_6a048d79    INDEX     �   CREATE INDEX slack_app_slackworkspace_owners_empleado_id_6a048d79 ON public.slack_app_slackworkspace_owners USING btree (empleado_id);
 H   DROP INDEX public.slack_app_slackworkspace_owners_empleado_id_6a048d79;
       public         postgres    false    233            �           1259    24968 :   slack_app_slackworkspace_owners_slackworkspace_id_f8109673    INDEX     �   CREATE INDEX slack_app_slackworkspace_owners_slackworkspace_id_f8109673 ON public.slack_app_slackworkspace_owners USING btree (slackworkspace_id);
 N   DROP INDEX public.slack_app_slackworkspace_owners_slackworkspace_id_f8109673;
       public         postgres    false    233            �           1259    24969 ?   slack_app_slackworkspace_owners_slackworkspace_id_f8109673_like    INDEX     �   CREATE INDEX slack_app_slackworkspace_owners_slackworkspace_id_f8109673_like ON public.slack_app_slackworkspace_owners USING btree (slackworkspace_id varchar_pattern_ops);
 S   DROP INDEX public.slack_app_slackworkspace_owners_slackworkspace_id_f8109673_like;
       public         postgres    false    233            �           2606    24831 L   Menuapp_elegir_menu Menuapp_elegir_menu_id_empleado_id_5b3e39b1_fk_Menuapp_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_elegir_menu"
    ADD CONSTRAINT "Menuapp_elegir_menu_id_empleado_id_5b3e39b1_fk_Menuapp_e" FOREIGN KEY (id_empleado_id) REFERENCES public."Menuapp_empleado"(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public."Menuapp_elegir_menu" DROP CONSTRAINT "Menuapp_elegir_menu_id_empleado_id_5b3e39b1_fk_Menuapp_e";
       public       postgres    false    226    222    2949            �           2606    32901 N   Menuapp_elegir_menu Menuapp_elegir_menu_id_menu_id_6f7595c1_fk_Menuapp_menu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_elegir_menu"
    ADD CONSTRAINT "Menuapp_elegir_menu_id_menu_id_6f7595c1_fk_Menuapp_menu_id" FOREIGN KEY (id_menu_id) REFERENCES public."Menuapp_menu"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."Menuapp_elegir_menu" DROP CONSTRAINT "Menuapp_elegir_menu_id_menu_id_6f7595c1_fk_Menuapp_menu_id";
       public       postgres    false    2957    226    224            �           2606    24890 N   Menuapp_empleado_groups Menuapp_empleado_gro_empleado_id_fc475419_fk_Menuapp_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_empleado_groups"
    ADD CONSTRAINT "Menuapp_empleado_gro_empleado_id_fc475419_fk_Menuapp_e" FOREIGN KEY (empleado_id) REFERENCES public."Menuapp_empleado"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."Menuapp_empleado_groups" DROP CONSTRAINT "Menuapp_empleado_gro_empleado_id_fc475419_fk_Menuapp_e";
       public       postgres    false    228    2949    222            �           2606    24895 R   Menuapp_empleado_groups Menuapp_empleado_groups_group_id_8645717d_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_empleado_groups"
    ADD CONSTRAINT "Menuapp_empleado_groups_group_id_8645717d_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Menuapp_empleado_groups" DROP CONSTRAINT "Menuapp_empleado_groups_group_id_8645717d_fk_auth_group_id";
       public       postgres    false    228    203    2910            �           2606    24904 X   Menuapp_empleado_user_permissions Menuapp_empleado_use_empleado_id_99c09480_fk_Menuapp_e    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions"
    ADD CONSTRAINT "Menuapp_empleado_use_empleado_id_99c09480_fk_Menuapp_e" FOREIGN KEY (empleado_id) REFERENCES public."Menuapp_empleado"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions" DROP CONSTRAINT "Menuapp_empleado_use_empleado_id_99c09480_fk_Menuapp_e";
       public       postgres    false    2949    222    230            �           2606    24909 Z   Menuapp_empleado_user_permissions Menuapp_empleado_use_permission_id_e0103d3d_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions"
    ADD CONSTRAINT "Menuapp_empleado_use_permission_id_e0103d3d_fk_auth_perm" FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Menuapp_empleado_user_permissions" DROP CONSTRAINT "Menuapp_empleado_use_permission_id_e0103d3d_fk_auth_perm";
       public       postgres    false    201    2905    230            �           2606    32885 H   Menuapp_menu Menuapp_menu_id_almuerzo_id_bba4b4dc_fk_Menuapp_almuerzo_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_menu"
    ADD CONSTRAINT "Menuapp_menu_id_almuerzo_id_bba4b4dc_fk_Menuapp_almuerzo_id" FOREIGN KEY (id_almuerzo_id) REFERENCES public."Menuapp_almuerzo"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."Menuapp_menu" DROP CONSTRAINT "Menuapp_menu_id_almuerzo_id_bba4b4dc_fk_Menuapp_almuerzo_id";
       public       postgres    false    216    2943    224            �           2606    32890 H   Menuapp_menu Menuapp_menu_id_ensalada_id_d134b171_fk_Menuapp_ensalada_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_menu"
    ADD CONSTRAINT "Menuapp_menu_id_ensalada_id_d134b171_fk_Menuapp_ensalada_id" FOREIGN KEY (id_ensalada_id) REFERENCES public."Menuapp_ensalada"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."Menuapp_menu" DROP CONSTRAINT "Menuapp_menu_id_ensalada_id_d134b171_fk_Menuapp_ensalada_id";
       public       postgres    false    224    2945    218            �           2606    32895 D   Menuapp_menu Menuapp_menu_id_postre_id_0d7d1a5e_fk_Menuapp_postre_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Menuapp_menu"
    ADD CONSTRAINT "Menuapp_menu_id_postre_id_0d7d1a5e_fk_Menuapp_postre_id" FOREIGN KEY (id_postre_id) REFERENCES public."Menuapp_postre"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."Menuapp_menu" DROP CONSTRAINT "Menuapp_menu_id_postre_id_0d7d1a5e_fk_Menuapp_postre_id";
       public       postgres    false    220    224    2947            �           2606    24666 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    2905    205            �           2606    24661 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    203    2910    205            �           2606    24652 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    2900    199            �           2606    24681 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    2910    203            �           2606    24676 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    207    209    2918            �           2606    24695 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    211    2905    201            �           2606    24690 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    2918    207            �           2606    24714 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    213    199    2900            �           2606    24719 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    2918    213    207            �           2606    32857 K   djcelery_periodictask djcelery_periodictas_crontab_id_75609bab_fk_djcelery_    FK CONSTRAINT     �   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictas_crontab_id_75609bab_fk_djcelery_ FOREIGN KEY (crontab_id) REFERENCES public.djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictas_crontab_id_75609bab_fk_djcelery_;
       public       postgres    false    242    2995    238            �           2606    32862 L   djcelery_periodictask djcelery_periodictas_interval_id_b426ab02_fk_djcelery_    FK CONSTRAINT     �   ALTER TABLE ONLY public.djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictas_interval_id_b426ab02_fk_djcelery_ FOREIGN KEY (interval_id) REFERENCES public.djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictas_interval_id_b426ab02_fk_djcelery_;
       public       postgres    false    2997    240    242            �           2606    32852 E   djcelery_taskstate djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_    FK CONSTRAINT     �   ALTER TABLE ONLY public.djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_ FOREIGN KEY (worker_id) REFERENCES public.djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_worker_id_f7f57a05_fk_djcelery_;
       public       postgres    false    251    249    3036            �           2606    24978 X   slack_app_slackusermapping slack_app_slackuserm_slack_workspace_id_38295b16_fk_slack_app    FK CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackusermapping
    ADD CONSTRAINT slack_app_slackuserm_slack_workspace_id_38295b16_fk_slack_app FOREIGN KEY (slack_workspace_id) REFERENCES public.slack_app_slackworkspace(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.slack_app_slackusermapping DROP CONSTRAINT slack_app_slackuserm_slack_workspace_id_38295b16_fk_slack_app;
       public       postgres    false    2976    236    231            �           2606    24983 M   slack_app_slackusermapping slack_app_slackuserm_user_id_7f07dbc3_fk_Menuapp_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackusermapping
    ADD CONSTRAINT "slack_app_slackuserm_user_id_7f07dbc3_fk_Menuapp_e" FOREIGN KEY (user_id) REFERENCES public."Menuapp_empleado"(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.slack_app_slackusermapping DROP CONSTRAINT "slack_app_slackuserm_user_id_7f07dbc3_fk_Menuapp_e";
       public       postgres    false    236    222    2949            �           2606    24971 N   slack_app_slackwebhook slack_app_slackwebho_workspace_id_6ca4cf82_fk_slack_app    FK CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackwebhook
    ADD CONSTRAINT slack_app_slackwebho_workspace_id_6ca4cf82_fk_slack_app FOREIGN KEY (workspace_id) REFERENCES public.slack_app_slackworkspace(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.slack_app_slackwebhook DROP CONSTRAINT slack_app_slackwebho_workspace_id_6ca4cf82_fk_slack_app;
       public       postgres    false    231    2976    235            �           2606    24963 V   slack_app_slackworkspace_owners slack_app_slackworks_empleado_id_6a048d79_fk_Menuapp_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners
    ADD CONSTRAINT "slack_app_slackworks_empleado_id_6a048d79_fk_Menuapp_e" FOREIGN KEY (empleado_id) REFERENCES public."Menuapp_empleado"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners DROP CONSTRAINT "slack_app_slackworks_empleado_id_6a048d79_fk_Menuapp_e";
       public       postgres    false    233    222    2949            �           2606    24958 \   slack_app_slackworkspace_owners slack_app_slackworks_slackworkspace_id_f8109673_fk_slack_app    FK CONSTRAINT     �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners
    ADD CONSTRAINT slack_app_slackworks_slackworkspace_id_f8109673_fk_slack_app FOREIGN KEY (slackworkspace_id) REFERENCES public.slack_app_slackworkspace(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.slack_app_slackworkspace_owners DROP CONSTRAINT slack_app_slackworks_slackworkspace_id_f8109673_fk_slack_app;
       public       postgres    false    2976    233    231            �   P   x�31�I��I,��K-��21�t,*ʯ�L8��K�A��@vNN>�e�铚W���6�t��/*���K������ ��      �      x������ � �      �   �   x�u�Kk�@ ���+z�4�뺻
�61h"�n��(Zc4�Ҫ1鯯}]�����  �*�*P�A�Եi��1�\��þ��}���� �߽z1Qf`��ǤL3���1֩�8�"o��4���7���gGo�\�H��������gA�[o>��xf]�D�e��*��!X�E�D��Ⱦ��BM�TL�P&l6u���j�4��X1�
y '�,�� �`���*����ގ.}*.��n�����H[U��O/fZ      �      x������ � �      �      x������ � �      �   /   x�34�,��M,I��24�J�K��/�L�9sR�3JӁ�=... lF      �   5   x�34�4202�50�50Q00�# ��Ĉ�А�Ș����?N#3�=... �i�      �   N   x�32�H�KL/J��22�L.J�MUH**�IM
�r�&g�*䥖%��T�q$����BrjNjqIf^>'W� Rc      w      x������ � �      y      x������ � �      u   �  x�u�Q��0D��Sp�UIH��+���ʠ!a2���/�mw50��JT�.�����m�����[5���q�2 �w�ߝ���U ׹I�q��c ?[�%�e��Sv�t���zUk<��hN����	�{a����f��qx=U����\Z'_����CH�V\�r����1X~js���*=>'|:����ٴ�����O�[+��S�����m.hd�!�_�׊'ȗ����]���ڻ�V��0�t)���1�팑��A�3\e�;�v������P��́"S��l1X0�w���lc�%8KC]���1(:@r� �;`�C����O�S�x2���D�g"	���P:�d$p
���9�j~�$�J�?bi�2):ɴM�<B�#�)S����ގo׿��G<L�h��l"/��'��CVt��,'"2�؏k"
i�FBd d)��i=������y�};��y/Ge��.&�I`#H����&eUj E���9!����p~�|��]���+���ξ0���Ӿ6��-�l_�̍�^U������̉+�'�9}�l�CV�5�mU�����|XW�
�$�f]�0~���9e�PF���r�ԈJXV�Ԃ2Qˎ�rP��D��ڡio�d�\�npar����%N�|���.'%|����IA��Χ@;��O�)?~i�o�yuN��@��o�@Y�* ���[���ۏ��L�BҐI�x�ӽl͋���ek�t����z�k�*�����7A��8���c��N�x}9��;A�i�Y��^&
?�ɩ2~v�������K��3+�+Y��,V��*s�Ro?��)F�_ݤ�2��n���}�2��}Ԑe��}Q.'K�b�UYq���a����#fֻ�`�1b���bO�$.�������8"H��9�%P�?Fɛ@!z�������Tx	      {   �   x�m�_O�0���)|��ږ��41��0�p1�$&�Q���O/_\�O'99��R�+6�=�:gB��p6�N�>	�;K{|���L�[�(i5��zu�f�H�lVQ~LӴ�r�a�!�!􂺊��.�q�C��L_ ���m�V����Ϛ)�*\1|X[�l�y܎f-�c�+�`�M��/�cVh��"j�n�f#�|�'����c)("�'(�o�iS�tH��_��K�\�G��-����V�      }      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      s     x�m�Yn�0D�����l��
�Lت���S����V����FC��
;o�r���y�F�����1�~%=�)A��I��L���H~
8*�GZ�8�W
������3�yCv��(�	��>��v���Qo���lx���岤-K�A�J��X�j��eC���~�m�q}��D%�)s�T�n�8</ǳ��&��й�\�����M��.�4\���kv�whtu�)#4�o(�W��si�V�,A�� ����t      q   �  x���in�0�˧�"pf���A��YG��j	��wD9��8p���>�y3� ;���q<wqȄ�˦�Pe(P��B�*@��5J+xr�Y����
g�7+(Ǻl�I(G)���D^%���F���cݾE��>��LPjf�+����p˶�p�׶<p�X�hI�,�).�psy��7�	u|��ָT�Y�C�1���}]�li��:��*6'��!�9�r�+�.�i�K�CY=�H0Ʀ~��"����ܴ��8I��d��P[F�qN��¦�qϥB�V��l�Me���R�sd_0x<S�p�Nsq���ƶR�c߷���0��m�V��u��ff�$d�`�E�+�}J�[(��@���N};u��Hm��^1ৎ������fǣ�Վ�dC�|�ts+��]b�ُ�L�램�4�R�۪x�̛��>�����r�k3���O�݅�5�^0U�ge�a&�PZ��Y!4ċ��]!���R�[�� ��e� ���ի;=�[=�',r��p)L�-@�q�����r��r?�se6T������^���P��D�ĢS��ρ���_�ذd�P.��5ln*&�CMW ��R9p:K�f���zb[[=�
	��]��������Ħ�<�ɹa�r���9�������[�)�����i�r���v��/�P      �   J  x�Œ͎�0�����l'&��@4vD&�����؉�C��5]P�ꬻ�ҕ|$��#/M�*������JjTKܤU}з˦�.m��$ETQء��Boa���5/�&�w�J-T����	�Q�%Q�X�N$�݆-e(�{���~�z�6h}�`�����-V[�A�K���0��ק�;��lTv�rFO��"��L�C�ﲄ�i9�yB�@���hfօ�4CBM0Q��z+��(z	)�eKz�[!>����+t^�p��1tбݑ�
���di�F����e����s�����f=�8��".Z⑆0!y��גv�&ݛ
�Z�8h�d�P�/فx�O���!������m[E�W���f�����t��r;[�]ʭ^����࡛�`��m��<E�ǟ�8��4~SBqs��x�t�V�@���*���t�E�eT��ov�:c�� ,�;���☷�,2(w'u�e�� ]��Ѯ��#-�E��0;6|��_H����{t��yg2�Mf&W��"ݗ��`�RD�K%�\�ɩW���B��$�c�:�f��;�ŵ��� 8Fxl�r�c=��������7p      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     