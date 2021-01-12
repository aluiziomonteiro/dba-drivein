

CREATE DATABASE empresacinema;
use empresacinema;

CREATE TABLE Genero (
codGenero int,
descricao varchar(250)
);

CREATE TABLE Programacao (
codProgramacao int,
dataProgramacao datetime,
PRIMARY KEY(codProgramacao)
);

CREATE TABLE Pedido (
codPedido int,
qtd int,
valor_total decimal(6,2),
dataPedido datetime,
status varchar(250),
detalhes varchar(250),
codProduto int,
codCliente int,
PRIMARY KEY(codPedido)
);

CREATE TABLE Cliente (
codCliente int,
RG Varchar(150),
placa Varchar(150),
nome Varchar(150),
celular Varchar(150),
PRIMARY KEY(codCliente)
);

CREATE TABLE Ingresso (
codIngresso int,
tipo varchar(250),
codSessao int,
cod varchar(250),
codPortariia int,
dataIngresso datetime,
codCliente int,
PRIMARY KEY(codIngresso)
);

CREATE TABLE Sessao (
codSessao int,
dataInicio datetime,
dataFim datetime,
valorIntegereira decimal(6,2),
valorMeia decimal(6,2),
cod int,
PRIMARY KEY(codSessao)
);

CREATE TABLE Portaria (
codPortaria int,
ingressosDisponiveis int,
dataPortaria datetime,
PRIMARY KEY(codPortaria)
);

CREATE TABLE Filme (
codFilme int,
nome varchar(250),
duracao int,
diretor varchar(250),
legenda varchar(250),
ano varchar(250),
sinopse varchar(250),
trailer varchar(250),
nacionalidade varchar(250),
PRIMARY KEY(codFilme)
);

CREATE TABLE Historico (
codHistorico int,
dataHistorico datetime,
entrada decimal(6,2),
saida decimal(6,2),
codProduto int,
PRIMARY KEY(codHistorico)
);

CREATE TABLE Drivein (
vagasDisponiveis varchar(250),
status varchar(250),
cod varchar(250),
PRIMARY KEY(cod)
);

CREATE TABLE Relatorio (
codRelatorio int,
totalIngressos_vendidos int,
arrecadacaoTotal_meia decimal(6,2),
totalVendido_integereira int,
totalVendido_meia int,
arrecadacaoTotal_integereira decimal(6,2),
arrecadacaoTotal decimal(6,2),
dataRelatorio datetime,
PRIMARY KEY(codRelatorio)
);

/*lista de produtos*/
CREATE TABLE Lanchonete (
codProduto int,
nomeProduto varchar(250),
detalhes varchar(250),
custoUnit decimal(6,2),
valorVenda decimal(6,2),
PRIMARY KEY(codProduto)
);

CREATE TABLE Funcionario (
codFuncionario int,
nome varchar(250),
dataAdmissao datetime,
salario decimal(6,2),
comissao decimal(6,2),
RG varchar(250),
CPF varchar(250),
CNH Varchar(150),
cargo varchar(250),
telefone varchar(250),
celular varchar(250),
codTerceirizado int,
empregadora varchar(250),
CNPJ varchar(250),
contato varchar(250),
codFreela int,
RS varchar(250),
Obs varchar(250),
codEfetivo int,
PIS varchar(250),
codConta int,
numero int,
agencia int,
digito int,
PRIMARY KEY(codFuncionario)
);

CREATE TABLE  Sessao_Filme(
codSessao integer(100),
codFilme int
);


CREATE TABLE  Funcionario_Banco(
codBanco int,
codFuncionario int
);

CREATE TABLE Tipo_Funcionario (
codFuncionario int,
codTerceirizado int,
codFreela int,
codEfetivo int,
codConta int
);

CREATE TABLE  Funcionario_Tipo(
codFuncionario int,
codTipo int
);

INSERT INTO Genero VALUES(1,'Aventura');
INSERT INTO Genero VALUES(2,'Drama');
INSERT INTO Genero VALUES(3,'Suspense');

INSERT INTO Programacao VALUES(1,'2020-01-01 09:00:00');
INSERT INTO Programacao VALUES(2,'2020-01-02 10:00:00');
INSERT INTO Programacao VALUES(3,'2020-01-03 11:00:00');
INSERT INTO Programacao VALUES(4,'2020-01-04 12:00:00');

INSERT INTO Pedido VALUES(1, 1, '10.00', '2020-01-04 08:00:00','SOLICITADO','N/A',1,1);
INSERT INTO Pedido VALUES (2, 1, '10.00', '2020-01-04 08:00:00','SOLICITADO','N/A',2,2);
INSERT INTO Pedido VALUES (3, 1, '10.00', '2020-01-04 08:00:00','SOLICITADO','N/A',3,3);
INSERT INTO Pedido VALUES (4, 1, '10.00', '2020-01-04 08:00:00','SOLICITADO','N/A',4,4);

INSERT INTO Cliente VALUES (1, '1233455','ASDF 1234','EDUARDO CAMPOS','12315 1234');
INSERT INTO Cliente VALUES (2, '5443255','FRTF 6784','ALCEU VALENÇA' ,'12315 1234');
INSERT INTO Cliente VALUES (3, '1233455','THJA F 1876','EURIDES BRITO','12315 1234');
INSERT INTO Cliente VALUES (4, '1233455','ATGB5678','FRANK AGUIAR','12315 1234');

INSERT INTO Ingresso VALUES (1,'INTEIRO',1,1,1, '2020-01-04 08:00:00',1);
INSERT INTO Ingresso VALUES (2,'INTEIRO',2,2,2, '2020-02-04 02:00:00',1);
INSERT INTO Ingresso VALUES (3,'INTEIRO',3,3,3, '2020-03-04 10:00:00',1);
INSERT INTO Ingresso VALUES (4,'INTEIRO',4,4,4, '2020-04-04 11:00:00',1);

INSERT INTO Sessao VALUES (1, '2020-02-04 02:00:00', '2020-02-04 04:00:00','10.00','5.00',1);
INSERT INTO Sessao VALUES (2, '2020-02-04 03:00:00', '2020-02-04 05:00:00','10.00','5.00',1);
INSERT INTO Sessao VALUES (3, '2020-02-04 04:00:00', '2020-02-04 06:00:00','10.00','5.00',1);
INSERT INTO Sessao VALUES (4, '2020-02-04 05:00:00', '2020-02-04 07:00:00','10.00','5.00',1);

INSERT INTO Portaria VALUES (1, '30', '2020-02-04 07:00:00');
INSERT INTO Portaria VALUES (2, '30', '2020-02-04 07:00:00');
INSERT INTO Portaria VALUES (3, '30', '2020-02-04 07:00:00');
INSERT INTO Portaria VALUES (4, '30', '2020-02-04 07:00:00');

INSERT INTO Filme VALUES (1, 'A volta dos que não foram','120','Gibzi King','Portugues', '2019','Um cara foi embora, mas como ele não foi, ninguém voltou','', 'Brasil');
INSERT INTO Filme VALUES (2, 'A volta dos que não foram','120','Gibzi King','Portugues', '2019','Um cara foi embora, mas como ele não foi, ninguém voltou','', 'Brasil');
INSERT INTO Filme VALUES (3, 'A volta dos que não foram','120','Gibzi King','Portugues', '2019','Um cara foi embora, mas como ele não foi, ninguém voltou','','Brasil');
INSERT INTO Filme VALUES (4, 'A volta dos que não foram','120','Gibzi King','Portugues', '2019','Um cara foi embora, mas como ele não foi, ninguém voltou','', 'Brasil');

INSERT INTO Historico VALUES (1,'2020-02-04 07:00:00', '5000.00', '7000.00', 1); 
INSERT INTO Historico VALUES (2,'2020-02-04 07:00:00', '6000.00', '6000.00', 2); 
INSERT INTO Historico VALUES (3,'2020-02-04 07:00:00', '5000.00', '5000.00', 3); 
INSERT INTO Historico VALUES (4,'2020-02-04 07:00:00', '4000.00', '4000.00', 4); 

INSERT INTO Drivein VALUES (20, 'disponivel',1);
INSERT INTO Drivein VALUES (20, 'disponivel',2);
INSERT INTO Drivein VALUES (20, 'disponivel',3);
INSERT INTO Drivein VALUES (20, 'disponivel',4);

INSERT INTO Relatorio VALUES (1,123,'600.00','200.00', 49, '400.00', '300.00', '2020-02-04 07:00:00');
INSERT INTO Relatorio VALUES (2,143,'500.00','500.00', 39, '500.00', '200.00', '2020-02-03 07:00:00');
INSERT INTO Relatorio VALUES (3,523,'200.00','800.00', 29, '300.00', '400.00', '2020-02-02 07:00:00');
INSERT INTO Relatorio VALUES (4,723,'300.00','900.00', 59, '100.00', '500.00', '2020-02-05 07:00:00');

INSERT INTO Lanchonete VALUES (1,'Batata', 'pacote com 500g', '20.00', '30.00');
INSERT INTO Lanchonete VALUES (2,'Coca Cola', '500ml', '5.00', '10.00');
INSERT INTO Lanchonete VALUES (3,'Ovo de Codorna', 'pacote com 12 unidades', '10.00', '30.00');
INSERT INTO Lanchonete VALUES (4,'Farofa de galinha', '500g', '10.00', '50.00');

INSERT INTO Funcionario VALUES(1,'Antônio Dias',  '2020-02-02 07:00:00', '1200.00', '10.00', '8766899','87698745676', 'B', 'Segurança', '99878654',1213123,1,'Global Securit','123123322345', '98767890', 1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1);
INSERT INTO Funcionario VALUES(2,'Marcos Antônio',  '2020-02-02 07:00:00', '1200.00', '10.00', '8766899','87698745676', 'B', 'Segurança', '99878654',1123213,1,'Global Securit','123123322345', '98767890', 1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1);
INSERT INTO Funcionario VALUES(3,'Eduardo Santos',  '2020-02-02 07:00:00', '1200.00', '10.00', '8766899','87698745676', 'B', 'Segurança', '99878654',123123,1,'Global Securit','123123322345', '98767890', 1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1);
INSERT INTO Funcionario VALUES(4,'Elisa Andrade',  '2020-02-02 07:00:00', '1200.00', '10.00', '8766899','87698745676', 'B', 'Segurança', '99878654',123132,1,'Global Securit','123123322345', '98767890', 1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1);

INSERT INTO Sessao_Filme VALUES (1,1);
INSERT INTO Sessao_Filme VALUES (2,2);
INSERT INTO Sessao_Filme VALUES (3,3);
INSERT INTO Sessao_Filme VALUES (4,4);

INSERT INTO Funcionario_Banco VALUES (1,1);
INSERT INTO Funcionario_Banco VALUES (2,2);
INSERT INTO Funcionario_Banco VALUES (3,3);
INSERT INTO Funcionario_Banco VALUES (4,4);

INSERT INTO Tipo_Funcionario VALUES (1,1,1,1,1);
INSERT INTO Tipo_Funcionario VALUES (2,2,2,2,2);
INSERT INTO Tipo_Funcionario VALUES (3,3,3,3,3);
INSERT INTO Tipo_Funcionario VALUES (4,4,4,4,4);

INSERT INTO Funcionario_Tipo VALUES (1,1);
INSERT INTO Funcionario_Tipo VALUES (2,2);
INSERT INTO Funcionario_Tipo VALUES (3,3);
INSERT INTO Funcionario_Tipo VALUES (4,4);



/*CRIAÇAO DE PROCEDURE*/

/*procedure cadastrar cliente*/
CALL prc_cadastrar_cliente(6, '1233455','ASDF 1234','EDUARDO CAMPOS','12315 1234');
/*procedure cadastrar filme*/
call empresacinema.prc_cadastrar_filme(1, 'A volta dos que não foram','120','Gibzi King','Portugues', '2019','Um cara foi embora, mas como ele não foi, ninguém voltou','', 'Brasil');
/*procedure cadastrar funcionario*/
call prc_cadastrar_funcionario(1,'Antônio Dias',  '2020-02-02 07:00:00', '1200.00', '10.00', '8766899','87698745676', 'B', 'Segurança', '99878654',1213123,1,'Global Securit','123123322345', '98767890', 1,'Credo em cruz','N/A',1,'09328409238409',1,123,123,1);
/*procedure cadastrar funcionario_banco*/
call prc_cadastrar_funcionario_banco(1,1);
/*procedure cadastrar funcionario_tipo*/
call prc_cadastrar_funcionario_tipo(1,1);
/*procedure cadastrar genero*/
call empresacinema.prc_cadastrar_genero(1, 'ação');
/*procedure cadastrar histórico*/
call prc_cadastrar_historico(1, 'null', 20.0, 20.0, 1);
/*procedure cadastrar ingresso*/
call prc_gerar_ingresso  (1,'INTEIRO',1,1,1, '2020-01-04 08:00:00',1);
/*procedure cadastrar lanchonete*/
call prc_cadastrar_produto(1,'Batata', 'pacote com 500g', '20.00', '30.00');
/*procedure cadastrar pedido*/
call prc_cadastrar_pedido (1, 1, '10.00', '2020-01-04 08:00:00','SOLICITADO','N/A',1,1);
/*procedure cadastrar portaria*/
call prc_cadastrar_portaria (1, '30', '2020-02-04 07:00:00');
/*procedure cadastrar programação*/
call prc_cadastrar_programacao (1,'2020-01-01 09:00:00');
/*procedure cadastrar relatório*/
CALL prc_cadastrar_relatorio(4,723,'300.00','900.00', 59, '100.00', '500.00', '2020-02-05 07:00:00');
/*procedure cadastrar sessao*/
CALL prc_cadastrar_sessao( 1,'2019-01-04', '2019-01-04','10.00','5.00',2);
/*procedure cadastrar sessao_filme*/
CALL prc_cadastrar_sessao_filme(1,1);
/*procedure cadastrar tipo_funcionario*/
CALL prc_cadastrar_funcionario_tipo(1,1);
select * from sessao_filme;
update sessao_filme set codSessao =5 where codFilme =1;