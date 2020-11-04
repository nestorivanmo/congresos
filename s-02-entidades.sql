--@Autores:               Barrero Olguín Patricio
--                        Martínez Ostoa Néstor
--                        Ramírez Bondi Alejandro
--@Fecha de creación:     3/11/2020
--@Descripción:           Creación de tablas

-- Creacion Colonia

CREATE TABLE Colonia (
    colonia_id NUMERIC(10,0)
        CONSTRAINT colonia_pk PRIMARY KEY,
    nombre_colonia VARCHAR(50) NOT NULL,
    codigo_postal NUMERIC(10, 0) NOT NULL
);

-- Creacion Domicilio

CREATE TABLE Domicilio (
    domicilio_id NUMERIC(10)
        CONSTRAINT Domicilio_pk PRIMARY KEY,    
    calle VARCHAR(50) NOT NULL, 
    numero_exterior VARCHAR(10) NOT NULL,
    numero_interior VARCHAR(10) NULL,
    colonia_id NUMERIC(10, 0) NOT NULL,
    CONSTRAINT DOMICILIO_colonia_id_fk 
        FOREIGN KEY (colonia_id)
        REFERENCES Colonia(colonia_id)
);

-- Creacion Lugar
CREATE TABLE Lugar(
    lugar_id NUMERIC(10, 0)
        CONSTRAINT lugar_pk PRIMARY KEY,
    nombre_lugar VARCHAR(100) NOT NULL,
    domicilio_id NUMERIC(10, 0) NOT NULL,
    
    CONSTRAINT LUGAR_domicilio_id_fk 
        FOREIGN KEY (domicilio_id)
        REFERENCES Domicilio(domicilio_id) 
);

-- Creacion Congreso
CREATE TABLE Congreso(
    congreso_id NUMERIC(10, 0)
        CONSTRAINT congreso_pk PRIMARY KEY,
    nombre_congreso VARCHAR(50) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_terminacion DATE NOT NULL,
    lugar_id NUMERIC(10, 0) NOT NULL,
    
    CONSTRAINT CONGRESO_lugar_id_fk
        FOREIGN KEY (lugar_id)
        REFERENCES Lugar(lugar_id),
        
    CONSTRAINT CONGRESO_fechas_adecuadas_CHK 
        CHECK (fecha_inicio < fecha_terminacion)
);

-- Creacion Institucion
CREATE TABLE Institucion(
    institucion_id NUMERIC(10, 0)
        CONSTRAINT institucion_pk PRIMARY KEY,
    nombre_institucion VARCHAR(50) NOT NULL,
    domicilio_id NUMERIC(10, 0) NOT NULL,

    CONSTRAINT INSTITUCION_domicilio_id_fk
        FOREIGN KEY (domicilio_id)
        REFERENCES Domicilio(domicilio_id)
);

-- Cracion Ponente
CREATE TABLE Ponente(
    ponente_id NUMERIC(10, 0)
        CONSTRAINT ponente_pk PRIMARY KEY,
    primer_nombre_ponente VARCHAR(50) NOT NULL,
    segundo_nombre_ponente VARCHAR(50) NULL,
    primer_apellido_ponente VARCHAR(50) NOT NULL,
    segundo_apellido_ponente VARCHAR(50) NULL,
    institucion_id NUMERIC(10, 0) NOT NULL,
    domicilio_id NUMERIC(10, 0) NOT NULL,

    CONSTRAINT PONENTE_institucion_id_fk
        FOREIGN KEY (institucion_id)
        REFERENCES Institucion(institucion_id),
    CONSTRAINT PONENTE_domicilio_id_fk
        FOREIGN KEY (domicilio_id)
        REFERENCES Domicilio(domicilio_id)
);

-- Creacion Ponencia
CREATE TABLE Ponencia(
    ponencia_id NUMERIC(10, 0) NOT NULL,
    nombre_ponencia VARCHAR(50) NOT NULL,
    CONSTRAINT ponencia_id_pk
        PRIMARY KEY(ponencia_id)
);

-- Creacion Agenda Ponencia
CREATE TABLE AgendaPonencia (
    congreso_id NUMERIC(10, 0) NOT NULL,
    ponente_id NUMERIC(10, 0) NOT NULL,
    ponencia_id NUMERIC(10, 0) NOT NULL,
    hora_inicio DATE NOT NULL,
    hora_fin DATE NOT NULL,
    num_cuartillas NUMERIC(4, 0) NOT NULL,
    CONSTRAINT agenda_ponencia_pk
        PRIMARY KEY (congreso_id, ponente_id, ponencia_id),
    CONSTRAINT  CONGRESO_congreso_id_fk
        FOREIGN KEY (congreso_id)
        REFERENCES Congreso(congreso_id),
    CONSTRAINT PONENTE_ponente_id_fk
        FOREIGN KEY (ponente_id)
        REFERENCES Ponente (ponente_id),
    CONSTRAINT PONENCIA_ponencia_id_fk
        FOREIGN KEY (ponencia_id)
        REFERENCES Ponencia(ponencia_id),
    CONSTRAINT horario_chk
        CHECK (hora_inicio < hora_fin)
);


-- Creacion Pais
CREATE TABLE Pais (
    pais_id NUMERIC(10,0) NOT NULL,
    nombre_pais VARCHAR(50) NOT NULL,
    CONSTRAINT pais_pk 
        PRIMARY KEY (pais_id)
);

-- Creacion Empresa
CREATE TABLE Empresa (
    empresa_id NUMERIC(10,0) NOT NULL,
    nombre_empresa VARCHAR(50) NOT NULL,
    pais_id NUMERIC(10, 0) NOT NULL,
    CONSTRAINT empresa_pk
        PRIMARY KEY (empresa_id), 
    CONSTRAINT PAIS_pais_id_fk
        FOREIGN KEY (pais_id)
        REFERENCES Pais(pais_id)
);


-- Creacion Financiamiento
CREATE TABLE Financiamiento (
    empresa_id NUMERIC(10, 0) NOT NULL,
    congreso_id NUMERIC(10, 0) NOT NULL,
    monto NUMERIC(16, 4),
    CONSTRAINT financiamiento_pk
        PRIMARY KEY (empresa_id, congreso_id), 
    CONSTRAINT EMPRESA_empresa_id_fk
        FOREIGN KEY (empresa_id)
        REFERENCES Empresa(empresa_id),
    CONSTRAINT CONGRESO_congreso_id_fk
        FOREIGN KEY (congreso_id)
        REFERENCES Congreso(congreso_id),
    CONSTRAINT monto_chk
        CHECK (monto > 0)
);
