CREATE TABLE IF NOT EXISTS proveedores(
    id_proveedor INTEGER NOT NULL,
    nom_proveedor VARCHAR NOT NULL,
    estado_proveedor BOOLEAN NOT NULL,
    PRIMARY KEY(id_proveedor)
);
CREATE TABLE IF NOT EXISTS unidad_de_medida(
    id_unidad_de_medida INTEGER NOT NULL,
    nom_unidad_de_medida VARCHAR,
    estado BOOLEAN NOT NULL,
    PRIMARY KEY(id_unidad_de_medida)
);
CREATE TABLE IF NOT EXISTS marcas(
    id_marca INTEGER NOT NULL,
    nom_marca VARCHAR NOT NULL,
    estado_marca BOOLEAN NOT NULL,
    PRIMARY KEY(id_marca)
);
CREATE TABLE IF NOT EXISTS categorias(
    id_categoria INTEGER NOT NULL,
    nom_categoria VARCHAR NOT NULL,
    estado_categoria BOOLEAN NOT NULL,
    PRIMARY KEY(id_categoria)
);
CREATE TABLE IF NOT EXISTS subcategorias(
    id_categoria INTEGER NOT NULL,
    id_subcategoria INTEGER NOT NULL,
    nom_subcategoria VARCHAR NOT NULL,
    estado_subcategoria BOOLEAN NOT NULL,
    PRIMARY KEY(id_categoria,id_subcategoria),
    FOREIGN KEY(id_categoria) REFERENCES categorias(id_categoria)
);
CREATE TABLE IF NOT EXISTS subcategorias2 (
    id_categoria INTEGER NOT NULL,
    id_subcategoria INTEGER NOT NULL,
    id_subcategoria2 INTEGER NOT NULL,
    nom_subcategoria2 VARCHAR(255) NOT NULL,
    estado BOOLEAN NOT NULL,
    PRIMARY KEY(id_categoria, id_subcategoria, id_subcategoria2),
    FOREIGN KEY (id_categoria, id_subcategoria) REFERENCES subcategorias(id_categoria, id_subcategoria)
	);
CREATE TABLE IF NOT EXISTS productos (
    id_producto INTEGER NOT NULL,
    nom_producto VARCHAR NOT NULL,
    id_marca INTEGER NOT NULL,
    costo_unitario INTEGER NOT NULL,
    caduca DATE NOT NULL,
    id_categoria INTEGER NOT NULL,
    id_subcategoria INTEGER NOT NULL,
    id_subcategoria2 INTEGER NOT NULL,
    stock_max INTEGER NOT NULL,
    stock_min INTEGER NOT NULL,
    presentacion VARCHAR NOT NULL,
    id_unidad_de_medida INTEGER NOT NULL,
    valor_unidad_de_medida INTEGER NOT NULL,
    dir_img VARCHAR NOT NULL,
    estado BOOLEAN NOT NULL,
    PRIMARY KEY(id_producto),
    FOREIGN KEY (id_marca) REFERENCES marcas(id_marca),
    FOREIGN KEY (id_categoria, id_subcategoria) REFERENCES subcategorias(id_categoria, id_subcategoria),
    FOREIGN KEY (id_categoria, id_subcategoria, id_subcategoria2) 
        REFERENCES subcategorias2(id_categoria, id_subcategoria, id_subcategoria2),
    FOREIGN KEY (id_unidad_de_medida) REFERENCES unidad_de_medida(id_unidad_de_medida)
);
CREATE TABLE IF NOT EXISTS kardex(
    id_kardex INTEGER NOT NULL,
    tipo_movimiento BOOLEAN NOT NULL,
    concepto VARCHAR NOT NULL,
    cantidad INTEGER NOT NULL,
    fecha_movimiento DATE NOT NULL,
    id_producto INTEGER NOT NULL,
    total_Existencias INTEGER NOT NULL,
    PRIMARY KEY(id_kardex),
    FOREIGN KEY(id_producto) REFERENCES productos(id_producto)
);

CREATE TABLE IF NOT EXISTS productos_proveedores(
    id_producto INTEGER NOT NULL,
    id_proveedor INTEGER NOT NULL,
    PRIMARY KEY(id_producto, id_proveedor),
    FOREIGN KEY(id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY(id_proveedor) REFERENCES proveedores(id_proveedor)
);