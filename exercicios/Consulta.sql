# CREATE DATABASE Bradesco; 
# USE Bradesco;
/*CREATE TABLE Clientes(
	codCliente INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);*/

# SELECT * FROM Clientes;

/*CREATE TABLE vendedores(
	codVendedor INT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL
);*/

/* CREATE TABLE Vendas(
	codVendas INT PRIMARY KEY, 
	dataVenda DATE NOT NULL,
	codCliente INT, 
	codVendedor INT
);*/

/* ALTER TABLE Vendas ADD CONSTRAINT fk_vendas_codcliente FOREIGN KEY (codCliente)
REFERENCES Clientes (codCliente);*/

/*ALTER TABLE Vendas ADD CONSTRAINT fk_vendas_codvendedor FOREIGN KEY (codVendedor)
REFERENCES vendedores (codVendedor); */

# Clientes
#INSERT INTO Clientes VALUES (3, 'Amanda');
#INSERT INTO Clientes VALUES (4, 'Allan');
#INSERT INTO Clientes VALUES (5, 'Ana');
#INSERT INTO Clientes VALUES (6, 'Beatriz');
#INSERT INTO Clientes VALUES (7, 'Bruna');
#INSERT INTO Clientes VALUES (8, 'Cleiton');
#INSERT INTO Clientes VALUES (9, 'Danielle');
#INSERT INTO Clientes VALUES (10, 'Demitrius');
#INSERT INTO Clientes VALUES (11, 'Douglas');
#INSERT INTO Clientes VALUES (12, 'Egnaldo');
#INSERT INTO Clientes VALUES (13, 'Emile');
# SELECT * FROM Clientes;


# Vendedores
#INSERT INTO Vendedores VALUES (3, 'Gabriel');
#INSERT INTO Vendedores VALUES (4, 'Gabriela');
#INSERT INTO Vendedores VALUES (5, 'Guilherme');
#INSERT INTO Vendedores VALUES (6, 'karla');
#INSERT INTO Vendedores VALUES (7, 'igor');
#INSERT INTO Vendedores VALUES (8, 'Gabriella');
#INSERT INTO Vendedores VALUES (9, 'Leandro');
#INSERT INTO Vendedores VALUES (10, 'Henrique');
#INSERT INTO Vendedores VALUES (11, 'Flavio');
#INSERT INTO Vendedores VALUES (12, 'Mauricio');
# SELECT * FROM Vendedores;




# Vendas
#INSERT INTO Vendas VALUES (11, '2023-04-27', 1, 5);
#INSERT INTO Vendas VALUES (12, '2023-04-27', 2, 3);
#INSERT INTO Vendas VALUES (13, '2023-04-27', 8, 4);
#INSERT INTO Vendas VALUES (14, '2023-04-28', 10, 7);
#INSERT INTO Vendas VALUES (15, '2023-04-28', 4, 12);
#INSERT INTO Vendas VALUES (16, '2023-04-27', 13, 10);
#INSERT INTO Vendas VALUES (17, '2023-04-29', 7, 2);
#INSERT INTO Vendas VALUES (18, '2023-04-29', 1, 3);
#INSERT INTO Vendas VALUES (19, '2023-04-29', 5, 8);
#INSERT INTO Vendas VALUES (20, '2023-04-29', 6, 11);
# SELECT * FROM Vendas;


# Adicionando uma nova coluna
# ALTER TABLE Clientes ADD COLUMN sobrenome VARCHAR(100);

# Inserindo registros novos
# INSERT INTO Vendas ('Loja')VALUES ('São Paulo') WHERE Vendas.codVenda == '10';


# Alterando registros
/*UPDATE Clientes 
SET sobrenome = 'Monteiro'
WHERE Clientes.codCliente = '13'; */


# Alterando tipo do dado
/*ALTER TABLE Vendas
modify COLUMN loja VARCHAR(100);*/


# Alterando nome de coluna
/*ALTER TABLE Vendas
RENAME COLUMN dataVenda to data_venda;*/


# Criando join e selecionando colunas
/* SELECT vd.data_venda, vd.Loja, vs.nome, vs.sobrenome FROM Vendas AS vd
	INNER JOIN vendedores AS vs
	ON vd.codVendedor = vs.codVendedor; */
	

/*SELECT cs.codCliente, COUNT(vs.data_venda) AS qtd FROM Vendas vs
	# LEFT JOIN Clientes cs
	ON vs.codCliente = cs.codCliente
GROUP	BY cs.codCliente
ORDER BY qtd ASC 
LIMIT 10;*/



# 1)INNER JOIN VENDAS X CLIENTES
/*SELECT * FROM Vendas vs
	INNER JOIN Clientes cs
	ON vs.codCliente = cs.codCliente;*/
	
	
# 2)LEFT JOIN VENDAS X VENDEDORES
/* SELECT * FROM Vendas vs
	LEFT JOIN Vendedores vr
	ON vs.codVendedor = vr.codVendedor; */
	
	
	
# 3)RIGHT JOIN VENDAS X VENDEDORES
/* SELECT * FROM Vendas vs
	right JOIN Vendedores vr
	ON vs.codVendedor = vr.codVendedor;*/
	
	
# 4)INNER JOIN VENDAS X CLIENTES e LEFT JOIN VENDAS X VENDEDORES
/* SELECT * FROM Vendas vs
	INNER JOIN Clientes cs
	ON vs.codCliente = cs.codCliente;*/
	
/* SELECT * FROM Vendas vs
	LEFT JOIN Clientes cs
	ON vs.codCliente = cs.codCliente; */
	
	
# 5) (LEFT JOIN VENDAS X CLIENTES) e (RIGHT JOIN VENDAS X VENDEDORES), 
# GROUP BY POR DATAVENDA, ORDER BY DESC POR DATAVENDA E UM LIMIT DE 1
/* SELECT vs.data_venda, COUNT(vs.data_venda) as qtd from Vendas vs
	LEFT JOIN Clientes cs
	ON vs.codCliente = cs.codCliente
	GROUP BY vs.data_venda;*/
	
	
/* SELECT vs.data_venda, COUNT(vs.data_venda) as qtd from Vendas vs
	right JOIN Clientes cs
	ON vs.codCliente = cs.codCliente
	GROUP BY vs.data_venda;*/
	
	