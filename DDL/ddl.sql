CREATE DATABASE escuela;

USE escuela;

CREATE TABLE estudiantes(
    estudiante_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_estudiante VARCHAR(255) NOT NULL UNIQUE,
    correo_electronico VARCHAR(255) NOT NULL UNIQUE,
    telefono VARCHAR(8) NOT NULL UNIQUE
);

CREATE TABLE profesores(
    profesor_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_profesor VARCHAR(255) NOT NULL UNIQUE,
    correo_electronico VARCHAR(255) NOT NULL UNIQUE,
    telefono VARCHAR(8) NOT NULL UNIQUE
);

CREATE TABLE cursos(
    curso_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_curso VARCHAR(100) NOT NULL UNIQUE,
    profesor_id INT,
    FOREIGN KEY (profesor_id) REFERENCES profesores (profesor_id) 
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE inscripciones(
    estudiante_id INT,
    curso_id INT, 
    calificacion INT CHECK (calificacion BETWEEN 0 AND 100) NOT NULL,
    PRIMARY KEY (estudiante_id, curso_id),
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes (estudiante_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (curso_id) REFERENCES cursos (curso_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
