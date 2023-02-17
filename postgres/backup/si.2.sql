PGDMP                         {            si    15.1    15.1     3           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            4           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            5           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            6           1262    16384    si    DATABASE     m   CREATE DATABASE si WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';
    DROP DATABASE si;
                root    false            �            1259    16488    NewsLetters    TABLE     �   CREATE TABLE public."NewsLetters" (
    id text NOT NULL,
    email text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "deletedAt" timestamp(3) without time zone
);
 !   DROP TABLE public."NewsLetters";
       public         heap    root    false            �            1259    16413    Reviews    TABLE     �   CREATE TABLE public."Reviews" (
    id text NOT NULL,
    author text NOT NULL,
    photo text NOT NULL,
    review text NOT NULL,
    stars integer NOT NULL
);
    DROP TABLE public."Reviews";
       public         heap    root    false            �            1259    16406    TermsAndConditions    TABLE     [   CREATE TABLE public."TermsAndConditions" (
    id text NOT NULL,
    term text NOT NULL
);
 (   DROP TABLE public."TermsAndConditions";
       public         heap    root    false            �            1259    16398    Users    TABLE     =  CREATE TABLE public."Users" (
    nif text NOT NULL,
    email text NOT NULL,
    name text NOT NULL,
    password text NOT NULL,
    "numberPhone" integer NOT NULL,
    avatar text,
    "isBlocked" timestamp(3) without time zone,
    "isCanceled" timestamp(3) without time zone,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL,
    "isAnual" boolean NOT NULL,
    "nextPayDay" timestamp(3) without time zone DEFAULT (now() + '7 days'::interval) NOT NULL,
    plan text NOT NULL
);
    DROP TABLE public."Users";
       public         heap    root    false            �            1259    16387    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    root    false            0          0    16488    NewsLetters 
   TABLE DATA           L   COPY public."NewsLetters" (id, email, "createdAt", "deletedAt") FROM stdin;
    public          root    false    218   g       /          0    16413    Reviews 
   TABLE DATA           E   COPY public."Reviews" (id, author, photo, review, stars) FROM stdin;
    public          root    false    217   �       .          0    16406    TermsAndConditions 
   TABLE DATA           8   COPY public."TermsAndConditions" (id, term) FROM stdin;
    public          root    false    216   �       -          0    16398    Users 
   TABLE DATA           �   COPY public."Users" (nif, email, name, password, "numberPhone", avatar, "isBlocked", "isCanceled", "createdAt", "updatedAt", "isAnual", "nextPayDay", plan) FROM stdin;
    public          root    false    215   �#       ,          0    16387    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          root    false    214   �#       �           2606    16495    NewsLetters NewsLetters_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."NewsLetters"
    ADD CONSTRAINT "NewsLetters_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."NewsLetters" DROP CONSTRAINT "NewsLetters_pkey";
       public            root    false    218            �           2606    16419    Reviews Reviews_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Reviews"
    ADD CONSTRAINT "Reviews_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Reviews" DROP CONSTRAINT "Reviews_pkey";
       public            root    false    217            �           2606    16412 *   TermsAndConditions TermsAndConditions_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."TermsAndConditions"
    ADD CONSTRAINT "TermsAndConditions_pkey" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public."TermsAndConditions" DROP CONSTRAINT "TermsAndConditions_pkey";
       public            root    false    216            �           2606    16405    Users Users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (nif);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            root    false    215            �           2606    16395 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            root    false    214            �           1259    16496    NewsLetters_email_key    INDEX     Y   CREATE UNIQUE INDEX "NewsLetters_email_key" ON public."NewsLetters" USING btree (email);
 +   DROP INDEX public."NewsLetters_email_key";
       public            root    false    218            �           1259    16422    TermsAndConditions_term_key    INDEX     e   CREATE UNIQUE INDEX "TermsAndConditions_term_key" ON public."TermsAndConditions" USING btree (term);
 1   DROP INDEX public."TermsAndConditions_term_key";
       public            root    false    216            �           1259    16421    Users_email_key    INDEX     M   CREATE UNIQUE INDEX "Users_email_key" ON public."Users" USING btree (email);
 %   DROP INDEX public."Users_email_key";
       public            root    false    215            �           1259    16420    Users_nif_key    INDEX     I   CREATE UNIQUE INDEX "Users_nif_key" ON public."Users" USING btree (nif);
 #   DROP INDEX public."Users_nif_key";
       public            root    false    215            0      x������ � �      /     x��U�n�6]k��fo���Dii�)P�YvsI^NH℔\����(�誻n�c������]@���E岪K�I��$B�6��y��.�F�]�׾����x�t���o钑��C�:M��m����%M�8bD8P�?~D��)��?�-_���̓�����Hq��@�&G�"L����D2>���/�����	y��,��"�w�DBِ(��j#А�SU���j�wa�3�5��	�w�-��}���a�S ke~0�	�r�h|��<�������r��7&���k�l1z\�E�L1:fp��|��$X�E`M�af��i}���lS&w���F�Ft�Y!�C�JW	mJeZ�,�*{?/�$xCqđ?�����=�P�{�U�o�9dWnp ����0~8�8���>��g?Y�䇋U�t@��/vn�U���ta�q��*J���DIME�j��&���V~�|<��C,z�̵i�B���9ƝZ�Z���*��~B��l���6�>-/��S��у&���O­�,���J���\^~�W.%�G#KeO�>V�=���ζ.�t�Y�E�qe�y�jT��ZU+K��Kv���۠3]��D.�������>=��9���diLي����V�*ZѺ�(M]6�dv���ݰ�����-gʢ�k'�C���t|���j�ڪJg/1�?����;�R���?���q����/[ws#Lc�{&ڼQ¶�2u��e������ޡ?h��v����U      .   �  x��VK��6]O���z���s #���ٔ�℁$*��1��Ibxa�WFN���$y%�x�Ec��̴Fj��}�QyZ��q��KH�X7U�t�1�IBu��O�Mp�4���~�l�z=L3G�=�j��\�G6��ʄ!(���W���,�q
��������q��(;=�L����+��l����^�я��:-A�U��r,��ϧ��ۤ�S����1�n�����˻��m]|�ߑ��@���hRM�wmn��}\x�{T7��G���f�w�*^�W��hImE01��m���pD	`�j��j��q�OUcm¦�yV�(�Lw�i5U�MQU���!MPj	���[���'��H�݀���϶�-�>���GZV x���C㊫�z#4�q��0���c+�xN�P�>^慸�d���i޸�`��L(��nڼ�e�ZJW����"�ӄb�p�3�4������C9\�0y��@X���Ǖ`�Sf�P����/ �������	<�^xi������'v-�ĩ�8�`a��6y�r��2Sd6��e�R-��U��f??�Wx���-Z�0�5_w
x���~AKh��h`=S����}�'P��i^3e�(��T�sMy��
ʛ��ݑ*A�g\HB����l�jv��]�#@�0���a:zz{������y�t�"�YR�Fgefta]�fk�iޖ���p|[4�����(���<g�Ȓ�t h�p�:� ��a�,eyNKP&�����҈�Aʂ�Ɲ)�1�J�Bd�~�ϧ�3�ֆt^��.Z["��D��W�IU�w���!D+
��&e<������.�_v]�
X2Hz􌤱'�g��$�{D��~F�O�kшE~rG9�c��r�R֥MҚ�)nKcX�������_�(-��|U��z�&��)sib��hST9��+uS�(�@ؗ5����MU!����m��}�h�/�{1�1$	�����Ӷ�Z.��G"��������(�$�;ރ*K���J]��rD�M�Z�k��wT�&��;I��ĕ�G�@�e�?!��M#0�h_گ�g�_`Ǻ2T��H�uɺ�L�MKmSUe����8��ڻJ��v��
-��&ԾM�����q�A�PzN�s������Ya.»�/RꚐ{^�Ǟ�(���.�o��h�/�����}r���M�p>VoE9��*��&I2n�3~\!F��_�{��=zw&�v������t�7��M      -      x������ � �      ,   �  x�u�Kj\1EǯW�yУ�R����JOB���G�&�&6h $
�suG�y�Z�c�bܲ��d8t��cMU�e\�5�q�qu�LMMQ<�d*L	�ʕҰ]q,�߰=?�~;�� o���؈�O?�^������o��^zh2w*Q}ۻ�,�b�6HGL�k� ���;N�e����rLf�Zڬ�-F�U�4�KO�(��Op3�������ߏ٩ ��;�oPK[U��Պ![���@�Pƃ��9�v��}�� �/���61Y�3D�K0�h�J�>�g!y��N����W���Z�Od�w���F���EԠ�(B�;4���*U�.�SΑ3T��F��n�m���c�Z�C���!�S��)��A���;w��������ŭ{�v�^����s˹6     