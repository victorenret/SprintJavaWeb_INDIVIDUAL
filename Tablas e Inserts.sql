/*CREACION DE TABLAS QUE UTILIZA EL PROYECTO*/
CREATE TABLE participante (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL,
  apellido VARCHAR(45) NULL,
  rut VARCHAR(45) NULL,
  direccion VARCHAR(45) NULL,
  telefono VARCHAR(45) NULL,
  PRIMARY KEY (id));

  
/*INSERTAR PARTICIPANTES*/
INSERT INTO participante (nombre, apellido, rut, direccion, telefono) VALUES 
("Victor Retamal", "victor@gmail.com", "17629352-7", "Avenida Vicuña Mackenna 2585", "952310039"),
("Dominic Galarce", "domi@hotmail.com", "18721945-0", "San Fernando", "854203967"),
("Michael Sotelo", "muche@gmail.com", "18236458-3", "Tierra Chilena Nancagua", "85421039"),
("Anahis Perez", "anahis@yahoo.com", "22454125-3", "Santa Cruz 456", "95421458");

  
  
  










  