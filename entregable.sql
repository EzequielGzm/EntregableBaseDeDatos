create database if not exists "entregablex"
use "entregablex"

CREATE TABLE usuarios (
   id INT AUTO_INCREMENT,
   nombre VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE notas (
   id INT AUTO_INCREMENT,
   usuario_id INT NOT NULL,
   nombre VARCHAR(100) NOT NULL,
   fecha_de_creacion DATE NOT NULL,
   fecha_de_modificacion DATE NOT NULL,
   descripcion TEXT NOT NULL,
   deleted TINYINT NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE categorias (
   id INT AUTO_INCREMENT,
   nombre VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE notas_categorias (
   id INT AUTO_INCREMENT,
   nota_id INT NOT NULL ,
   categoria_id INT NOT NULL,
   PRIMARY KEY (id)
);

  CONSTRAINT `notas_categorias_FK` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  CONSTRAINT `notas_categorias_FK_1` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
  
insert into notas (nombre,fecha_de_creacion,fecha_de_modificacion,descripcion,deleted,usuario_id) 
values ("GTA", NOW(),NOW(),"No puedo pasar el juego",0,1),
("Imposible", NOW(),NOW(),"No puedo terminar el plato",0,2),
("Compra", NOW(),NOW(),"Hoy compré una heladera",0,3),
("Bitcoin", NOW(),NOW(),"Hoy compré una casa gracias a bitcoin",0,4),
("Musica", NOW(),NOW(),"Tocamos con la banda",0,5),
("Puede fallar", NOW(),NOW(),"No me sale programar JavaScript",0,6),
("Altas yantas", NOW(),NOW(),"Compre zapatillas",0,7),
("Juntada", NOW(),NOW(),"Después de tanto nos juntamos",0,8),
("Daily", NOW(),NOW(),"Nos juntamos a programar",0,9),
("Cerveza", NOW(),NOW(),"Nos juntamos a tomar",0,10)

insert into usuarios(nombre,email) values
("Tadeo","tadeoelmascapo@gmail.com"),
("Rafaela","rafaelita@gmail.com"),
("Roberto","robertito@gmail.com"),
("Amanda","amanda@gmail.com"),
("Sandra","sandrita@gmail.com"),
("Gustavo","gusticapo@gmail.com"),
("Julian","juliannn@gmail.com"),
("Guido","pato@gmail.com"),
("Nicolas","niquito@gmail.com"),
("Pablo","pabloelrey@gmail.com")

insert into categorias (nombre) values
("Comida"),
("Postres"),
("Bebidas"),
("Electrodomesticos"),
("Inmuebles"),
("Calzado"),
("Indumentaria"),
("Juegos"),
("Amigos"),
("Inmuebles")

insert into notas_categorias (nota_id,categoria_id) values ("2","1"), ("1","4"), ("5","3"), ("3","3"), ("2","6"), ("1","10"), ("10","8"), ("7","7"), ("9","1"), ("10","9")