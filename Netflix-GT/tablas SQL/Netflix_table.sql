
CREATE TABLE suscripcion (
                metodo_pago VARCHAR(50) NOT NULL,
                precio_suscripcion INTEGER NOT NULL,
                duracion VARCHAR(25) NOT NULL,
                CONSTRAINT suscripcion_pk PRIMARY KEY (metodo_pago)
);


CREATE TABLE usuario (
                id_usuario INTEGER NOT NULL,
                nombre_usuario VARCHAR(50) NOT NULL,
                correo_usuario VARCHAR(100) NOT NULL,
                pin_usuario INTEGER NOT NULL,
                metodo_pago VARCHAR(50) NOT NULL,
                CONSTRAINT usuario_pk PRIMARY KEY (id_usuario),
                FOREIGN KEY (metodo_pago)
                REFERENCES suscripcion (metodo_pago)
                ON DELETE NO ACTION
                ON UPDATE NO ACTION
);


CREATE TABLE perfil (
                tipo_perfil VARCHAR(25) NOT NULL,
                nombre_perfil VARCHAR(30) NOT NULL,
                id_usuario INTEGER NOT NULL,
                CONSTRAINT perfil_pk PRIMARY KEY (tipo_perfil),
                FOREIGN KEY (id_usuario)
                REFERENCES usuario (id_usuario)
                ON DELETE NO ACTION
                ON UPDATE NO ACTION
);


CREATE TABLE detalle (
                id_contenido INTEGER NOT NULL,
                titulo_contenido VARCHAR(75) NOT NULL,
                tipo_perfil VARCHAR(25) NOT NULL,
                duracion_contenido VARCHAR(10) NOT NULL,
                fecha_estreno INTEGER NOT NULL,
                info_general VARCHAR(500) NOT NULL,
                reparto VARCHAR(100) NOT NULL,
                CONSTRAINT detalle_pk PRIMARY KEY (id_contenido),
                FOREIGN KEY (tipo_perfil)
                REFERENCES perfil (tipo_perfil)
                ON DELETE NO ACTION
                ON UPDATE NO ACTION
);


