USE AkirasBoutiques;
GO

-- Tabla de Sucursales
CREATE TABLE Sucursales (
    Id_Sucursal INT PRIMARY KEY,
    Nombre_Sucursal VARCHAR(100) NOT NULL,
    Direccion VARCHAR(150) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Ciudad VARCHAR(50) NOT NULL,
    Estado VARCHAR(50) NOT NULL,
    Id_Encargado INT NULL 
);

-- Tabla de Empleados
CREATE TABLE Empleados (
    Id_Empleado INT PRIMARY KEY IDENTITY(1,1),
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Edad INT NOT NULL,
    Direccion VARCHAR(150) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Contrasena VARCHAR(255) NOT NULL, 
    Id_Sucursal INT NOT NULL,
    CONSTRAINT FK_Empleado_Sucursal FOREIGN KEY (Id_Sucursal) REFERENCES Sucursales(Id_Sucursal)
);

-- Llave foránea recíproca para el Encargado en Sucursales
ALTER TABLE Sucursales
ADD CONSTRAINT FK_Sucursal_Encargado FOREIGN KEY (Id_Encargado) REFERENCES Empleados(Id_Empleado);

INSERT INTO Sucursales (Id_Sucursal, Nombre_Sucursal, Direccion, Telefono, Ciudad, Estado, Id_Encargado) VALUES
(1, 'Akira’s Boutique: Las Mercedes', 'Calle Roble #507 Fracc. Las Mercedes', '444 783 1225', 'San Luis Potosí', 'San Luis Potosí', NULL),
(2, 'Akira’s Boutique: Obraje', 'Calle Dr. Jesús Díaz de León #438 col. Obraje', '449 378 0921', 'Aguascalientes', 'Aguascalientes', NULL),
(3, 'Akira’s Boutique: Galerías Mazatlán', 'Av. de la Marina #6204, Marina, local 35', '669 293 2059', 'Mazatlán', 'Sinaloa', NULL),
(4, 'Akira’s Boutique: Zapopan', 'Av. Manuel J. Clouthier 525 col. Benito Juárez', '333 784 1230', 'Zapopan', 'Jalisco', NULL),
(5, 'Akira´s Boutique: Melchor', 'Av. Melchor Ocampo #2528 Zona Centro', '614 390 6721', 'Chihuahua', 'Chihuahua', NULL),
(6, 'Akira’s Boutique: Constitución', 'Calle Constitución #106 Zona Centro', '618 196 2954', 'Durango', 'Durango', NULL),
(7, 'Akira’s Boutique: Centro', 'Av. Hidalgo #338 Zacatecas Centro', '492 930 1250', 'Zacatecas', 'Zacatecas', NULL);

-- SUCURSAL 1: San Luis Potosí (Encargado: Sonia)
INSERT INTO Empleados VALUES ('Sonia Alejandra', 'Fernández Moreno', 32, 'Av. Venustiano Carranza 1200', '444 783 1225', 'sonia.fernandez@akira.com', 'SoniaPass2026', 1);
INSERT INTO Empleados VALUES ('Pedro', 'Gomez Luis', 25, 'Calle Esmeralda 405', '444 111 2233', 'pedro.gomez@akira.com', 'pwdPedro1', 1);
INSERT INTO Empleados VALUES ('María', 'López Castro', 28, 'Av. Industrias 890', '444 222 3344', 'maria.lopez@akira.com', 'pwdMaria2', 1);
INSERT INTO Empleados VALUES ('Juan', 'Martínez Ortega', 24, 'Calle Arbolitos 12', '444 333 4455', 'juan.martinez@akira.com', 'pwdJuan3', 1);
INSERT INTO Empleados VALUES ('Ana', 'Rodríguez Díaz', 30, 'Barrio de Santiago 45', '444 444 5566', 'ana.rodriguez@akira.com', 'pwdAna4', 1);

-- SUCURSAL 2: Aguascalientes (Encargado: Fernando)
INSERT INTO Empleados VALUES ('Fernando', 'Calderón Ayala', 35, 'Av. Convención de 1914 #502', '449 378 0921', 'fernando.calderon@akira.com', 'FerPass2026', 2);
INSERT INTO Empleados VALUES ('Luis', 'Sánchez Pérez', 22, 'Calle Madero 110', '449 555 6677', 'luis.sanchez@akira.com', 'pwdLuis1', 2);
INSERT INTO Empleados VALUES ('Elena', 'Torres Ruiz', 27, 'Fracc. Ojocaliente III', '449 666 7788', 'elena.torres@akira.com', 'pwdElena2', 2);
INSERT INTO Empleados VALUES ('Carlos', 'Ramírez Vega', 29, 'Col. Gremial Calle Estrella', '449 777 8899', 'carlos.ramirez@akira.com', 'pwdCarlos3', 2);
INSERT INTO Empleados VALUES ('Sofia', 'Flores Lara', 26, 'Av. López Mateos 300', '449 888 9900', 'sofia.flores@akira.com', 'pwdSofia4', 2);

-- SUCURSAL 3: Mazatlán (Encargado: Daniela)
INSERT INTO Empleados VALUES ('Daniela Fernanda', 'Díaz Ordaz', 29, 'Av. Camarón Sábalo 400', '669 293 2059', 'daniela.diaz@akira.com', 'DaniPass2026', 3);
INSERT INTO Empleados VALUES ('Jorge', 'Hernández Ríos', 31, 'Col. Centro Calle Oro', '669 999 0011', 'jorge.hernandez@akira.com', 'pwdJorge1', 3);
INSERT INTO Empleados VALUES ('Patricia', 'Morales Gutiérrez', 24, 'Fracc. El Cid', '669 111 3322', 'patricia.morales@akira.com', 'pwdPaty2', 3);
INSERT INTO Empleados VALUES ('Ricardo', 'Castro Ortiz', 33, 'Av. Ejercito Mexicano 15', '669 222 4433', 'ricardo.castro@akira.com', 'pwdRiki3', 3);
INSERT INTO Empleados VALUES ('Gabriela', 'Mendoza Nuñez', 27, 'Col. Juárez Calle Quinta', '669 333 5544', 'gabriela.mendoza@akira.com', 'pwdGaby4', 3);

-- SUCURSAL 4: Zapopan (Encargado: Mario)
INSERT INTO Empleados VALUES ('Mario Alberto', 'Jiménez Salcido', 40, 'Av. Patria 1500', '333 784 1230', 'mario.jimenez@akira.com', 'MarioPass2026', 4);
INSERT INTO Empleados VALUES ('Roberto', 'Vargas Silva', 23, 'Col. La Estancia Calle Pez', '333 444 6655', 'roberto.vargas@akira.com', 'pwdRob1', 4);
INSERT INTO Empleados VALUES ('Lucía', 'Jiménez Herrera', 28, 'Av. Guadalupe 404', '333 555 7766', 'lucia.jimenez@akira.com', 'pwdLu2', 4);
INSERT INTO Empleados VALUES ('Fernando', 'Ramos Sandoval', 35, 'Col. Ciudad Granja', '333 666 8877', 'fernando.ramos@akira.com', 'pwdFer3', 4);
INSERT INTO Empleados VALUES ('Claudia', 'Méndez Cruz', 30, 'Av. Acueducto 900', '333 777 9988', 'claudia.mendez@akira.com', 'pwdClau4', 4);

-- SUCURSAL 5: Chihuahua (Encargado: Yesenia)
INSERT INTO Empleados VALUES ('Yesenia Guadalupe', 'Campos Rojo', 31, 'Av. de la Juventud 3100', '614 390 6721', 'yesenia.campos@akira.com', 'YesPass2026', 5);
INSERT INTO Empleados VALUES ('Alejandro', 'Ponce de León', 26, 'Col. San Felipe Calle 8a', '614 888 1122', 'alejandro.ponce@akira.com', 'pwdAlex1', 5);
INSERT INTO Empleados VALUES ('Monica', 'Suárez Franco', 29, 'Av. Tecnológico 4500', '614 999 2233', 'monica.suarez@akira.com', 'pwdMon2', 5);
INSERT INTO Empleados VALUES ('David', 'Delgado Ibarra', 34, 'Col. Industrial Calle Pino', '614 111 4455', 'david.delgado@akira.com', 'pwdDavid3', 5);
INSERT INTO Empleados VALUES ('Laura', 'Acosta Peña', 25, 'Fracc. Las Águilas', '614 222 5566', 'laura.acosta@akira.com', 'pwdLau4', 5);

-- SUCURSAL 6: Durango (Encargado: Tamara)
INSERT INTO Empleados VALUES ('Tamara Alejandra', 'Bernal Ramos', 33, 'Calle 20 de Noviembre 408', '618 196 2954', 'tamara.bernal@akira.com', 'TamPass2026', 6);
INSERT INTO Empleados VALUES ('Francisco', 'Javier Solís', 27, 'Fracc. Los Remedios', '618 333 6677', 'francisco.solis@akira.com', 'pwdFran1', 6);
INSERT INTO Empleados VALUES ('Diana', 'Maldonado Valenzuela', 24, 'Col. Obrera Calle Durango', '618 444 7788', 'diana.maldonado@akira.com', 'pwdDi2', 6);
INSERT INTO Empleados VALUES ('Manuel', 'Guzmán Blanco', 31, 'Av. Principal 102', '618 555 8899', 'manuel.guzman@akira.com', 'pwdManu3', 6);
INSERT INTO Empleados VALUES ('Beatriz', 'Estrada Marin', 28, 'Fracc. Guadiana', '618 666 9900', 'beatriz.estrada@akira.com', 'pwdBea4', 6);

-- SUCURSAL 7: Zacatecas (Encargado: Samuel)
INSERT INTO Empleados VALUES ('Samuel Enrique', 'Barrios Enciso', 36, 'Av. Torreón 202', '492 930 1250', 'samuel.barrios@akira.com', 'SamPass2026', 7);
INSERT INTO Empleados VALUES ('Héctor', 'Luna Benítez', 29, 'Col. H. Ayuntamiento', '492 777 1122', 'hector.luna@akira.com', 'pwdHec1', 7);
INSERT INTO Empleados VALUES ('Verónica', 'Soto Palacios', 25, 'Calle del Cobre 14', '492 888 2233', 'veronica.soto@akira.com', 'pwdVero2', 7);
INSERT INTO Empleados VALUES ('Óscar', 'Medina Bravo', 32, 'Fracc. Colinas del Padre', '492 999 3344', 'oscar.medina@akira.com', 'pwdOsc3', 7);
INSERT INTO Empleados VALUES ('Silvia', 'Cervantes Aguilar', 27, 'Av. González Ortega', '492 111 5566', 'silvia.cervantes@akira.com', 'pwdSil4', 7);

-- Empleados extra para completar los 40 requeridos 
INSERT INTO Empleados VALUES ('Miguel', 'Ángel Tobías', 23, 'Zona Centro SLP', '444 555 9911', 'miguel.tobias@akira.com', 'pwdMig1', 1);
INSERT INTO Empleados VALUES ('Natalia', 'Ortega Esparza', 26, 'Col. Centro Aguascalientes', '449 123 4567', 'natalia.ortega@akira.com', 'pwdNat2', 2);
INSERT INTO Empleados VALUES ('Enrique', 'Peña Nieto', 30, 'Av. del Mar Mazatlán', '669 456 7890', 'enrique.pena@akira.com', 'pwdQuique3', 3);
INSERT INTO Empleados VALUES ('Karla', 'Navarro Orozco', 24, 'Col. Seattle Zapopan', '333 987 6543', 'karla.navarro@akira.com', 'pwdKar4', 4);
INSERT INTO Empleados VALUES ('Raúl', 'Jiménez Orta', 28, 'Col. Chihuahua 2000', '614 765 4321', 'raul.jimenez@akira.com', 'pwdRaul5', 5);

UPDATE Sucursales SET Id_Encargado = 1 WHERE Id_Sucursal = 1; -- Sonia
UPDATE Sucursales SET Id_Encargado = 6 WHERE Id_Sucursal = 2; -- Fernando
UPDATE Sucursales SET Id_Encargado = 11 WHERE Id_Sucursal = 3; -- Daniela
UPDATE Sucursales SET Id_Encargado = 16 WHERE Id_Sucursal = 4; -- Mario
UPDATE Sucursales SET Id_Encargado = 21 WHERE Id_Sucursal = 5; -- Yesenia
UPDATE Sucursales SET Id_Encargado = 26 WHERE Id_Sucursal = 6; -- Tamara
UPDATE Sucursales SET Id_Encargado = 31 WHERE Id_Sucursal = 7; -- Samuel

USE AkirasBoutiques;
GO

SELECT * FROM Empleados;

SELECT Nombre, Apellido, Edad, Telefono, Email 
FROM Empleados 
WHERE Id_Sucursal = 4;

SELECT * FROM Sucursales;

SELECT S.Id_Sucursal, S.Nombre_Sucursal, S.Ciudad, (E.Nombre + ' ' + E.Apellido) AS Encargado_Oficial
FROM Sucursales S
INNER JOIN Empleados E ON S.Id_Encargado = E.Id_Empleado;