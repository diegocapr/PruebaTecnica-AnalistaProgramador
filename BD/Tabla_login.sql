
--Creando tabla loginTB
CREATE TABLE loginTB
(
	id int IDENTITY(1000,1),
	usuario varchar(50),
	contrasena varbinary(100)
);

--Crando procedimiento almacenado
CREATE PROCEDURE SP_AgregarUsuario
@usuario varchar(50),
@contrasena varchar(50),
@patron varchar(50)
AS
BEGIN
INSERT INTO loginTB(usuario, contrasena) VALUES (@usuario,ENCRYPTBYPASSPHRASE(@patron,@contrasena))
END

--Creando procedimiento alamacenado para validar inicio de sesion 
CREATE PROCEDURE SP_ValidarUsuario
@usuario varchar(50),
@contrasena varchar(50),
@patron varchar(50)
AS
BEGIN
SELECT * FROM loginTB WHERE usuario=@usuario and CONVERT(varchar(50),DECRYPTBYPASSPHRASE(@patron, contrasena))=@contrasena
END

--Insertando usuarios
--PruebaTecnica = es el patron que permite desencriptar la contraseña
SP_AgregarUsuario 'Diego','contrasena1234','PruebaTecnica'
SP_AgregarUsuario 'david','Pass1234','PruebaTecnica'
SP_AgregarUsuario 'incomel','Prub@inc_','PruebaTecnica'




select * from loginTB;

DROP PROCEDURE SP_ValidarUsuario