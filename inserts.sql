-- Insertar en la tabla proveedores
INSERT INTO proveedores (id_proveedor, nom_proveedor, estado_proveedor)
VALUES
(1, 'Proveedor A', TRUE),
(2, 'Proveedor B', TRUE),
(3, 'Proveedor C', FALSE);

-- Insertar en la tabla unidad_de_medida
INSERT INTO unidad_de_medida (id_unidad_de_medida, nom_unidad_de_medida, estado)
VALUES
(1, 'Kilogramo', TRUE),
(2, 'Litro', TRUE),
(3, 'Metro', TRUE);

-- Insertar en la tabla marcas
INSERT INTO marcas (id_marca, nom_marca, estado_marca)
VALUES
(1, 'Marca A', TRUE),
(2, 'Marca B', TRUE),
(3, 'Marca C', TRUE);

-- Insertar en la tabla categorias
INSERT INTO categorias (id_categoria, nom_categoria, estado_categoria)
VALUES
(1, 'Electrónica', TRUE),
(2, 'Ropa', TRUE),
(3, 'Alimentos', TRUE);

-- Insertar en la tabla subcategorias
INSERT INTO subcategorias (id_categoria, id_subcategoria, nom_subcategoria, estado_subcategoria)
VALUES
(1, 1, 'Televisores', TRUE),
(1, 2, 'Smartphones', TRUE),
(2, 1, 'Camisas', TRUE),
(3, 1, 'Frutas', TRUE);

-- Insertar en la tabla subcategorias2
INSERT INTO subcategorias2 (id_categoria, id_subcategoria, id_subcategoria2, nom_subcategoria2, estado)
VALUES
(1, 1, 1, 'LED', TRUE),
(1, 2, 1, 'Android', TRUE),
(2, 1, 1, 'Mujer', TRUE),
(3, 1, 1, 'Cítricas', TRUE);

-- Insertar en la tabla productos
INSERT INTO productos (id_producto, nom_producto, id_marca, costo_unitario, caduca, id_categoria, id_subcategoria, id_subcategoria2, stock_max, stock_min, presentacion, id_unidad_de_medida, valor_unidad_de_medida, dir_img, estado)
VALUES
(1, 'Televisor Samsung', 1, 30000, '2026-12-31', 1, 1, 1, 50, 10, 'Pantalla', 1, 1, 'img/televisor.jpg', TRUE),
(2, 'Smartphone Xiaomi', 2, 12000, '2025-05-30', 1, 2, 1, 100, 20, 'Unidad', 2, 1, 'img/smartphone.jpg', TRUE),
(3, 'Camiseta Adidas', 3, 800, '2026-03-15', 2, 1, 1, 200, 50, 'Pieza', 2, 1, 'img/camiseta.jpg', TRUE),
(4, 'Manzana Fuji', 1, 30, '2026-02-28', 3, 1, 1, 1000, 200, 'Kilogramo', 1, 100, 'img/manzana.jpg', TRUE);

-- Insertar en la tabla kardex
INSERT INTO kardex (id_kardex, tipo_movimiento, concepto, cantidad, fecha_movimiento, id_producto, total_Existencias)
VALUES
(1, TRUE, 'Ingreso por compra', 50, '2025-02-25', 1, 50),
(2, FALSE, 'Venta de producto', 10, '2025-02-26', 2, 90),
(3, TRUE, 'Ingreso por compra', 200, '2025-02-25', 3, 200),
(4, FALSE, 'Venta de producto', 100, '2025-02-26', 4, 900);

-- Insertar en la tabla productos_proveedores
INSERT INTO productos_proveedores (id_producto, id_proveedor)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1);
