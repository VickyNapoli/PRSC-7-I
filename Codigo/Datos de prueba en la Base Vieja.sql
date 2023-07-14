--Datos Login

INSERT INTO Login (nombre_usuario, email, contraseña)
VALUES ("cam.ocanto", "camiiocanto05@gmail.com", "camii15/03");

INSERT INTO Login (nombre_usuario, email, contraseña)
VALUES ("tomas_eguiia", "tomaseguia0@gmail.com", "tomas46199870");

INSERT iNTO Login (nombre_usuario, email, contraseña )
VALUES ("vickynapoli", "victoriaNapoli@gmail.com", "vickyyy123");

INSERT iNTO Login (nombre_usuario, email, contraseña )
VALUES ("gaspar.rufini", "gaspar_xeneize2004@gmail.com", "messiteamo");

INSERT INTO Login (nombre_usuario, email, contraseña)
VALUES ("oriicxntreras", "orianacontrerass@gmail.com", "46104880");


--Datos USUARIO
INSERT INTO Usuario (id_usuario, nombre_usuario, email, noombre, apellido, dni, direccion, Lista_Favoritos)
VALUES ("00001", "cam.ocanto" "camiiocanto05@gmail.com", "camila", "ocanto", "46421422", "calle 19 3122", "2 ambientes");

INSERT INTO Usuario (id_usuario, nombre_usuario, email, noombre, apellido, dni, direccion, Lista_Favoritos)
VALUES ("00002", "tomas_eguiia" "tomaseguia0@gmail.com", "tomas", "eguia", "46199870", "calle 25 bis 3194", "comprar");

INSERT INTO Usuario (id_usuario, nombre_usuario, email, noombre, apellido, dni, direccion, Lista_Favoritos)
VALUES ("00003", "vickynapoli" "victoriaNapoli@gmail.com", "victoria", "napoli", "46621982", "calle 140 1800", "ventas");

INSERT INTO Usuario (id_usuario, nombre_usuario, email, noombre, apellido, dni, direccion, Lista_Favoritos)
VALUES ("00004", "gaspar.rufini" "gaspar_xeneize2004@gmail.com", "gaspar", "rufini", "461230426", "calle 20 3187", "monoambientes");

INSERT INTO Usuario (id_usuario, nombre_usuario, email, noombre, apellido, dni, direccion, Lista_Favoritos)
VALUES ("00005", "oriicxntreras" "orianacontrerass@gmail.com", "oriana", "contreras", "46391974", "calle 140 1920", "3 ambientes");


--Datos FAVORITOS
INSERT INTO Favoritos (lista_favoritos, id_usuario, id publicacion, cantidad)
VALUES ("2 ambientes", "00001", "00036", "01");

INSERT INTO Favoritos (lista_favoritos, id_usuario, id publicacion, cantidad)
VALUES ("comprar", "00002", "00972", "03");

INSERT INTO Favoritos (lista_favoritos, id_usuario, id publicacion, cantidad)
VALUES ("ventas", "00003", "01056", "07");

INSERT INTO Favoritos (lista_favoritos, id_usuario, id publicacion, cantidad)
VALUES ("monoambientes", "00004", "00020", "11");

INSERT INTO Favoritos (lista_favoritos, id_usuario, id publicacion, cantidad)
VALUES ("3 ambientes", "00005", "00103", "05");

--Datos COMENTARIOS
INSERT INTO Comentarios (id publicacion, id_usuario, texto)
VALUES ("00010", "00001", "muy buen lugar muy confiable");

INSERT INTO Comentarios (id publicacion, id_usuario, texto)
VALUES ("00060", "00002", "muy mala organizacion por parte del vendedor");

INSERT INTO Comentarios (id publicacion, id_usuario, texto)
VALUES ("00131", "00003", "bue abiente, comodo para la flia y demas invitados");

INSERT INTO Comentarios (id publicacion, id_usuario, texto)
VALUES ("00742", "00004", "buen lugar, a buen precio y muy copado el arrendero, saludos!!!");

INSERT INTO Comentarios (id publicacion, id_usuario, texto)
VALUES ("01032", "00005", "no me gusto la cocina, lo unico que no me gusto, las demas habitaciones muy cuidadas y comodad");


--Datos PUBLICACIÓN
INSERT INTO Publicacion (id_publicacion, id_usuario, id_inmuebles, direccion, precio, descripcion, imagenes, cantidad_estrellas, url_pago)
VALUES ("01000", "00001", "00398", "calle Milazo 200", "$160000", "Excelente Semipiso de 61 M2, con Living Comedor,  Cocina Integrada con muebles Sobre y Bajo mesada , Balcón con Parrilla y Pileta, Barra desayunadora, Pasillo de distribución Baño completo y habitación con Placard y Balcón. Amenities: Piscina y Gimnasio.", "", "4", "");

INSERT INTO Publicacion (id_publicacion, id_usuario, id_inmuebles, direccion, precio, descripcion, imagenes, cantidad_estrellas, url_pago)
VALUES ("01581", "00032", "00688", "calle 125 1549" , "$80000", "Comodidades: Cocina, living - comedor, baño, 1 dormitorio, patio y e/para auto. Sup. Cubierta: 70mts2. Todos los servicios. Para pareja o persona sola.Se permite 1 mascota pequeña", "", "3.5", "");

INSERT INTO Publicacion (id_publicacion, id_usuario, id_inmuebles, direccion, precio, descripcion, imagenes, cantidad_estrellas, url_pago)
VALUES ("00642", "00051", "00100", "calle 23 3400", "$120000", "Alquiler de Departamento 3 AMBIENTES, Berazategui. Departamento tipo dúplex con cochera y pequeño patio. Planta baja: living comedor al frente con cocina integrada amoblada con bajomesada y artefacto de cocina. Toilette. En planta alta dos dormitorios con placar y baño completo con bañera", "", "2", "");

INSERT INTO Publicacion (id_publicacion, id_usuario, id_inmuebles, direccion, precio, descripcion, imagenes, cantidad_estrellas, url_pago)
VALUES ("03800", "00300", "01098", "calle 15 100", "$65000", "departamento de 45m2, el mismo posee 2 ambientes. Cocina, comedor y living. Ideal para una persona o 2. ", "", "2", "");

INSERT INTO Publicacion (id_publicacion, id_usuario, id_inmuebles, direccion, precio, descripcion, imagenes, cantidad_estrellas, url_pago)
VALUES ("07490", "00983", "01628", "calle 132 3151", "$75000", "Excelente piso para vivir, posee 3 ambientes con cocina, comedor, living y posee un baño. Se permiten mascotas maximo 2", "", "3", "");

--Datos INMUEBLE
INSERT INTO Inmueble (id_inmueble, id_publicacion, cantidad_ambientes, cantidad_personas, cantidad_baños, cantidad_metros)
VALUES ("00398", "01000", "2","2", "1", "61m2" );

INSERT INTO Inmueble (id_inmueble, id_publicacion, cantidad_ambientes, cantidad_personas, cantidad_baños, cantidad_metros)
VALUES ("00688", "01581", "2","1", "1", "70m2" );

INSERT INTO Inmueble (id_inmueble, id_publicacion, cantidad_ambientes, cantidad_personas, cantidad_baños, cantidad_metros)
VALUES ("00100", "00642", "3","2", "2", "60m2" );

INSERT INTO Inmueble (id_inmueble, id_publicacion, cantidad_ambientes, cantidad_personas, cantidad_baños, cantidad_metros)
VALUES ("01098", "03800", "2","1", "1", "45m2" );

INSERT INTO Inmueble (id_inmueble, id_publicacion, cantidad_ambientes, cantidad_personas, cantidad_baños, cantidad_metros)
VALUES ("01628", "07490", "4","3", "2", "95m2");
