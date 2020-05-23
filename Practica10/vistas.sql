use Tienda2
go

create view Vista1 with encryption 
as
select * from productos, almacen

select * from Vista1

create view Vista2 with encryption 
as
Select NomPro, precio from Productos
group by NomPro, precio
having precio > 22

select * from Vista2

create view Vista3 with encryption 
as
Select NomPro, precio from Productos
group by NomPro, precio
having precio = 20

select * from Vista3

create view Vista4 with encryption 
as
Select * from Productos P
inner join Almacen A
on P.IdAlmacen = A.ID

select * from Vista4

create view Vista5 with encryption 
as
select NomPro from productos

select * from Vista5




























































