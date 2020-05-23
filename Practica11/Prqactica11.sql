use Tienda2
go

create proc SP_Vista1
as
select * from Vista1 

execute SP_Vista1 

create proc SP_Vista2
as
select * from Vista2

execute SP_Vista2

create proc SP_Vista3
as
select * from Vista3

execute SP_Vista3

create proc SP_Vista4
as
select * from Vista4

execute SP_Vista4 

create proc SP_Vista5
as
select * from Vista5

execute SP_Vista5

/* aqui comienza el punto dos 'Declare and use 2 funtions' */

Select NomPro from productos
where precio = 20

Select NomPro from productos
where precio<20

/* aqui comienza el punto tres 'triggers' */

create trigger ProductoInsertado
on productos for insert 
as 
insert into historial values (getdate(),'registro insertado',system_user)

insert into productos values (8, 'Papel' , $20, 4)

select * from historial


