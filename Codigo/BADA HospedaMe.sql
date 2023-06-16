CREATE TABLE Login (nombre_usuario VARCHAR(80) PRIMARY KEY,  
    email VARCHAR(80) PRIMARY KEY, 
    contraseña VARCHAR(70));

CREATE TABLE Usuario(id_usuario INT(5) PRIMARY KEY, 
    nombre_usuario VARCHAR(80), 
    email VARCHAR(80),
    nombre VARCHAR(40), 
    apellido VARCHAR(40), 
    dni INT(8), 
    direccion VARCHAR(100), 
    FOREIGN KEY (nombre_usuario) REFERENCES Login(nombre_usuario),
    FOREIGN KEY (email) REFERENCES Login(email),

CREATE TABLE Favoritos (Iddelfavorito INT(5) NOT NULL AUTO_INCREMENT, 
    id_publicacion INT(5),
    PRIMARY KEY (Iddelfavorito),
    FOREIGN KEY (id_publicacion) REFERENCES Publicacion(id_publicacion));

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
    imagenes IMAGE, 
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
