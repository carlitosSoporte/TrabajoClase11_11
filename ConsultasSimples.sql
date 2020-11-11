

select * from alumno

--alumnos con id de carrera 3.
select * from alumno where idCarreraAlumno = 3


--consulta por campo que comience por la letra s
select * from alumno where  nombreAlumno like 'r%'
select * from alumno where  nombreAlumno like '%z'
select * from alumno where  nombreAlumno like 'sacarias%'

--mostrar de forma ascendente
select * from alumno order by edadAlumno asc

--mostrar de forma descendente
select * from alumno order by edadAlumno desc


select * from alumno
--se muestran la cantidad de alumnos que tienen el mismo id de carrera y que sea menor o igual a 2
select idCarreraAlumno, COUNT(idCarreraAlumno) as cantidad from alumno 
group by idCarreraAlumno having count(*) <= 2

--suma las edades de los alumnos
select sum(edadAlumno) as suma from alumno


--antes y despues del between
select nombreAlumno,edadAlumno,direccionAlumno from alumno where edadAlumno >= 20 and edadAlumno <= 59 order by edadAlumno desc
select nombreAlumno,edadAlumno,direccionAlumno from alumno where edadAlumno between  20 and  59 order by edadAlumno desc

--exclyendo a Ramon rodriguez
select * from alumno where (nombreAlumno not in ('Ramon rodriguez'))

--mostramos los dos primeros alumnos
select  top 2 * from alumno

select distinct idCarreraAlumno from alumno

--usamos funcion de promedio, dato minimo y dato maximo.
select AVG(edadAlumno) as promedioEdades FROM alumno
select MIN(edadAlumno) as edadMinima from alumno
select MAX(edadAlumno) as edadMinima from alumno
