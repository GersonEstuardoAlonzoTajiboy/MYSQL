CREATE DATABASE ubicacion_geografica;

USE ubicacion_geografica;

# PAIS, DEPARTAMENTO, MUNICIPIO
CREATE TABLE pais
(
    pais_id            INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
    nombre             VARCHAR(75)      NOT NULL UNIQUE,
    latitud            DOUBLE PRECISION NOT NULL,
    longitud           DOUBLE PRECISION NOT NULL,
    fecha_creacion     DATE             NOT NULL,
    fecha_modificacion DATE             NULL,
    estado             TINYINT          NOT NULL
);

CREATE TABLE departamento
(
    departamento_id    INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
    nombre             VARCHAR(75)      NOT NULL UNIQUE,
    latitud            DOUBLE PRECISION NOT NULL,
    longitud           DOUBLE PRECISION NOT NULL,
    pais_id            INT              NOT NULL,
    fecha_creacion     DATE             NOT NULL,
    fecha_modificacion DATE             NULL,
    estado             TINYINT          NOT NULL
);

CREATE TABLE municipio
(
    municipio_id       INT PRIMARY KEY  NOT NULL AUTO_INCREMENT,
    nombre             VARCHAR(75)      NOT NULL UNIQUE,
    latitud            DOUBLE PRECISION NOT NULL,
    longitud           DOUBLE PRECISION NOT NULL,
    departamento_id    INT              NOT NULL,
    fecha_creacion     DATE             NOT NULL,
    fecha_modificacion DATE             NULL,
    estado             TINYINT          NOT NULL
);

