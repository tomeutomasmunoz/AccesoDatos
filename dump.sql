--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Reparaciones; Type: TABLE; Schema: public; Owner: usuario
--

CREATE TABLE public."Reparaciones" (
    "Id" integer NOT NULL,
    "IdCliente" integer NOT NULL,
    "IdEstado" integer NOT NULL,
    "IdTienda" integer NOT NULL,
    "IdTecnico" integer NOT NULL,
    "IdDisDisponible" integer NOT NULL
);


ALTER TABLE public."Reparaciones" OWNER TO usuario;

--
-- Data for Name: Reparaciones; Type: TABLE DATA; Schema: public; Owner: usuario
--



--
-- Name: Reparaciones Id_pkey; Type: CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparaciones"
    ADD CONSTRAINT "Id_pkey" PRIMARY KEY ("Id");


--
-- Name: Reparaciones Reparaciones_IdCliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparaciones"
    ADD CONSTRAINT "Reparaciones_IdCliente_fkey" FOREIGN KEY ("IdCliente") REFERENCES public."Clientes"("Id");


--
-- Name: Reparaciones Reparaciones_IdDisDisponible_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparaciones"
    ADD CONSTRAINT "Reparaciones_IdDisDisponible_fkey" FOREIGN KEY ("IdDisDisponible") REFERENCES public."DisDisponibles"("Id");


--
-- Name: Reparaciones Reparaciones_IdEstado_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparaciones"
    ADD CONSTRAINT "Reparaciones_IdEstado_fkey" FOREIGN KEY ("IdEstado") REFERENCES public."Estado"("Id");


--
-- Name: Reparaciones Reparaciones_IdTecnico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparaciones"
    ADD CONSTRAINT "Reparaciones_IdTecnico_fkey" FOREIGN KEY ("IdTecnico") REFERENCES public."Tecnicos"("Id");


--
-- Name: Reparaciones Reparaciones_IdTienda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: usuario
--

ALTER TABLE ONLY public."Reparaciones"
    ADD CONSTRAINT "Reparaciones_IdTienda_fkey" FOREIGN KEY ("IdTienda") REFERENCES public."Tiendas"("Id");


--
-- PostgreSQL database dump complete
--

