create database Tienda2

use Tienda2

create table Productos(
NumProducto int,
NomPro VARCHAR (25),
precio int,
IdAlmacen int
)

create table Almacen(
ID int,
zona int
)

insert into Productos values (1, 'Jabon', $22.50, 4), (1, 'Jabon', $22.50, 4), 
(2, 'Sodas - paquete duo', '$80', 3), (3, 'rufles', '$20', 3), (3, 'rufles', '$20', 3),
(4, 'Mouse', '$200', 2), (5, 'teclado', '$250', 2), (6, 'Jeans', '$100', 1), (7, 'playera', '$150', 1)

insert into Almacen values (4, 5), (3, 4), (2, 3), (1, 2)

SELECT * from Productos
SELECT * from Almacen