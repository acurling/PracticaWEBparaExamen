



--Create Database VeterinariaUH

create table Mae_Usuarios
(
  Email varchar(30), 
  Clave varchar(30),
  Nombre varchar(50),
  CONSTRAINT PK_Email PRIMARY KEY(Email),
  CONSTRAINT UQ_Nombre UNIQUE(Nombre)
)

select Email, clave from Mae_Usuarios where Email = 'jose@uh.cr' and Clave = '123'

insert into Mae_Usuarios (Email, Clave, Nombre) values ('Jose@uh.cr','123','Jose'),('Maria@uh.cr','456','Maria')
select * from Mae_Usuarios

Create table Mae_Mascotas
(
  Id_Mascota int identity,
  Nombre varchar(50) NOT NULL,  
  Tipo nvarchar(20) NULL,   -- String permite caracteres especiales
  Alimento nvarchar(30) NULL
  CONSTRAINT PK_Id PRIMARY KEY(Id_Mascota)
)

insert into Mae_Mascotas (Nombre,Tipo,Alimento) values ('Piolin','Ave','semillas')
select * from Mae_Mascotas

Create Table Citas
( 
 Id_Cita int identity(1000,5), -- consecutivo de la cita
 Id_Mascota int,
 Fecha datetime CONSTRAINT DF_Fecha DEFAULT GETDATE(),
 Medico nvarchar(50),
 CONSTRAINT PK_IdCita PRIMARY KEY(Id_Cita),
 CONSTRAINT FK_IdMascota FOREIGN KEY(Id_Mascota) REFERENCES Mae_MAscotas(Id_Mascota)
)

INSERT INTO CITAS VALUES (2,'2022-11-15 19:31','DR Dolittle'), (2,'2022-11-14 08:00','DR Dolittle')

select * from Citas
Select * from Mae_Mascotas

update Citas Set medico = 'Nuevo', Id_Mascota = 2 where Id_Cita = 1

select c.Id_Cita, c.Id_Mascota,m.Nombre,m.Tipo, c.Medico,c.Fecha from Citas c inner join Mae_Mascotas m on c.Id_Mascota = m.Id_Mascota