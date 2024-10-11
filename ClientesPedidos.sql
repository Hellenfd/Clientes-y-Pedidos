INSERT INTO clientes (nombre, direccion, telefono) VALUES
('Juan Perez', 'Calle 1', '123456789'),
('Maria Lopez', 'Calle 2', '987654321'),
('Pedro Garcia', 'Calle 3', '456123789'),
('Ana Rodriguez', 'Calle 4', '789456123'),
('Carlos Hernandez', 'Calle 5', '321654987');

INSERT INTO pedidos (cliente_id, fecha, total) VALUES
(1, '2024-10-01', 150.00),
(2, '2024-10-02', 200.00),
(3, '2024-10-03', 300.00),
(1, '2024-10-04', 250.00),
(2, '2024-10-05', 100.00),
(4, '2024-10-06', 175.00),
(5, '2024-10-07', 220.00),
(3, '2024-10-08', 350.00),
(4, '2024-10-09', 400.00),
(5, '2024-10-10', 275.00);

SELECT clientes.nombre, pedidos.id AS pedido_id, pedidos.fecha, pedidos.total
FROM clientes
LEFT JOIN pedidos ON clientes.id = pedidos.cliente_id;

SELECT * FROM pedidos WHERE cliente_id = 1;

SELECT clientes.nombre, SUM(pedidos.total) AS total_pedidos
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id;

DELETE FROM clientes WHERE id = 3;

SELECT clientes.nombre, COUNT(pedidos.id) AS cantidad_pedidos
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id
ORDER BY cantidad_pedidos DESC
LIMIT 3;

