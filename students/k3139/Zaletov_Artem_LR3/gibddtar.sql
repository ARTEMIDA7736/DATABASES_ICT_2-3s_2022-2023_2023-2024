toc.dat                                                                                             0000600 0004000 0002000 00000042504 14521206600 0014440 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   7    
            
    {            GIBDD    16.0    16.0 4               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    16398    GIBDD    DATABASE     �   CREATE DATABASE "GIBDD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "GIBDD";
                postgres    false         �            1259    16433    Car    TABLE     �   CREATE TABLE public."Car" (
    "WIN number" character varying(18) NOT NULL,
    "Engine number" character varying(18) NOT NULL,
    "ID model" integer NOT NULL
);
    DROP TABLE public."Car";
       public         heap    postgres    false         �            1259    16411 	   Car_model    TABLE     �   CREATE TABLE public."Car_model" (
    "Model ID" integer NOT NULL,
    "Label" character varying(40) NOT NULL,
    "Body type" character varying(20) NOT NULL,
    "Year of release" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);
    DROP TABLE public."Car_model";
       public         heap    postgres    false         �            1259    16404 	   Car_owner    TABLE     /  CREATE TABLE public."Car_owner" (
    "DL number" integer NOT NULL,
    "Driver_name_surname" character varying(255) NOT NULL,
    "Adress" character varying(255) NOT NULL,
    "Telephone number" character varying(15) NOT NULL,
    "Date of birth" date NOT NULL,
    "Passport" character varying(15)
);
    DROP TABLE public."Car_owner";
       public         heap    postgres    false         �            1259    16524    Crash    TABLE     �   CREATE TABLE public."Crash" (
    "Crash ID" integer NOT NULL,
    "Service_number" character varying(18) NOT NULL,
    "Crash_date" date NOT NULL,
    "Crah_district" character varying(50) NOT NULL,
    "Crash_street" character varying(50) NOT NULL
);
    DROP TABLE public."Crash";
       public         heap    postgres    false         �            1259    16609    Participants status    TABLE     �   CREATE TABLE public."Participants status" (
    "Crash_ID" integer NOT NULL,
    "PTS number" character varying(20) NOT NULL,
    "Participants status" character varying(50) NOT NULL,
    "Participants_ID" integer NOT NULL
);
 )   DROP TABLE public."Participants status";
       public         heap    postgres    false         �            1259    16421    Police department    TABLE     �   CREATE TABLE public."Police department" (
    "Department_ID" integer NOT NULL,
    "Department_adress" character varying NOT NULL
);
 '   DROP TABLE public."Police department";
       public         heap    postgres    false         �            1259    16416 	   Policemen    TABLE       CREATE TABLE public."Policemen" (
    "Personal number" character varying(18) NOT NULL,
    "Policeman_name_surname" character varying(255) NOT NULL,
    "Rank" character varying(50) NOT NULL,
    "Department_ID" integer NOT NULL,
    "Passport" character varying(15)
);
    DROP TABLE public."Policemen";
       public         heap    postgres    false         �            1259    16565    Registered_car    TABLE     +  CREATE TABLE public."Registered_car" (
    "PTS number" character varying(20) NOT NULL,
    "WIN number" character varying(20) NOT NULL,
    "DL number" integer NOT NULL,
    "Car number" character varying(20) NOT NULL,
    "Registration_date" date NOT NULL,
    "Department_ID" integer NOT NULL
);
 $   DROP TABLE public."Registered_car";
       public         heap    postgres    false         �            1259    16443    Rights deprivation    TABLE     �   CREATE TABLE public."Rights deprivation" (
    "Procedure_ID" integer NOT NULL,
    "DL number" integer NOT NULL,
    "Loss_date" date NOT NULL,
    "Return_date" date NOT NULL
);
 (   DROP TABLE public."Rights deprivation";
       public         heap    postgres    false         �            1259    16539 	   Violation    TABLE     d  CREATE TABLE public."Violation" (
    "Violation_ID" integer NOT NULL,
    "PTS number" character varying(18) NOT NULL,
    "Personal number" character varying(18) NOT NULL,
    "Payment status" character varying(3) NOT NULL,
    "Violation_place" character varying(255) NOT NULL,
    "Violation_date" date NOT NULL,
    "Violation_id" integer NOT NULL
);
    DROP TABLE public."Violation";
       public         heap    postgres    false         �            1259    16399    Violation_types    TABLE     �   CREATE TABLE public."Violation_types" (
    "Violation_ID" integer NOT NULL,
    "Violation_type" character varying(100) NOT NULL,
    "Violation_name" character varying(500) NOT NULL,
    "Penalty" integer,
    "DL_loss_time" integer NOT NULL
);
 %   DROP TABLE public."Violation_types";
       public         heap    postgres    false         �          0    16433    Car 
   TABLE DATA           J   COPY public."Car" ("WIN number", "Engine number", "ID model") FROM stdin;
    public          postgres    false    220       4861.dat �          0    16411 	   Car_model 
   TABLE DATA           b   COPY public."Car_model" ("Model ID", "Label", "Body type", "Year of release", "Name") FROM stdin;
    public          postgres    false    217       4858.dat �          0    16404 	   Car_owner 
   TABLE DATA           �   COPY public."Car_owner" ("DL number", "Driver_name_surname", "Adress", "Telephone number", "Date of birth", "Passport") FROM stdin;
    public          postgres    false    216       4857.dat �          0    16524    Crash 
   TABLE DATA           n   COPY public."Crash" ("Crash ID", "Service_number", "Crash_date", "Crah_district", "Crash_street") FROM stdin;
    public          postgres    false    222       4863.dat           0    16609    Participants status 
   TABLE DATA           s   COPY public."Participants status" ("Crash_ID", "PTS number", "Participants status", "Participants_ID") FROM stdin;
    public          postgres    false    225       4866.dat �          0    16421    Police department 
   TABLE DATA           S   COPY public."Police department" ("Department_ID", "Department_adress") FROM stdin;
    public          postgres    false    219       4860.dat �          0    16416 	   Policemen 
   TABLE DATA           w   COPY public."Policemen" ("Personal number", "Policeman_name_surname", "Rank", "Department_ID", "Passport") FROM stdin;
    public          postgres    false    218       4859.dat           0    16565    Registered_car 
   TABLE DATA           �   COPY public."Registered_car" ("PTS number", "WIN number", "DL number", "Car number", "Registration_date", "Department_ID") FROM stdin;
    public          postgres    false    224       4865.dat �          0    16443    Rights deprivation 
   TABLE DATA           g   COPY public."Rights deprivation" ("Procedure_ID", "DL number", "Loss_date", "Return_date") FROM stdin;
    public          postgres    false    221       4862.dat            0    16539 	   Violation 
   TABLE DATA           �   COPY public."Violation" ("Violation_ID", "PTS number", "Personal number", "Payment status", "Violation_place", "Violation_date", "Violation_id") FROM stdin;
    public          postgres    false    223       4864.dat �          0    16399    Violation_types 
   TABLE DATA           z   COPY public."Violation_types" ("Violation_ID", "Violation_type", "Violation_name", "Penalty", "DL_loss_time") FROM stdin;
    public          postgres    false    215       4856.dat H           2606    16415    Car_model Car_model_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Car_model"
    ADD CONSTRAINT "Car_model_pkey" PRIMARY KEY ("Model ID");
 F   ALTER TABLE ONLY public."Car_model" DROP CONSTRAINT "Car_model_pkey";
       public            postgres    false    217         D           2606    16586 "   Car_owner Car_owner_DL number__key 
   CONSTRAINT     ~   ALTER TABLE ONLY public."Car_owner"
    ADD CONSTRAINT "Car_owner_DL number__key" UNIQUE ("DL number") INCLUDE ("DL number");
 P   ALTER TABLE ONLY public."Car_owner" DROP CONSTRAINT "Car_owner_DL number__key";
       public            postgres    false    216         F           2606    16410    Car_owner Car_owner_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Car_owner"
    ADD CONSTRAINT "Car_owner_pkey" PRIMARY KEY ("DL number");
 F   ALTER TABLE ONLY public."Car_owner" DROP CONSTRAINT "Car_owner_pkey";
       public            postgres    false    216         P           2606    16437    Car Car_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "Car_pkey" PRIMARY KEY ("WIN number");
 :   ALTER TABLE ONLY public."Car" DROP CONSTRAINT "Car_pkey";
       public            postgres    false    220         V           2606    16601    Crash Crash_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Crash"
    ADD CONSTRAINT "Crash_pkey" PRIMARY KEY ("Crash ID") INCLUDE ("Crash ID");
 >   ALTER TABLE ONLY public."Crash" DROP CONSTRAINT "Crash_pkey";
       public            postgres    false    222         T           2606    16447    Rights deprivation DL_loss_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Rights deprivation"
    ADD CONSTRAINT "DL_loss_pkey" PRIMARY KEY ("Procedure_ID", "DL number");
 M   ALTER TABLE ONLY public."Rights deprivation" DROP CONSTRAINT "DL_loss_pkey";
       public            postgres    false    221    221         N           2606    16427 !   Police department Department_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."Police department"
    ADD CONSTRAINT "Department_pkey" PRIMARY KEY ("Department_ID");
 O   ALTER TABLE ONLY public."Police department" DROP CONSTRAINT "Department_pkey";
       public            postgres    false    219         X           2606    16608    Violation PTS number 
   CONSTRAINT     {   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "PTS number" PRIMARY KEY ("Violation_ID") INCLUDE ("Violation_ID");
 B   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "PTS number";
       public            postgres    false    223         \           2606    16632 "   Participants status Participant ID 
   CONSTRAINT     �   ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "Participant ID" PRIMARY KEY ("Participants_ID") INCLUDE ("Participants_ID");
 P   ALTER TABLE ONLY public."Participants status" DROP CONSTRAINT "Participant ID";
       public            postgres    false    225         J           2606    16592    Policemen Personal number 
   CONSTRAINT     �   ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Personal number" UNIQUE ("Personal number") INCLUDE ("Personal number");
 G   ALTER TABLE ONLY public."Policemen" DROP CONSTRAINT "Personal number";
       public            postgres    false    218         L           2606    16507    Policemen Policemans_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Policemans_pkey" PRIMARY KEY ("Personal number");
 G   ALTER TABLE ONLY public."Policemen" DROP CONSTRAINT "Policemans_pkey";
       public            postgres    false    218         Z           2606    16569 "   Registered_car Registered_car_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "Registered_car_pkey" PRIMARY KEY ("PTS number");
 P   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "Registered_car_pkey";
       public            postgres    false    224         B           2606    16403 $   Violation_types Violation_types_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Violation_types"
    ADD CONSTRAINT "Violation_types_pkey" PRIMARY KEY ("Violation_ID");
 R   ALTER TABLE ONLY public."Violation_types" DROP CONSTRAINT "Violation_types_pkey";
       public            postgres    false    215         R           2606    16594    Car WIN 
   CONSTRAINT     e   ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "WIN" UNIQUE ("WIN number") INCLUDE ("WIN number");
 5   ALTER TABLE ONLY public."Car" DROP CONSTRAINT "WIN";
       public            postgres    false    220         g           2606    16619    Participants status Crash ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "Crash ID" FOREIGN KEY ("Crash_ID") REFERENCES public."Crash"("Crash ID");
 J   ALTER TABLE ONLY public."Participants status" DROP CONSTRAINT "Crash ID";
       public          postgres    false    222    225    4694         _           2606    16448    Rights deprivation DL number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Rights deprivation"
    ADD CONSTRAINT "DL number" FOREIGN KEY ("DL number") REFERENCES public."Car_owner"("DL number");
 J   ALTER TABLE ONLY public."Rights deprivation" DROP CONSTRAINT "DL number";
       public          postgres    false    4678    216    221         d           2606    16575    Registered_car DL number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "DL number" FOREIGN KEY ("DL number") REFERENCES public."Car_owner"("DL number");
 F   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "DL number";
       public          postgres    false    216    4678    224         ]           2606    16428    Policemen Department ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Department ID" FOREIGN KEY ("Department_ID") REFERENCES public."Police department"("Department_ID") NOT VALID;
 E   ALTER TABLE ONLY public."Policemen" DROP CONSTRAINT "Department ID";
       public          postgres    false    219    4686    218         e           2606    16580    Registered_car Department ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "Department ID" FOREIGN KEY ("Department_ID") REFERENCES public."Police department"("Department_ID");
 J   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "Department ID";
       public          postgres    false    224    4686    219         ^           2606    16438    Car Model_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "Model_id" FOREIGN KEY ("ID model") REFERENCES public."Car_model"("Model ID");
 :   ALTER TABLE ONLY public."Car" DROP CONSTRAINT "Model_id";
       public          postgres    false    220    217    4680         h           2606    16614    Participants status PTS    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "PTS" FOREIGN KEY ("PTS number") REFERENCES public."Registered_car"("PTS number");
 E   ALTER TABLE ONLY public."Participants status" DROP CONSTRAINT "PTS";
       public          postgres    false    225    224    4698         a           2606    16549    Violation Personal number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Personal number" FOREIGN KEY ("Personal number") REFERENCES public."Policemen"("Personal number");
 G   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "Personal number";
       public          postgres    false    4684    223    218         b           2606    16554    Violation Violation ID    FK CONSTRAINT     �   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Violation ID" FOREIGN KEY ("Violation_id") REFERENCES public."Violation_types"("Violation_ID");
 D   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "Violation ID";
       public          postgres    false    215    223    4674         c           2606    16602    Violation Violation PTS    FK CONSTRAINT     �   ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Violation PTS" FOREIGN KEY ("PTS number") REFERENCES public."Registered_car"("PTS number") NOT VALID;
 E   ALTER TABLE ONLY public."Violation" DROP CONSTRAINT "Violation PTS";
       public          postgres    false    4698    223    224         f           2606    16570    Registered_car WIN number    FK CONSTRAINT     �   ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "WIN number" FOREIGN KEY ("WIN number") REFERENCES public."Car"("WIN number");
 G   ALTER TABLE ONLY public."Registered_car" DROP CONSTRAINT "WIN number";
       public          postgres    false    4688    224    220         `           2606    16534 #   Crash Табельный номер    FK CONSTRAINT     �   ALTER TABLE ONLY public."Crash"
    ADD CONSTRAINT "Табельный номер" FOREIGN KEY ("Service_number") REFERENCES public."Policemen"("Personal number");
 Q   ALTER TABLE ONLY public."Crash" DROP CONSTRAINT "Табельный номер";
       public          postgres    false    4684    222    218                                                                                                                                                                                                    4861.dat                                                                                            0000600 0004000 0002000 00000000166 14521206600 0014253 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1FUJA6CV74DM34063	284476A	3
JH4KA4650LC000937	SC36E-1000324	2
JH4KA2640HC004148	028103373N	1
123QWE456	321567Q	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                          4858.dat                                                                                            0000600 0004000 0002000 00000000165 14521206600 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	BMW	Седан	2003	BMW 5 e39
2	BMW\n	Седан\n	2005	BMW 3 e46
3	Audi\n	Хетчбек\n	2013	Audi A3 (8P)
\.


                                                                                                                                                                                                                                                                                                                                                                                                           4857.dat                                                                                            0000600 0004000 0002000 00000001150 14521206600 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1234567	Иванов Иван Иванович	Серебряный бульвар 12	+79650897834	2001-12-03	4018 134534
1234565	Михайлов Иван Иванович\n	Проспект ветеранов к153	+79656578501	2001-03-21	4618 147216
1234566	Сергеев Иван Иванович	Биржевая Улица 14\n	+79657005804	1996-05-03	4745 501529
1234569	Залетов Артём Дмитриевич	Улица Ленина 15	+79652329401	1998-02-02	4680 471692
1234568	Сергеев Сергей Сергеевич	Улица Марата 13\n	+79652692357\n	2000-11-04	4224 941017
\.


                                                                                                                                                                                                                                                                                                                                                                                                                        4863.dat                                                                                            0000600 0004000 0002000 00000000073 14521206600 0014252 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	2023-11-03	Центральный	Марата 17
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     4866.dat                                                                                            0000600 0004000 0002000 00000000030 14521206600 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	02КР362311	1	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        4860.dat                                                                                            0000600 0004000 0002000 00000000132 14521206600 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Кронверкский проспект 49
2	Улица Ломоносова 9М
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                      4859.dat                                                                                            0000600 0004000 0002000 00000000365 14521206600 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Деревсков Денис Климентьевич	Сержант	1	4063 170339
2	Левтев Ефим Степанович	Рядовой\n	1	4978 568220
3	Веточкин Яков Никифорович	Майор\n	2	4777 684175
\.


                                                                                                                                                                                                                                                                           4865.dat                                                                                            0000600 0004000 0002000 00000000075 14521206600 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        02КР362311	123QWE456	1234567	Е100ВК37	2023-03-11	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                   4862.dat                                                                                            0000600 0004000 0002000 00000000045 14521206600 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1234567	2023-10-23	2023-10-24
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           4864.dat                                                                                            0000600 0004000 0002000 00000000116 14521206600 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	02КР362311	1	0	Загородный проспект 15	2023-11-02	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  4856.dat                                                                                            0000600 0004000 0002000 00000002244 14521206600 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        4	Неисправности автомобиля	Наезд на сплошную	5000	12
3	Отсутствие документов и регистрации автомобиля	Управление транспортным средством, на котором установлены стекла (в том числе покрытые прозрачными цветными пленками), светопропускание которых не соответствует требованиям технического регламента о безопасности колесных транспортных средств	500	0
2	Отсутствие документов и регистрации автомобиля	Передача управления транспортным средством лицу, не имеющему при себе документов на право управления им	3000	0
1	Отсутствие документов и регистрации автомобиля	Управление транспортным средством, не зарегистрированным в установленном порядке	800	0
\.


                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000035236 14521206600 0015371 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

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

DROP DATABASE "GIBDD";
--
-- Name: GIBDD; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "GIBDD" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "GIBDD" OWNER TO postgres;

\connect "GIBDD"

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Car" (
    "WIN number" character varying(18) NOT NULL,
    "Engine number" character varying(18) NOT NULL,
    "ID model" integer NOT NULL
);


ALTER TABLE public."Car" OWNER TO postgres;

--
-- Name: Car_model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Car_model" (
    "Model ID" integer NOT NULL,
    "Label" character varying(40) NOT NULL,
    "Body type" character varying(20) NOT NULL,
    "Year of release" integer NOT NULL,
    "Name" character varying(50) NOT NULL
);


ALTER TABLE public."Car_model" OWNER TO postgres;

--
-- Name: Car_owner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Car_owner" (
    "DL number" integer NOT NULL,
    "Driver_name_surname" character varying(255) NOT NULL,
    "Adress" character varying(255) NOT NULL,
    "Telephone number" character varying(15) NOT NULL,
    "Date of birth" date NOT NULL,
    "Passport" character varying(15)
);


ALTER TABLE public."Car_owner" OWNER TO postgres;

--
-- Name: Crash; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Crash" (
    "Crash ID" integer NOT NULL,
    "Service_number" character varying(18) NOT NULL,
    "Crash_date" date NOT NULL,
    "Crah_district" character varying(50) NOT NULL,
    "Crash_street" character varying(50) NOT NULL
);


ALTER TABLE public."Crash" OWNER TO postgres;

--
-- Name: Participants status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Participants status" (
    "Crash_ID" integer NOT NULL,
    "PTS number" character varying(20) NOT NULL,
    "Participants status" character varying(50) NOT NULL,
    "Participants_ID" integer NOT NULL
);


ALTER TABLE public."Participants status" OWNER TO postgres;

--
-- Name: Police department; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Police department" (
    "Department_ID" integer NOT NULL,
    "Department_adress" character varying NOT NULL
);


ALTER TABLE public."Police department" OWNER TO postgres;

--
-- Name: Policemen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Policemen" (
    "Personal number" character varying(18) NOT NULL,
    "Policeman_name_surname" character varying(255) NOT NULL,
    "Rank" character varying(50) NOT NULL,
    "Department_ID" integer NOT NULL,
    "Passport" character varying(15)
);


ALTER TABLE public."Policemen" OWNER TO postgres;

--
-- Name: Registered_car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Registered_car" (
    "PTS number" character varying(20) NOT NULL,
    "WIN number" character varying(20) NOT NULL,
    "DL number" integer NOT NULL,
    "Car number" character varying(20) NOT NULL,
    "Registration_date" date NOT NULL,
    "Department_ID" integer NOT NULL
);


ALTER TABLE public."Registered_car" OWNER TO postgres;

--
-- Name: Rights deprivation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rights deprivation" (
    "Procedure_ID" integer NOT NULL,
    "DL number" integer NOT NULL,
    "Loss_date" date NOT NULL,
    "Return_date" date NOT NULL
);


ALTER TABLE public."Rights deprivation" OWNER TO postgres;

--
-- Name: Violation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Violation" (
    "Violation_ID" integer NOT NULL,
    "PTS number" character varying(18) NOT NULL,
    "Personal number" character varying(18) NOT NULL,
    "Payment status" character varying(3) NOT NULL,
    "Violation_place" character varying(255) NOT NULL,
    "Violation_date" date NOT NULL,
    "Violation_id" integer NOT NULL
);


ALTER TABLE public."Violation" OWNER TO postgres;

--
-- Name: Violation_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Violation_types" (
    "Violation_ID" integer NOT NULL,
    "Violation_type" character varying(100) NOT NULL,
    "Violation_name" character varying(500) NOT NULL,
    "Penalty" integer,
    "DL_loss_time" integer NOT NULL
);


ALTER TABLE public."Violation_types" OWNER TO postgres;

--
-- Data for Name: Car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Car" ("WIN number", "Engine number", "ID model") FROM stdin;
\.
COPY public."Car" ("WIN number", "Engine number", "ID model") FROM '$$PATH$$/4861.dat';

--
-- Data for Name: Car_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Car_model" ("Model ID", "Label", "Body type", "Year of release", "Name") FROM stdin;
\.
COPY public."Car_model" ("Model ID", "Label", "Body type", "Year of release", "Name") FROM '$$PATH$$/4858.dat';

--
-- Data for Name: Car_owner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Car_owner" ("DL number", "Driver_name_surname", "Adress", "Telephone number", "Date of birth", "Passport") FROM stdin;
\.
COPY public."Car_owner" ("DL number", "Driver_name_surname", "Adress", "Telephone number", "Date of birth", "Passport") FROM '$$PATH$$/4857.dat';

--
-- Data for Name: Crash; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Crash" ("Crash ID", "Service_number", "Crash_date", "Crah_district", "Crash_street") FROM stdin;
\.
COPY public."Crash" ("Crash ID", "Service_number", "Crash_date", "Crah_district", "Crash_street") FROM '$$PATH$$/4863.dat';

--
-- Data for Name: Participants status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Participants status" ("Crash_ID", "PTS number", "Participants status", "Participants_ID") FROM stdin;
\.
COPY public."Participants status" ("Crash_ID", "PTS number", "Participants status", "Participants_ID") FROM '$$PATH$$/4866.dat';

--
-- Data for Name: Police department; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Police department" ("Department_ID", "Department_adress") FROM stdin;
\.
COPY public."Police department" ("Department_ID", "Department_adress") FROM '$$PATH$$/4860.dat';

--
-- Data for Name: Policemen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Policemen" ("Personal number", "Policeman_name_surname", "Rank", "Department_ID", "Passport") FROM stdin;
\.
COPY public."Policemen" ("Personal number", "Policeman_name_surname", "Rank", "Department_ID", "Passport") FROM '$$PATH$$/4859.dat';

--
-- Data for Name: Registered_car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Registered_car" ("PTS number", "WIN number", "DL number", "Car number", "Registration_date", "Department_ID") FROM stdin;
\.
COPY public."Registered_car" ("PTS number", "WIN number", "DL number", "Car number", "Registration_date", "Department_ID") FROM '$$PATH$$/4865.dat';

--
-- Data for Name: Rights deprivation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rights deprivation" ("Procedure_ID", "DL number", "Loss_date", "Return_date") FROM stdin;
\.
COPY public."Rights deprivation" ("Procedure_ID", "DL number", "Loss_date", "Return_date") FROM '$$PATH$$/4862.dat';

--
-- Data for Name: Violation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Violation" ("Violation_ID", "PTS number", "Personal number", "Payment status", "Violation_place", "Violation_date", "Violation_id") FROM stdin;
\.
COPY public."Violation" ("Violation_ID", "PTS number", "Personal number", "Payment status", "Violation_place", "Violation_date", "Violation_id") FROM '$$PATH$$/4864.dat';

--
-- Data for Name: Violation_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Violation_types" ("Violation_ID", "Violation_type", "Violation_name", "Penalty", "DL_loss_time") FROM stdin;
\.
COPY public."Violation_types" ("Violation_ID", "Violation_type", "Violation_name", "Penalty", "DL_loss_time") FROM '$$PATH$$/4856.dat';

--
-- Name: Car_model Car_model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Car_model"
    ADD CONSTRAINT "Car_model_pkey" PRIMARY KEY ("Model ID");


--
-- Name: Car_owner Car_owner_DL number__key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Car_owner"
    ADD CONSTRAINT "Car_owner_DL number__key" UNIQUE ("DL number") INCLUDE ("DL number");


--
-- Name: Car_owner Car_owner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Car_owner"
    ADD CONSTRAINT "Car_owner_pkey" PRIMARY KEY ("DL number");


--
-- Name: Car Car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "Car_pkey" PRIMARY KEY ("WIN number");


--
-- Name: Crash Crash_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Crash"
    ADD CONSTRAINT "Crash_pkey" PRIMARY KEY ("Crash ID") INCLUDE ("Crash ID");


--
-- Name: Rights deprivation DL_loss_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rights deprivation"
    ADD CONSTRAINT "DL_loss_pkey" PRIMARY KEY ("Procedure_ID", "DL number");


--
-- Name: Police department Department_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Police department"
    ADD CONSTRAINT "Department_pkey" PRIMARY KEY ("Department_ID");


--
-- Name: Violation PTS number; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "PTS number" PRIMARY KEY ("Violation_ID") INCLUDE ("Violation_ID");


--
-- Name: Participants status Participant ID; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "Participant ID" PRIMARY KEY ("Participants_ID") INCLUDE ("Participants_ID");


--
-- Name: Policemen Personal number; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Personal number" UNIQUE ("Personal number") INCLUDE ("Personal number");


--
-- Name: Policemen Policemans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Policemans_pkey" PRIMARY KEY ("Personal number");


--
-- Name: Registered_car Registered_car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "Registered_car_pkey" PRIMARY KEY ("PTS number");


--
-- Name: Violation_types Violation_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Violation_types"
    ADD CONSTRAINT "Violation_types_pkey" PRIMARY KEY ("Violation_ID");


--
-- Name: Car WIN; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "WIN" UNIQUE ("WIN number") INCLUDE ("WIN number");


--
-- Name: Participants status Crash ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "Crash ID" FOREIGN KEY ("Crash_ID") REFERENCES public."Crash"("Crash ID");


--
-- Name: Rights deprivation DL number; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rights deprivation"
    ADD CONSTRAINT "DL number" FOREIGN KEY ("DL number") REFERENCES public."Car_owner"("DL number");


--
-- Name: Registered_car DL number; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "DL number" FOREIGN KEY ("DL number") REFERENCES public."Car_owner"("DL number");


--
-- Name: Policemen Department ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Policemen"
    ADD CONSTRAINT "Department ID" FOREIGN KEY ("Department_ID") REFERENCES public."Police department"("Department_ID") NOT VALID;


--
-- Name: Registered_car Department ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "Department ID" FOREIGN KEY ("Department_ID") REFERENCES public."Police department"("Department_ID");


--
-- Name: Car Model_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Car"
    ADD CONSTRAINT "Model_id" FOREIGN KEY ("ID model") REFERENCES public."Car_model"("Model ID");


--
-- Name: Participants status PTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Participants status"
    ADD CONSTRAINT "PTS" FOREIGN KEY ("PTS number") REFERENCES public."Registered_car"("PTS number");


--
-- Name: Violation Personal number; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Personal number" FOREIGN KEY ("Personal number") REFERENCES public."Policemen"("Personal number");


--
-- Name: Violation Violation ID; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Violation ID" FOREIGN KEY ("Violation_id") REFERENCES public."Violation_types"("Violation_ID");


--
-- Name: Violation Violation PTS; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Violation"
    ADD CONSTRAINT "Violation PTS" FOREIGN KEY ("PTS number") REFERENCES public."Registered_car"("PTS number") NOT VALID;


--
-- Name: Registered_car WIN number; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Registered_car"
    ADD CONSTRAINT "WIN number" FOREIGN KEY ("WIN number") REFERENCES public."Car"("WIN number");


--
-- Name: Crash Табельный номер; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Crash"
    ADD CONSTRAINT "Табельный номер" FOREIGN KEY ("Service_number") REFERENCES public."Policemen"("Personal number");


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  