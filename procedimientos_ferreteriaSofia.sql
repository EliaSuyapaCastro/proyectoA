--procedimiento mostrar categorias
create procedure spmostrar_categoria
as
select top 200 * from categoria
order by idcategoria desc
go

--procedimiento buscar categoria por nombre
create proc spbuscar_categoria
@textobuscar varchar(50) --declaracion de varible la cual se enviara con visual studio
as
select * from Categoria
where nombre like @textobuscar + '%' --like sirve para buscar, el signo porcentaje indica que es un texto
go

--procedimiento de insercion de categoria
create proc spinsertar_categoria
@idcategoria int output, --declaracion de variable de salida porque esta es autonumerica
@nombre varchar(50),
@descripcion varchar(256)
as
insert into Categoria (nombre, descripcion)
values (@nombre, @descripcion)
go


