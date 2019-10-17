--------------------------------------------------------
-- Archivo creado  - jueves-octubre-17-2019   
--------------------------------------------------------
DROP TABLE "SCANO"."BARRIOS" cascade constraints;
DROP TABLE "SCANO"."COMUNAS" cascade constraints;
DROP TABLE "SCANO"."ESTADOS_PRESTADORES" cascade constraints;
DROP TABLE "SCANO"."MODALIDADES" cascade constraints;
DROP TABLE "SCANO"."PRESTADORES" cascade constraints;
DROP TABLE "SCANO"."SEDES" cascade constraints;
DROP TABLE "SCANO"."TIPO_COMUNAS" cascade constraints;
--------------------------------------------------------
--  DDL for Table BARRIOS
--------------------------------------------------------

  CREATE TABLE "SCANO"."BARRIOS" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"COMUNA_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table COMUNAS
--------------------------------------------------------

  CREATE TABLE "SCANO"."COMUNAS" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"TIPO_COMUNA_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table ESTADOS_PRESTADORES
--------------------------------------------------------

  CREATE TABLE "SCANO"."ESTADOS_PRESTADORES" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table MODALIDADES
--------------------------------------------------------

  CREATE TABLE "SCANO"."MODALIDADES" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table PRESTADORES
--------------------------------------------------------

  CREATE TABLE "SCANO"."PRESTADORES" 
   (	"ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"FECHA_CONTRATACION" DATE, 
	"VALOR_CONTRATO" DATE, 
	"ESTADO_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table SEDES
--------------------------------------------------------

  CREATE TABLE "SCANO"."SEDES" 
   (	"ID" NUMBER(*,0), 
	"SEDE" VARCHAR2(255 BYTE), 
	"TELEFONO" VARCHAR2(255 BYTE), 
	"DIRECCION" VARCHAR2(255 BYTE), 
	"CUPOS_DISPUESTOS" VARCHAR2(8 BYTE), 
	"BARRIO_ID" NUMBER(*,0), 
	"MODALIDAD_ID" NUMBER(*,0), 
	"PRESTADOR_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM" ;
--------------------------------------------------------
--  DDL for Table TIPO_COMUNAS
--------------------------------------------------------

  CREATE TABLE "SCANO"."TIPO_COMUNAS" 
   (	"ID" NUMBER(*,0), 
	"TIPO" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM" ;
REM INSERTING into SCANO.BARRIOS
SET DEFINE OFF;
REM INSERTING into SCANO.COMUNAS
SET DEFINE OFF;
REM INSERTING into SCANO.ESTADOS_PRESTADORES
SET DEFINE OFF;
REM INSERTING into SCANO.MODALIDADES
SET DEFINE OFF;
Insert into SCANO.MODALIDADES (ID,NOMBRE) values ('100','ENTORNO FAMILIAR');
Insert into SCANO.MODALIDADES (ID,NOMBRE) values ('101','ENTORNO FAMILIAR_1');
Insert into SCANO.MODALIDADES (ID,NOMBRE) values ('103','INSTITUCIONAL 8 HORAS');
Insert into SCANO.MODALIDADES (ID,NOMBRE) values ('104','JARDINES INFANTILES');
Insert into SCANO.MODALIDADES (ID,NOMBRE) values ('105','LUDOTEKAS');
Insert into SCANO.MODALIDADES (ID,NOMBRE) values ('106','PRESUPUESTO PARTICIPATIVO');
REM INSERTING into SCANO.PRESTADORES
SET DEFINE OFF;
Insert into SCANO.PRESTADORES (ID,NOMBRE,FECHA_CONTRATACION,VALOR_CONTRATO,ESTADO_ID) values ('100','ENTORNO FAMILIAR',null,null,null);
Insert into SCANO.PRESTADORES (ID,NOMBRE,FECHA_CONTRATACION,VALOR_CONTRATO,ESTADO_ID) values ('101','ENTORNO FAMILIAR_1',null,null,null);
Insert into SCANO.PRESTADORES (ID,NOMBRE,FECHA_CONTRATACION,VALOR_CONTRATO,ESTADO_ID) values ('103','INSTITUCIONAL 8 HORAS',null,null,null);
Insert into SCANO.PRESTADORES (ID,NOMBRE,FECHA_CONTRATACION,VALOR_CONTRATO,ESTADO_ID) values ('104','JARDINES INFANTILES',null,null,null);
Insert into SCANO.PRESTADORES (ID,NOMBRE,FECHA_CONTRATACION,VALOR_CONTRATO,ESTADO_ID) values ('105','LUDOTEKAS',null,null,null);
Insert into SCANO.PRESTADORES (ID,NOMBRE,FECHA_CONTRATACION,VALOR_CONTRATO,ESTADO_ID) values ('106','PRESUPUESTO PARTICIPATIVO',null,null,null);
REM INSERTING into SCANO.SEDES
SET DEFINE OFF;
REM INSERTING into SCANO.TIPO_COMUNAS
SET DEFINE OFF;
Insert into SCANO.TIPO_COMUNAS (ID,TIPO) values ('10','RURAL');
Insert into SCANO.TIPO_COMUNAS (ID,TIPO) values ('11','URBANA');
--------------------------------------------------------
--  Constraints for Table ESTADOS_PRESTADORES
--------------------------------------------------------

  ALTER TABLE "SCANO"."ESTADOS_PRESTADORES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEDES
--------------------------------------------------------

  ALTER TABLE "SCANO"."SEDES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRESTADORES
--------------------------------------------------------

  ALTER TABLE "SCANO"."PRESTADORES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BARRIOS
--------------------------------------------------------

  ALTER TABLE "SCANO"."BARRIOS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MODALIDADES
--------------------------------------------------------

  ALTER TABLE "SCANO"."MODALIDADES" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_COMUNAS
--------------------------------------------------------

  ALTER TABLE "SCANO"."TIPO_COMUNAS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMUNAS
--------------------------------------------------------

  ALTER TABLE "SCANO"."COMUNAS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "MID_TERM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BARRIOS
--------------------------------------------------------

  ALTER TABLE "SCANO"."BARRIOS" ADD CONSTRAINT "COMUNA_FK" FOREIGN KEY ("COMUNA_ID")
	  REFERENCES "SCANO"."COMUNAS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMUNAS
--------------------------------------------------------

  ALTER TABLE "SCANO"."COMUNAS" ADD CONSTRAINT "TIPO_COMUNA_FK" FOREIGN KEY ("TIPO_COMUNA_ID")
	  REFERENCES "SCANO"."TIPO_COMUNAS" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRESTADORES
--------------------------------------------------------

  ALTER TABLE "SCANO"."PRESTADORES" ADD CONSTRAINT "ESTADO_FK" FOREIGN KEY ("ESTADO_ID")
	  REFERENCES "SCANO"."ESTADOS_PRESTADORES" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEDES
--------------------------------------------------------

  ALTER TABLE "SCANO"."SEDES" ADD CONSTRAINT "BARRIO_FK" FOREIGN KEY ("BARRIO_ID")
	  REFERENCES "SCANO"."BARRIOS" ("ID") ENABLE;
  ALTER TABLE "SCANO"."SEDES" ADD CONSTRAINT "MODALIDAD_FK" FOREIGN KEY ("MODALIDAD_ID")
	  REFERENCES "SCANO"."MODALIDADES" ("ID") ENABLE;
  ALTER TABLE "SCANO"."SEDES" ADD CONSTRAINT "PRESTADORES_FK" FOREIGN KEY ("PRESTADOR_ID")
	  REFERENCES "SCANO"."PRESTADORES" ("ID") ENABLE;