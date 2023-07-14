CREATE DATABASE HospedaMe;
USE HospedaMe;

CREATE TABLE Login(email VARCHAR(30) PRIMARY KEY, 
    contraseña VARCHAR(70));

CREATE TABLE Usuario(id_usuario INT(10) NOT NULL AUTO_INCREMENT, 
    nombreyapellido VARCHAR(80), 
    email VARCHAR(30),
    telefono INT, 
    direccion VARCHAR(100),
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (email) REFERENCES Login(email));

CREATE TABLE Favoritos (Iddelfavorito INT NOT NULL AUTO_INCREMENT,
    id_publicacion INT,
    PRIMARY KEY (Iddelfavorito));

CREATE TABLE Comentarios (id_comentario INT PRIMARY KEY, 
    id_publicacion INT, 
    id_usuario INT, 
    texto VARCHAR(255),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario));

CREATE TABLE Publicacion (id_publicacion INT PRIMARY KEY, 
    id_usuario INT, 
    id_inmueble INT, 
    direccion VARCHAR(100), 
    precio INT, 
    descripcion VARCHAR(250), 
    imagenes VARCHAR(255), 
    cantidad_estrellas INT, 
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario));

CREATE TABLE Inmueble (id_inmueble INT PRIMARY KEY, 
    id_publicacion INT, 
    cantidad_ambientes INT, 
    cantidad_personas INT, 
    cantidad_baños INT, 
    cantidad_metros INT,
    url_pago VARCHAR(255),
    FOREIGN KEY (id_publicacion) REFERENCES Publicacion(id_publicacion));

ALTER TABLE Publicacion
ADD CONSTRAINT id_inmueble
FOREIGN KEY (id_inmueble) REFERENCES Inmueble(id_inmueble);

ALTER TABLE Favoritos
ADD CONSTRAINT id_publicacion
FOREIGN KEY (id_publicacion) REFERENCES Publicacion(id_publicacion);

ALTER TABLE Comentarios
ADD CONSTRAINT id_publicacion
FOREIGN KEY (id_publicacion) REFERENCES Publicacion(id_publicacion);
