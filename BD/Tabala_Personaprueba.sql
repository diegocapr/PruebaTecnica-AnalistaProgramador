CREATE TABLE  personaprueba (
	--dpi int IDENTITY not null PRIMARY KEY,
	dpi int not null PRIMARY KEY,
	nombres varchar(60) not null,
	apellidos varchar(60) not null,
	email varchar(60) not null,
	cantidad_hijos int not null,
	salario_base float not null,
);

select * from personaprueba;


INSERT INTO personaprueba (dpi, nombres, apellidos, email, cantidad_hijos, salario_base)
VALUES
(1, 'Diego David', 'Cap Rosales', 'diego@gmail.com',2,6500);