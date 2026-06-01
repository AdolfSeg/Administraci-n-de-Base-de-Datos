--- José Adolfo Herrera Segura
--- Administración de Bases de Datos
--- 28/05/2026

--- Enunciado #1
SELECT DISTINCT 
    C.Id_Cliente, 
    CONVERT(VARCHAR(50), C.Nombre) AS Nombre, 
    CONVERT(VARCHAR(50), C.Apellido) AS Apellido, 
    F.Fecha
FROM Cliente C
INNER JOIN Factura F ON C.Id_Cliente = F.Id_Cliente
WHERE F.Fecha BETWEEN '2021-01-01' AND '2021-12-31';

--- Enunciado #2
SELECT DISTINCT 
    C.Id_Cliente, 
    CONVERT(VARCHAR(50), C.Nombre) AS Nombre, 
    CONVERT(VARCHAR(50), C.Apellido) AS Apellido, 
    F.Fecha
FROM Cliente C
INNER JOIN Factura F ON C.Id_Cliente = F.Id_Cliente
WHERE F.Fecha >= '2022-01-01';

---Enunciado #3
SELECT DISTINCT
    C. Id_Cliente,
    CONVERT(VARCHAR(50), C.Nombre) AS Nombre,
    CONVERT(VARCHAR(50), C.Apellido) AS Apellido,
    F.Fecha
FROM CLIENTE C
INNER JOIN Factura F ON C.Id_cliente = F.Id_Cliente
WHERE F.Fecha BETWEEN '2021-12-1' AND '2021-12-31'
ORDER BY F.FECHA ASC;

---Enunciado #4
SELECT 
    (CONVERT(VARCHAR(50), C.Nombre) + ' ' + CONVERT(VARCHAR(50), C.Apellido)) AS Cliente, 
    F.Id_Factura, 
    F.Fecha, 
    P.Nombre AS Producto, 
    D.Cantidad
FROM Cliente C
INNER JOIN Factura F ON C.Id_Cliente = F.Id_Cliente    
INNER JOIN Detalle D ON F.Id_Detalle = D.id_detalle    
INNER JOIN Producto P ON D.id_producto = P.id_producto  
WHERE (CONVERT(VARCHAR(50), C.Nombre) + ' ' + CONVERT(VARCHAR(50), C.Apellido)) IN (
    'Valentina Anastasia Huerta Corral',
    'Zayra Manuela Gómez López',
    'Dante Eduardo Dolores Meza',
    'Ana Maribel Cedillo Núñez',
    'Rodrigo Ismael Silva Ugarte'
);

---Enunciado #5
SELECT TOP 1 
    CONVERT(VARCHAR(100), P.Nombre) AS Producto_Mas_Vendido, 
    SUM(D.Cantidad) AS Total_Vendido
FROM Detalle D
INNER JOIN Producto P ON D.id_producto = P.id_producto
GROUP BY CONVERT(VARCHAR(100), P.Nombre)
ORDER BY Total_Vendido DESC;

---Enunciado #6
SELECT TOP 1
CONVERT(VARCHAR(100), Nombre) AS Producto_Con_Mas_Stock, 
Stock
FROM Producto
ORDER BY Stock DESC;

---Enunciado #7
SELECT 
    Id_Factura, 
    Id_Cliente, 
    Fecha 
FROM Factura
ORDER BY Fecha ASC;

---Enunciado #8
SELECT 
    Id_Cliente,
    CONVERT(VARCHAR(50), Nombre) AS Nombre,
    CONVERT(VARCHAR(50), Apellido) AS Apellido
FROM Cliente
ORDER BY Nombre ASC;

---Enunciado #9
SELECT 
    CONVERT(VARCHAR(100), P.Nombre) AS Producto,
    CONVERT(VARCHAR(50), C.Nombre) AS Categoria
FROM Producto P
INNER JOIN Categoria C ON P.id_categoria = C.id_categoria
WHERE CONVERT(VARCHAR(50), C.Nombre) IN ('Falda', 'Pantalón', 'Chamarra', 'Zapato', 'Accesorios')
ORDER BY Categoria ASC;

---Enunciado #10
SELECT 
    S.Nombre_Sucursal AS Sucursal,
    E.Nombre + ' ' + E.Apellido AS Encargado
FROM Sucursales S
INNER JOIN Empleados E ON S.Id_Encargado = E.Id_Empleado;

---Enunciado #11
SELECT 
    E.Nombre + ' ' + E.Apellido AS Empleado,
    S.Nombre_Sucursal AS Sucursal
FROM Empleados E
INNER JOIN Sucursales S ON E.Id_Sucursal = S.Id_Sucursal
WHERE S.Nombre_Sucursal LIKE '%Constitución%';

---Enunciado #12
SELECT 
    Id_Cliente,
    CONVERT(VARCHAR(50), Nombre) + ' ' + CONVERT(VARCHAR(50), Apellido) AS Cliente,
    DATEDIFF(YEAR, Fec_Nac, GETDATE()) AS Edad
FROM dbo.Cliente
WHERE DATEDIFF(YEAR, Fec_Nac, GETDATE()) > 30;