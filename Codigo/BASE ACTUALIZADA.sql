CREATE DATABASE HospedaMe;
USE HospedaMe;

CREATE TABLE Login(email VARCHAR(30) PRIMARY KEY, 
    contraseña VARCHAR(70));

CREATE TABLE Usuario(id_usuario INT(5) PRIMARY KEY, 
    nombreyapellido VARCHAR(80), 
    email VARCHAR(30),
    telefono INT(12), 
    direccion VARCHAR(100),
    FOREIGN KEY (email) REFERENCES Login(email));

CREATE TABLE Favoritos (Iddelfavorito INT(5) NOT NULL AUTO_INCREMENT, 
    id_publicacion INT(5),
    PRIMARY KEY (Iddelfavorito));

CREATE TABLE Comentarios (id_comentario INT(5) PRIMARY KEY, 
    id_publicacion INT(5), 
    id_usuario INT(5), 
    texto VARCHAR(255),
    FOREIGN KEY (id_publicacion) REFERENCES Publicacion(id_publicacion),
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario));

CREATE TABLE Publicacion (id_publicacion INT(5) PRIMARY KEY, 
    id_usuario INT(5), 
    id_inmueble INT(5), 
    direccion VARCHAR(100), 
    precio INT(10), 
    descripcion VARCHAR(250), 
    imagenes VARCHAR(255), 
    cantidad_estrellas INT(5), 
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_inmueble) REFERENCES Inmueble(id_inmueble));

CREATE TABLE Inmueble (id_inmueble INT(5) PRIMARY KEY, 
    id_publicacion INT(5), 
    cantidad_ambientes INT(1), 
    cantidad_personas INT(1), 
    cantidad_baños INT(1), 
    cantidad_metros INT(4),
    url_pago VARCHAR(255),
    FOREIGN KEY (id_publicacion) REFERENCES Publicacion(id_publicacion));

ALTER TABLE Favoritos
ADD CONSTRAINT id_publicacion
FOREIGN KEY id_publicacion REFERENCES Publicacion(id_publicacion);
