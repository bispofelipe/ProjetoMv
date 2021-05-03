CREATE DATABASE DESAFIOMV;

CREATE TABLE colaborador 
(
CPF_PK VARCHAR2(14) NOT NULL PRIMARY KEY,
NOME VARCHAR2(100) NOT NULL
);

CREATE TABLE OPCAO_CAFE(
NOME_CAFE VARCHAR2(50) NOT NULL PRIMARY KEY,
CPF_FK VARCHAR2(14) NOT NULL
);

ALTER TABLE OPCAO_CAFE
ADD CONSTRAINT FK_COLABORADOR_FK
FOREIGN KEY (CPF_FK) 
REFERENCES COLABORADOR (CPF_PK)
on delete CASCADE;

INSERT INTO colaborador (cpf_pk, nome) VALUES ('070.111.111-11','DANIEL');
INSERT INTO colaborador (cpf_pk, nome) VALUES ('071.111.111-11','KAROL');
INSERT INTO colaborador (cpf_pk, nome) VALUES ('072.111.111-11','JESUS');

INSERT INTO opcao_cafe (nome_cafe, cpf_fk) VALUES ('BOLO', '070.111.111-11');
INSERT INTO opcao_cafe (nome_cafe, cpf_fk) VALUES ('CUZCUZ', '071.111.111-11');
INSERT INTO opcao_cafe (nome_cafe, cpf_fk) VALUES ('TAPIOCA', '071.111.111-11');
INSERT INTO opcao_cafe (nome_cafe, cpf_fk) VALUES ('SUCO ABACAXI', '072.111.111-11');
INSERT INTO opcao_cafe (nome_cafe, cpf_fk) VALUES ('SUCO LARANJA', '072.111.111-11');