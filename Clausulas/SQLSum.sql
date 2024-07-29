SELECT * FROM Pago

SELECT SUM(monto) FROM Pago

SELECT SUM(monto) as MontoTotal FROM Pago--Asignas un alias de campo

SELECT SUM(monto + 20) as MontoTotal FROM Pago-- sumas monto mas 20, NO DA 200 + 20, DA 200 + 40

SELECT SUM(monto) + 20 as MontoTotal FROM Pago-- sumas monto