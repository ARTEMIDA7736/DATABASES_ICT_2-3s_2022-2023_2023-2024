PGDMP  !                
    {            GIBDD    16.0    16.0 4               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    GIBDD    DATABASE     �   CREATE DATABASE "GIBDD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "GIBDD";
                postgres    false            �            1259    16433    Car    TABLE     �   CREATE TABLE public."Car" (
    "WIN number" character varying(18) NOT NULL,
    "Engine number" character varying(18) NOT NULL,
    "ID model" integer NOT NULL
);
    DROP TABLE public."Car";
       public         heap    postgres    false            �            1259    16411 	   Car_model    TABLE     �   CREATE TABLE public."Car_model" (
    "Model ID" integer NOT NULL,
    "Label" character varying(40) NOT NULL,
    "Body type" character varying(20) NOT NULL,
    "Year of release" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);
    DROP TABLE public."Car_model";
       public         heap    postgres    false            �            1259    16404 	   Car_owner    TABLE     /  CREATE TABLE public."Car_owner" (
    "DL number" integer NOT NULL,
    "Driver_name_surname" character varying(255) NOT NULL,
    "Adress" character varying(255) NOT NULL,
    "Telephone number" character varying(15) NOT NULL,
    "Date of birth" date NOT NULL,
    "Passport" character varying(15)
);
    DROP TABLE public."Car_owner";
       public         heap    postgres    false            �            1259    16524    Crash    TABLE     �   CREATE TABLE public."Crash" (
    "Crash ID" integer NOT NULL,
    "Service_number" character varying(18) NOT NULL,
    "Crash_date" date NOT NULL,
    "Crah_district" character varying(50) NOT NULL,
    "Crash_street" character varying(50) NOT NULL
);
    DROP TABLE public."Crash";
       public         heap    postgres    false            �            1259    16609    Participants status    TABLE     �   CREATE TABLE public."Participants status" (
    "Crash_ID" integer NOT NULL,
    "PTS number" character varying(20) NOT NULL,
    "Participants status" character varying(50) NOT NULL,
    "Participants_ID" integer NOT NULL
);
 )   DROP TABLE public."Participants status";
       public         heap    postgres    false            �            1259    16421    Police department    TABLE     �   CREATE TABLE public."Police department" (
    "Department_ID" integer NOT NULL,
    "Department_adress" character varying NOT NULL
);
 '   DROP TABLE public."Police department";
       public         heap    postgres    false            �            1259    16416 	   Policemen    TABLE       CREATE TABLE public."Policemen" (
    "Personal number" character varying(18) NOT NULL,
    "Policeman_name_surname" character varying(255) NOT NULL,
    "Rank" character varying(50) NOT NULL,
    "Department_ID" integer NOT NULL,
    "Passport" character varying(15)
);
    DROP TABLE public."Policemen";
       public         heap    postgres    false            �            1259    16565    Registered_car    TABLE     +  CREATE TABLE public."Registered_car" (
    "PTS number" character varying(20) NOT NULL,
    "WIN number" character varying(20) NOT NULL,
    "DL number" integer NOT NULL,
    "Car number" character varying(20) NOT NULL,
    "Registration_date" date NOT NULL,
    "Department_ID" integer NOT NULL
);
 $   DROP TABLE public."Registered_car";
       public         heap    postgres    false            �            1259    16443    Rights deprivation    TABLE     �   CREATE TABLE public."Rights deprivation" (
    "Procedure_ID" integer NOT NULL,
    "DL number" integer NOT NULL,
    "Loss_date" date NOT NULL,
    "Return_date" date NOT NULL
);
 (   DROP TABLE public."Rights deprivation";
       public         heap    postgres    false            �            1259    16539 	   Violation    TABLE     d  CREATE TABLE public."Violation" (
    "Violation_ID" integer NOT NULL,
    "PTS number" character varying(18) NOT NULL,
    "Personal number" character varying(18) NOT NULL,
    "Payment status" character varying(3) NOT NULL,
    "Violation_place" character varying(255) NOT NULL,
    "Violation_date" date NOT NULL,
    "Violation_id" integer NOT NULL
);
    DROP TABLE public."Violation";
       public         heap    postgres    false            �            1259    16399    Violation_types    TABLE     �   CREATE TABLE public."Violation_types" (
    "Violation_ID" integer NOT NULL,
    "Violation_type" character varying(100) NOT NULL,
    "Violation_name" character varying(500) NOT NULL,
    "Penalty" integer,
    "DL_loss_time" integer NOT NULL
);
 %   DROP TABLE public."Violation_types";
       public         heap    postgres    false            �          0    16433    Car 
   TABLE DATA           J   COPY public."Car" ("WIN number", "Engine number", "ID model") FROM stdin;
    public          postgres    false    220   �E       �          0    16411 	   Car_model 
   TABLE DATA           b   COPY public."Car_model" ("Model ID", "Label", "Body type", "Year of release", "Name") FROM stdin;
    public          postgres    false    217   4F       �          0    16404 	   Car_owner 
   TABLE DATA           �   COPY public."Car_owner" ("DL number", "Driver_name_surname", "Adress", "Telephone number", "Date of birth", "Passport") FROM stdin;
    public          postgres    false    216   �F       �          0    16524    Crash 
   TABLE DATA           n   COPY public."Crash" ("Crash ID", "Service_number", "Crash_date", "Crah_district", "Crash_street") FROM stdin;
    public          postgres    false    222   H                 0    16609    Participants status 
   TABLE DATA           s   COPY public."Participants status" ("Crash_ID", "PTS number", "Participants status", "Participants_ID") FROM stdin;
    public          postgres    false    225   VH       �          0    16421    Police department 
   TABLE DATA           S   COPY public."Police department" ("Department_ID", "Department_adress") FROM stdin;
    public          postgres    false    219   �H       �          0    16416 	   Policemen 
   TABLE DATA           w   COPY public."Policemen" ("Personal number", "Policeman_name_surname", "Rank", "Department_ID", "Passport") FROM stdin;
    public          postgres    false    218   �H                 0    16565    Registered_car 
   TABLE DATA           �   COPY public."Registered_car" ("PTS number", "WIN number", "DL number", "Car number", "Registration_date", "Department_ID") FROM stdin;
    public          postgres    false    224   �I       �          0    16443    Rights deprivation 
   TABLE DATA           g   COPY public."Rights deprivation" ("Procedure_ID", "DL number", "Loss_date", "Return_date") FROM stdin;
    public          postgres    false    221   J                  0    16539 	   Violation 
   TABLE DATA           �   COPY public."Violation" ("Violation_ID", "PTS number", "Personal number", "Payment status", "Violation_place", "Violation_date", "Violation_id") FROM stdin;
    public          postgres    false    223   ;J       �          0    16399    Violation_types 
   TABLE DATA           z   COPY public."Violation_types" ("Violation_ID", "Violation_type", "Violation_name", "Penalty", "DL_loss_time") FROM stdin;
    public          postgres    false    215   �J       H           2606    16415    Car_model Car_model_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Car_model"
    ADD CONSTRAINT "Car_model_pkey" PRIMARY KEY ("Model ID");
 F   ALTER TABLE ONLY public."Car_model" DROP CONSTRAINT "Car_model_pkey";
       public            postgres    false    217            D           2606    16586 "   Car_owner Car_owner_DL number__key 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Car_owner"
    ADD CONSTRAINT "Car_owner_DL number__key" UNIQUE ("DL number") INCLUDE ("DL number");
 P   ALTER TABLE ONLY public."Car_owner" DROP CONSTRAINT "Car_owner_DL number__key";
       public            postgres    false    216            F           2606    16410    Car_owner Car_owner_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Car_owner"
    ADD CONSTRAINT "Car_owner_pkey" PRIMARY KEY ("DL number");
 F   ALTER TABLE ONLY public."Car_owner" DROP CONSTRAINT "Car_owner_pkey";
       public            postgres    false    216            P           2606    16437    Car Car_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "Car_pkey" PRIMARY KEY ("WIN number");
 :   ALTER TABLE ONLY public."Car" DROP CONSTRAINT "Car_pkey";
       public            postgres    false    220            V           2606    16601    Crash Crash_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Crash"
    ADD CONSTRAINT "Crash_pkey" PRIMARY KEY ("Crash ID") INCLUDE ("Crash ID");
 >   ALTER TABLE ONLY public."Crash" DROP CONSTRAINT "Crash_pkey";
       public            postgres    false    222            T           2606    16447    Rights deprivation DL_loss_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Rights deprivation"
    ADD CONSTRAINT "DL_loss_pkey" PRIMARY KEY ("Procedure_ID", "DL number");
 M   ALTER TABLE ONLY public."Rights deprivation" DROP CONSTRAINT "DL_loss_pkey";
       public            postgres    false    221    221            N           2606    16427 !   Police department Department_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Police department"
    ADD CONSTRAINT "Department_pkey" PRIMARY KEY ("Department_ID");
 O   ALTER TABLE ONLY public."Police department" DROP CONSTRAINT "Department_pkey";
       public            postgres    false    219            X           2606    16608    Violation PTS number 
   CONSTRAINT     {   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "PTS number" PRIMARY KEY ("Violation_ID") INCLUDE ("Violation_ID");
 B   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "PTS number";
       public            postgres    false    223            \           2606    16632 "   Participants status Participant ID 
   CONSTRAINT     �   ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "Participant ID" PRIMARY KEY ("Participants_ID") INCLUDE ("Participants_ID");
 P   ALTER TABLE ONLY public."Participants status" DROP CONSTRAINT "Participant ID";
       public            postgres    false    225            J           2606    16592    Policemen Personal number 
   CONSTRAINT     �   ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Personal number" UNIQUE ("Personal number") INCLUDE ("Personal number");
 G   ALTER TABLE ONLY public."Policemen" DROP CONSTRAINT "Personal number";
       public            postgres    false    218            L           2606    16507    Policemen Policemans_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Policemans_pkey" PRIMARY KEY ("Personal number");
 G   ALTER TABLE ONLY public."Policemen" DROP CONSTRAINT "Policemans_pkey";
       public            postgres    false    218            Z           2606    16569 "   Registered_car Registered_car_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "Registered_car_pkey" PRIMARY KEY ("PTS number");
 P   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "Registered_car_pkey";
       public            postgres    false    224            B           2606    16403 $   Violation_types Violation_types_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Violation_types"
    ADD CONSTRAINT "Violation_types_pkey" PRIMARY KEY ("Violation_ID");
 R   ALTER TABLE ONLY public."Violation_types" DROP CONSTRAINT "Violation_types_pkey";
       public            postgres    false    215            R           2606    16594    Car WIN 
   CONSTRAINT     e   ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "WIN" UNIQUE ("WIN number") INCLUDE ("WIN number");
 5   ALTER TABLE ONLY public."Car" DROP CONSTRAINT "WIN";
       public            postgres    false    220            g           2606    16619    Participants status Crash ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "Crash ID" FOREIGN KEY ("Crash_ID") REFERENCES public."Crash"("Crash ID");
 J   ALTER TABLE ONLY public."Participants status" DROP CONSTRAINT "Crash ID";
       public          postgres    false    222    225    4694            _           2606    16448    Rights deprivation DL number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Rights deprivation"
    ADD CONSTRAINT "DL number" FOREIGN KEY ("DL number") REFERENCES public."Car_owner"("DL number");
 J   ALTER TABLE ONLY public."Rights deprivation" DROP CONSTRAINT "DL number";
       public          postgres    false    4678    216    221            d           2606    16575    Registered_car DL number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "DL number" FOREIGN KEY ("DL number") REFERENCES public."Car_owner"("DL number");
 F   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "DL number";
       public          postgres    false    216    4678    224            ]           2606    16428    Policemen Department ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Department ID" FOREIGN KEY ("Department_ID") REFERENCES public."Police department"("Department_ID") NOT VALID;
 E   ALTER TABLE ONLY public."Policemen" DROP CONSTRAINT "Department ID";
       public          postgres    false    219    4686    218            e           2606    16580    Registered_car Department ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "Department ID" FOREIGN KEY ("Department_ID") REFERENCES public."Police department"("Department_ID");
 J   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "Department ID";
       public          postgres    false    224    4686    219            ^           2606    16438    Car Model_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "Model_id" FOREIGN KEY ("ID model") REFERENCES public."Car_model"("Model ID");
 :   ALTER TABLE ONLY public."Car" DROP CONSTRAINT "Model_id";
       public          postgres    false    220    217    4680            h           2606    16614    Participants status PTS    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "PTS" FOREIGN KEY ("PTS number") REFERENCES public."Registered_car"("PTS number");
 E   ALTER TABLE ONLY public."Participants status" DROP CONSTRAINT "PTS";
       public          postgres    false    225    224    4698            a           2606    16549    Violation Personal number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Personal number" FOREIGN KEY ("Personal number") REFERENCES public."Policemen"("Personal number");
 G   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "Personal number";
       public          postgres    false    4684    223    218            b           2606    16554    Violation Violation ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Violation ID" FOREIGN KEY ("Violation_id") REFERENCES public."Violation_types"("Violation_ID");
 D   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "Violation ID";
       public          postgres    false    215    223    4674            c           2606    16602    Violation Violation PTS    FK CONSTRAINT     �   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Violation PTS" FOREIGN KEY ("PTS number") REFERENCES public."Registered_car"("PTS number") NOT VALID;
 E   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "Violation PTS";
       public          postgres    false    4698    223    224            f           2606    16570    Registered_car WIN number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "WIN number" FOREIGN KEY ("WIN number") REFERENCES public."Car"("WIN number");
 G   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "WIN number";
       public          postgres    false    4688    224    220            `           2606    16534 #   Crash Табельный номер    FK CONSTRAINT     �   ALTER TABLE ONLY public."Crash"
    ADD CONSTRAINT "Табельный номер" FOREIGN KEY ("Service_number") REFERENCES public."Policemen"("Personal number");
 Q   ALTER TABLE ONLY public."Crash" DROP CONSTRAINT "Табельный номер";
       public          postgres    false    4684    222    218            �   h   x�%��
1E�u�.J�{��e�#������9,�<��.���x'�wP��育��vF��P�R��l���A]����z3�b�������F��}����"�      �   b   x�3�t�缰���[.l�������$�`��jl�eb��!� r�jL�j�RM̸�9KS2A��^�z��b���@Ż�
!�
��
�\1z\\\ ��+9      �   N  x�}�]J1ǟ��Ȼ���;w�<ú�>(Ԃ�`A�����c�&7r��V)�a	�	���gQic��Ls��@��}!��R�n�Q���#5iLC�����V�>�M�D%�|tB�A� �FU�0Hd�6�4���LY��4}t!��tI��L��N��"�k�D��
��`�
�k�¸�`�B�Sp�T�<�;�GC_�gKzg�>�Ќg�_�z ����`Kpo�d��=��U�/���6Mh-��<�eT_P�}@���2�n�J�����P�[q� �xtQ���(�\���#�4�^��L�����k��-C��h#�RFF����WU��,�      �   B   x�3�4�4202�54�50漰���{/6]l�����=@v�����\� ��ta���9W� #->            x�3�40�0��c3#cCCN ����� Yi�      �   Z   x�3�0�bÅ}�^�ta+���b�]v\ةpa?H��a+P�I�Ēˈ����/��va��@}{�zA��Mؠ`yaW� h�7�      �   �   x�=�M�0���)zC)P�g�BLؘ�����	4D��+��ș�4�o:�{Z`��/У�p�#L|���^|�W���@���Bh�D�Q�F�28cͯ��/Y����#N���~�[�rή��*��8���PT��7`R����h&FzGe��#�����Z��<�6��LJ��B��         @   x�30�0��c3#cCCNC#��pWS3H�s^�jh`pa҅Y��FFƺƺ �\1z\\\ /�      �   $   x�3�4426153�4202�54�52F0M�b���� {/:          V   x�Ǳ	�0��n�,ɿ��8��:�`��Z(���o#�u��+��Y��w,>����3����GV^||
hŒ��d�U� �w#!      �   �  x�͓AN�@EדS��
�-H�ô�ڂ"5' \ ��e�����I��v���F�������z&G5/��U���/9���+�Z�ީ&ϥ�W�8��"���I9��q�[s����Β��� ��3�tM��b�u���E1Tw�!$	�~���֋�
�4H
P��:.��j�HM":5��$V.-@%����\X�t��H�lı�Ѷy�ԫ��(�B5jd9���nw�`�AY\\O��1&"�pi@��M�r+q�$)警F�h1α-�O�������u��h��(N�

2u�����H�W�N�NB�8�,�I��?��+���N����.��7i5�9�Ķ��x�O�k9�s�e��s.t�F�p�J��<�M/�K�e��ֺ�q�b�|:'>1=�v(U�UC�ܫ�$I>��     