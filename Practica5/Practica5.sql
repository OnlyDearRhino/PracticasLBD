Create database Consultorio
Go

create table Doctores(
 idEmpelado int not null,
 NumeroEm int not null,
 Nombres varchar (50) not null,
 ApPat varchar (50) not null,
 ApMat varchar (50) not null,
 FechaNaci datetime null,
 Edad int not null,
 Sexo char (1) not null
)

insert into Doctores (idEmpelado, NumeroEm, Nombres, ApPat, ApMat, Edad, Sexo) values (1, '1', 'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (2, '2', 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (3, '3', 'Estafania', 'Rojas', 'Martinez', '28', 'F'), (4, '4', 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (5, '5', 'Valeria', 'Martinez', 'Martinez', '32', 'F'), (6, '6', 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (7, '7', 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (8, '8', 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (9, '9', 'Edgar', 'Buena', 'Cara', '28', 'M'), (10, '10', 'Samhanta', 'Buen', 'Rostro', '29', 'F'),
 (11, '11', 'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (12, '12', 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (13, '13', 'Estafania', 'Rojas', 'Martinez', '28', 'F'), (14, '14', 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (15, '15', 'Valeria', 'Martinez', 'Martinez', '32', 'F'), (16, '16', 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (17, '17', 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (18, '18', 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (19, '19', 'Edgar', 'Buena', 'Cara', '28', 'M'), (20, '20', 'Samhanta', 'Buen', 'Rostro', '29', 'F')

create table Enfermeros(
 idEmpelado int not null,
 NumeroEm int not null,
 Nombres varchar (50) not null,
 ApPat varchar (50) not null,
 ApMat varchar (50) not null,
 FechaNaci datetime null,
 Edad int not null,
 Sexo char (1) not null
)

insert into Enfermeros (idEmpelado, NumeroEm, Nombres, ApPat, ApMat, Edad, Sexo) values (1, '21', 'Eduardo', 'Torres', 'Martinez', '20', 'M'), (2, '22', 'Alfredo', 'Antonio', 'Heraclio', '20', 'M'),
 (3, '23', 'Lizbeth', 'Cantu', 'Rocha', '22', 'F'), (4, '24', 'Dan', 'Castaneda', 'Gobea', '22', 'M'), 
 (5, '25', 'Valeria', 'Mata', 'Martinez', '22', 'F'), (6, '26', 'Miguel', 'Rocha', 'Martinez', '21', 'M'),
 (7, '27', 'Nanzy', 'Paredes', 'Martinez', '24', 'F'), (8, '28', 'Iganio', 'Escobedo', 'Garza', '25', 'M'),
 (9, '29', 'Eliza', 'Delgadillo', 'Trujillo', '26', 'F'), (10, '30', 'Elena', 'Delgadillo', 'Trujillo', '26', 'F'),
 (11, '31', 'Eduardo', 'Torres', 'Martinez', '20', 'M'), (12, '32', 'Alfredo', 'Antonio', 'Heraclio', '20', 'M'),
 (13, '33', 'Lizbeth', 'Cantu', 'Rocha', '22', 'F'), (14, '34', 'Dan', 'Castaneda', 'Gobea', '22', 'M'), 
 (15, '35', 'Valeria', 'Mata', 'Martinez', '22', 'F'), (16, '36', 'Miguel', 'Rocha', 'Martinez', '21', 'M'),
 (17, '37', 'Nanzy', 'Paredes', 'Martinez', '24', 'F'), (18, '38', 'Iganio', 'Escobedo', 'Garza', '25', 'M'),
 (19, '39', 'Eliza', 'Delgadillo', 'Trujillo', '26', 'F'), (20, '40', 'Elena', 'Delgadillo', 'Trujillo', '26', 'F')

create table Especialistas(
 idEmpelado int not null,
 NumeroEm int not null,
 Especialidad varchar (50) not null,
 Nombres varchar (50) not null,
 ApPat varchar (50) not null,
 ApMat varchar (50) not null,
 FechaNaci datetime  null,
 Edad int not null,
 Sexo char (1) not null
)

insert into Especialistas (idEmpelado, NumeroEm,Especialidad, Nombres, ApPat, ApMat, Edad, Sexo) values (1, '41','Cardiologia' ,'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (2, '42', 'Neurologo', 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (3, '43', 'Cardiologia infantil', 'Estafania', 'Rojas', 'Martinez', '28', 'F'), (4, '45', 'Cirugia', 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (5, '45', 'Cirugia infantil', 'Valeria', 'Martinez', 'Martinez', '32', 'F'), (6, '20', 'Dermatologia', 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (7, '47', 'Farmacologia clinica', 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (8, '96', 'Ginecologia', 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (9, '49', 'Medicina legal', 'Edgar', 'Buena', 'Cara', '28', 'M'), (10, '50', 'Medicina', 'Samhanta', 'Buen', 'Rostro', '29', 'F'),
 (11, '51','Cardiologia' ,'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (12, '52', 'Neurologo', 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (13, '53', 'Cardiologia infantil', 'Estafania', 'Rojas', 'Martinez', '28', 'F'), (14, '54', 'Cirugia', 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (15, '55', 'Cirugia infantil', 'Valeria', 'Martinez', 'Martinez', '32', 'F'), (16, '56', 'Dermatologia', 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (17, '57', 'Farmacologia clinica', 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (18, '58', 'Ginecologia', 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (19, '59', 'Medicina legal', 'Edgar', 'Buena', 'Cara', '28', 'M'), (20, '60', 'Medicina', 'Samhanta', 'Buen', 'Rostro', '29', 'F')

create table Administrativos(
 idEmpelado int not null,
 NumeroEm int not null,
 idTipoAd int not null,
 Nombres varchar (50) not null,
 ApPat varchar (50) not null,
 ApMat varchar (50) not null,
 FechaNaci datetime null,
 Edad int not null,
 Sexo char (1) not null
)

insert into Administrativos(idEmpelado,NumeroEm, idTipoAd, Nombres, ApPat, ApMat, Edad, Sexo) values (1, '61', '1' , 'Eduardo', 'Torres', 'Martinez', '20', 'M'), (2, '62', '2' , 'Alfredo', 'Antonio', 'Heraclio', '20', 'M'),
 (3, '63', '3' ,'Lizbeth', 'Cantu', 'Rocha', '22', 'F'), (4, '64', '4' , 'Dan', 'Castaneda', 'Gobea', '22', 'M'), 
 (5, '65', '1' , 'Valeria', 'Mata', 'Martinez', '22', 'F'), (6, '66', '2' , 'Miguel', 'Rocha', 'Martinez', '21', 'M'),
 (7, '67', '3' , 'Nanzy', 'Paredes', 'Martinez', '24', 'F'), (8, '68', '4' , 'Iganio', 'Escobedo', 'Garza', '25', 'M'),
 (9, '69', '1' , 'Eliza', 'Delgadillo', 'Trujillo', '26', 'F'), (10, '70', '2' , 'Elena', 'Delgadillo', 'Trujillo', '26', 'F'),
 (11, '71', '1' , 'Eduardo', 'Torres', 'Martinez', '20', 'M'), (12, '72', '2' , 'Alfredo', 'Antonio', 'Heraclio', '20', 'M'),
 (13, '73', '3' ,'Lizbeth', 'Cantu', 'Rocha', '22', 'F'), (14, '74', '4' , 'Dan', 'Castaneda', 'Gobea', '22', 'M'), 
 (15, '75', '1' , 'Valeria', 'Mata', 'Martinez', '22', 'F'), (16, '76', '2' , 'Miguel', 'Rocha', 'Martinez', '21', 'M'),
 (17, '77', '3' , 'Nanzy', 'Paredes', 'Martinez', '24', 'F'), (18, '78', '4' , 'Iganio', 'Escobedo', 'Garza', '25', 'M'),
 (19, '79', '1' , 'Eliza', 'Delgadillo', 'Trujillo', '26', 'F'), (20, '80', '2' , 'Elena', 'Delgadillo', 'Trujillo', '26', 'F')

create table TipAd(
 idTipo int not null,
 Tipo Varchar not null
)

create table DatPacientes(
 IdPaciente int not null,
 Nombres varchar (50) not null,
 ApPat varchar (50) not null,
 ApMat varchar (50) not null,
 FechaNaci datetime null,
 Edad int not null,
 Sexo char (1) not null
)

insert into DatPacientes(IdPaciente,Nombres, ApPat, ApMat, Edad, Sexo) values (1,  'Eduardo', 'Torres', 'Martinez', '20', 'M'), (2, 'Alfredo', 'Antonio', 'Heraclio', '20', 'M'),
 (3, 'Lizbeth', 'Cantu', 'Rocha', '22', 'F'), (4,  'Dan', 'Castaneda', 'Gobea', '12', 'M'), 
 (5, 'Valeria', 'Mata', 'Martinez', '23', 'F'), (6,  'Miguel', 'Rocha', 'Martinez', '21', 'M'),
 (7, 'Nanzy', 'Paredes', 'Martinez', '45', 'F'), (8, 'Iganio', 'Escobedo', 'Garza', '25', 'M'),
 (9, 'Eliza', 'Delgadillo', 'Trujillo', '16', 'F'), (10, 'Elena', 'Delgadillo', 'Trujillo', '26', 'F'),
 (11, 'Eduardo', 'Torres', 'Martinez', '26', 'M'), (12, 'Alfredo', 'Antonio', 'Heraclio', '20', 'M'),
 (13, 'Lizbeth', 'Cantu', 'Rocha', '22', 'F'), (14, 'Dan', 'Castaneda', 'Gobea', '22', 'M'), 
 (15, 'Valeria', 'Mata', 'Martinez', '22', 'F'), (16, 'Miguel', 'Rocha', 'Martinez', '21', 'M'),
 (17,  'Nanzy', 'Paredes', 'Martinez', '54', 'F'), (18, 'Iganio', 'Escobedo', 'Garza', '15', 'M'),
 (19,  'Eliza', 'Delgadillo', 'Trujillo', '16', 'F'), (20, 'Elena', 'Delgadillo', 'Trujillo', '16', 'F')

create table Servicios(
 idTipoSer int not null,
 Tipo Varchar not null,
 Precio float not null
)

create table Receta(
 Nombre int not null,
 Especialidad varchar (50) not null,
 Nombres varchar (50) not null,
 ApPat varchar (50) not null,
 ApMat varchar (50) not null,
 Fecha varchar (50) not null,
 Peso int not null,
 Temp int not null,
 NombreDoc varchar (50) not null,
 Medicamento varchar (50) not null,
 Indicaciones varchar (60) not null
)

create table Ticket(
 Total float not null,
 TipoSer varchar(50) not null,
 Folio int not null,
 Fecha varchar(50) not null,
 Hora tinyint not null,
 Subtotal float not null,
 Iva float not null
)

select * from Doctores

update Doctores set Nombres = 'Roberto'
where idEmpelado = 1
update Doctores set ApPat = 'Hernandez'
where idEmpelado = 1
update Doctores set Nombres = 'Javier'
where NumeroEm = 12
update Doctores set Edad = '32'
where idEmpelado = 7
update Doctores set ApPat = 'Gatell'
where idEmpelado = 17

select * from Enfermeros

delete from Enfermeros where idEmpelado = 20 
delete from Enfermeros where idEmpelado = 19

Select * from Especialistas

delete from Especialistas where Especialidad = 'Ginecologia'
delete from Especialistas where Especialidad = 'Cirugia infantil'

Select * from DatPacientes

delete from DatPacientes where IdPaciente = 12

