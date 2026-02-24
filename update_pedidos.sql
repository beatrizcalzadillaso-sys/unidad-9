use pedidos_dam;

UPDATE Articulo
SET PVPArt = PVPArt + PVPArt*5/100
WHERE PVPArt < 1;

UPDATE Pedido
SET FecPed = CURRENT_DATE
WHERE RefPed NOT IN (SELECT RefPed FROM LineaPedido);

UPDATE Empleado
SET NumDep = (SELECT NumDep FROM Departamento
WHERE Localidad = 'Barcelona')
WHERE NomEmp = 'Esperanza Fruiz Montaña';