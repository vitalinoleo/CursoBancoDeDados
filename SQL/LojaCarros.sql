-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.


CREATE TABLE Carro (
Id_Carro SERIAL PRIMARY KEY,
marca VARCHAR (50) NOT NULL,
Ano  INT NOT NULL,
Modelo VARCHAR (30) NOT NULL,
preco_aluguel int,
Tipo VARCHAR (100) NOT NULL,
Placa INT NOT NULL,
Disponibilidade VARCHAR (20) NOT NULL,
ID_Agencia INT,
FOREIGN KEY (ID_Agencia) REFERENCES agencia (ID_Agencia)

);

CREATE TABLE Cliente (
Nome Varchar(50),
Endereco Varchar(80) Not Null,
Cidade Varchar(50) Not Null,
Celular Varchar(14) Not Null,
Email Varchar(100) Not Null,
Sobrenome Varchar(80),
Id_Cliente Serial PRIMARY KEY,
Estado Char(2) Not Null
);

CREATE TABLE Funcionario (
Nome Varchar(50) Not Null,
Id_Funcionario Serial PRIMARY KEY,
Sobrenome Varchar(50),
Cargo Varchar(50),
Salario Numeric,
Data_Contratacao Date Not Null,
ID_Agencia int,
FOREIGN KEY (ID_Agencia) REFERENCES Agencia (ID_Agencia)
);

CREATE TABLE Agencia (
    ID_Agencia SERIAL PRIMARY KEY,
    Endereco VARCHAR (50) NOT Null,
    Cidade VARCHAR (50) NOT Null,
    Contato VARCHAR (14) NOT NULL,
    Estado VARCHAR (50) NOT NULL

);

CREATE TABLE Pagamento  (

Id_Pagamento SERIAL PRIMARY KEY,
Status_Pagamento VARCHAR (50) NOT NULL,
Forma_Pagamento VARCHAR (50) NOT NULL,
Valor NUMERIC NOT NULL,
Data_Pagamento DATE NOT NULL,
ID_CLIENTE int,
FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente)
);

CREATE TABLE Manutencao (
Id_Manutencao SERIAL PRIMARY KEY,
Data_Manutencao DATE NOT NULL,
Tipo_Manutencao VARCHAR (50) NOT NULL,
Descricao TEXT,
Status_Manutencao VARCHAR (50) NOT NULL,
Icm NUMERIC NOT NULL,
Custo NUMERIC NOT NULL
);

CREATE TABLE FeedBack (
Id_Feedback SERIAL PRIMARY KEY,
Comentario TEXT NOT NULL,
Avaliacao VARCHAR (20) ,
Data_Feedback DATE NOT NULL,
id_cliente int,
FOREIGN KEY (Id_Cliente) REFERENCES Cliente (Id_Cliente)
);

CREATE TABLE Locacao (
Data_Devolucao Date Not Null,
Data_locacao Date Not Null,
Valor_total Decimal (7,2) Not Null,
Id_locacao Serial PRIMARY KEY,
Id_Cliente INT,
nome VARCHAR (50),
Id_Carro INT,
FOREIGN KEY(Id_Cliente) REFERENCES Cliente (Id_Cliente),
FOREIGN KEY (Nome) REFERENCES Cliente (Nome),
FOREIGN KEY(Id_Carro) REFERENCES Carro (Id_Carro)
);

CREATE TABLE Recebe (
Id_Manutencao INT,
Id_Carro INT,
FOREIGN KEY(Id_Manutencao) REFERENCES Manutencao (Id_Manutencao),
FOREIGN KEY(Id_Carro) REFERENCES Carro (Id_Carro)
); 

CREATE TABLE Envia (
    Id_Envia SERIAL PRIMARY KEY,
    Observacao TEXT,
    Id_Cliente INT,
    Id_Feedback INT,
    FOREIGN KEY (ID_CLIENTE) REFERENCES Cliente (ID_CLIENTE),
    FOREIGN KEY (Id_Feedback) REFERENCES FeedBack (Id_Feedback)

);

ALTER TABLE Cliente ADD FOREIGN KEY(/*erro: ??*/) REFERENCES Pagamento  (Id_Pagamento,Id_Realiza)
ALTER TABLE Funcionario ADD FOREIGN KEY(Num_Agencia) REFERENCES Agenda (Num_Agencia)

-- Inserir dados adicionais na tabela de clientes'',
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (1, 'Maria', 'da casa', 'Silva', 'São Paulo', 'maria.silva@email.com', '(11) 91234-5678', 'Rua das Flores, 123', 'SP');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (2, 'João', 'primeira vez', 'Oliveira', 'Rio de Janeiro', 'joao.oliveira@email.com', '(21) 98765-4321', 'Avenida Central, 456', 'RJ');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (3, 'Ana', 'da casa', 'Santos', 'Belo Horizonte', 'ana.santos@email.com', '(31) 92345-6789', 'Praça da Paz, 789', 'MG');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (4, 'Pedro', 'da casa', 'Costa', 'Salvador', 'pedro.costa@email.com', '(71) 93456-7890', 'Travessa da Amizade, 321', 'BA');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (5, 'Carolina', 'da casa', 'Pereira', 'Recife', 'carolina.pereira@email.com', '(81) 94567-8901', 'Rua das Palmeiras, 567', 'PE');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (6, 'Luiz', 'da casa', 'Rodrigues', 'Brasília', 'luiz.rodrigues@email.com', '(61) 95678-9012', 'Avenida dos Sonhos, 890', 'DF');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (7, 'Mariana', 'primeira vez', 'Ferreira', 'Fortaleza', 'mariana.ferreira@email.com', '(85) 96789-0123', 'Rua das Margaridas, 234', 'CE');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (8, 'Rafael', 'primeira vez', 'Souza', 'Curitiba', 'rafael.souza@email.com', '(41) 97890-1234', 'Alameda dos Girassóis, 678', 'PR');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (9, 'Juliana', 'da casa', 'Almeida', 'Porto Alegre', 'juliana.almeida@email.com', '(51) 98901-2345', 'Praça do Sol, 901', 'RS');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (10, 'Daniel', 'da casa', 'Martins', 'Manaus', 'daniel.martins@email.com', '(92) 99012-3456', 'Avenida das Estrelas, 432', 'AM');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (11, 'Camila', 'pimeira vez', 'Lima', 'Belém', 'camila.lima@email.com', '(91) 90123-4567', 'Rua da Alegria, 765', 'PA');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (12, 'Bruno',  'da casa', 'Gomes', 'Goiânia', 'bruno.gomes@email.com', '(62) 91234-5678', 'Avenida do Progresso, 109', 'GO');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (13, 'Fernanda', 'primeira vez', 'Castro', 'Vitória', 'fernanda.castro@email.com', '(27) 92345-6789', 'Travessa das Maravilhas, 543', 'ES');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (14, 'Lucas', 'Rocha', 'da casa', 'Natal', 'lucas.rocha@email.com', '(84) 93456-7890', 'Rua dos Ventos, 876', 'RN');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (15, 'Isabela', 'Nunes',  'da casa', 'Florianópolis', 'isabela.nunes@email.com', '(48) 94567-8901', 'Avenida da Liberdade, 210', 'SC');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (16, 'Gabriel', 'Barbosa','da casa', 'João Pessoa', 'gabriel.barbosa@email.com', '(83) 95678-9012', 'Praça das Araras, 987', 'PB');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (17, 'Letícia', 'Vieira', 'primeira vez', 'Cuiabá', 'leticia.vieira@email.com', '(65) 96789-0123', 'Rua das Estrelas, 543', 'MT');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (18, 'André', 'Carvalho', 'da casa', 'Teresina', 'andre.carvalho@email.com', '(86) 97890-1234', 'Avenida da Esperança, 876', 'PI');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (19, 'Larissa', 'Santos', 'da casa', 'Maceió', 'larissa.santos@email.com', '(82) 98901-2345', 'Rua das Crianças, 321', 'AL');
INSERT INTO clientes (id_cliente, nome, cliente_primeiravez, sobrenome, cidade, email, telefone, endereco, estado) VALUES (20, 'Thiago', 'Oliveira','da casa', 'Campo Grande', 'thiago.oliveira@email.com', '(67) 99012-3456', 'Alameda dos Ipês, 654', 'MS');



-- Inserir dados na tabela de carros (ano, modelo, id_carro, tipo, placa, disponibilidad, 
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2018, 'Volkswagem', 'Gol', 1, 'Sedan', 'ABC-1234', 600, 'Disponível', 1234);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2017, 'Ford', 'Fiesta', 2, 'Hatchback', 'DEF-5678',600,  'Disponível', 1234);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2019, 'chevrolet', 'Onix', 3, 'SUV', 'GHI-9012', 600, 'Indisponível', 9101);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2016, 'fiat', 'Palio', 4, 'Sedan', 'JKL-3456', 600, 'Disponível', 2345);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2020, 'toyota', 'Corolla', 5, 'Sedan', 'MNO-7890', 600, 'Indisponível', 6789);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2018, 'honda', 'Civic', 6, 'SUV', 'PQR-1234',600,  'Disponível', 4321);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2019, 'hyunday', 'HB20', 7, 'Hatchback', 'STU-5678', 600, 'Disponível', 1357);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2017, 'renout', 'Sandero', 8, 'SUV', 'VWX-9012', 600, 'Indisponível', 2468);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2018, 'nissan', 'Versa', 9, 'Sedan', 'YZA-3456', 600, 'Disponível', 9753);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2018, 'peugeot', '208', 10, 'Hatchback', 'BCD-6789',600, 'Indisponível', 8642);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2017, 'toyota', 'Etios', 11, 'Sedan', 'EFG-0123', 600, 'Disponível', 1234);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2019, 'honda', 'Fit', 12, 'Hatchback', 'HIJ-4567', 600, 'Indisponível', 6394);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2016, 'fiat', 'Uno', 13, 'Sedan', 'KLM-8901', 600, 'Disponível', 5271);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2020, 'hyunday', 'Creta', 14, 'SUV', 'NOP-2345', 600, 'Indisponível', 9183);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2018, 'nissan','March', 15, 'Hatchback', 'QRS-6789', 600, 'Disponível', 3067);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2019, 'chevrolet', 'Prisma', 16, 'Sedan', 'TUV-0123', 600, 'Disponível', 7123);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2017, 'nissan', 'Kicks', 17, 'SUV', 'VWX-4567', 600, 'Indisponível', 8954);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2018, 'volkswagem', 'Up', 18, 'Hatchback', 'YZA-8901', 600, 'Disponível', 1234);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2016, 'jeep', 'Renegade', 19, 'SUV', 'BCD-2345', 600, 'Indisponível', 7852);
INSERT INTO carros (ano, marca, modelo, id_carro, tipo, placa, preco_aluguel, disponibilidade, Agencia) VALUES (2020, 'hyunday','HB20', 20, 'Hatchback', 'EFG-6789', 600, 'Disponível', 2649);


-- Inserir dados na tabela de Manutenção (id_manutencao, data_manutencao, km, custo, descricao, tipo_manutencao)
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (1, '2024-05-01', 15000, 250.00,  'manutencao a fazer', 'Troca de óleo', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (2, '2024-04-28', 16000, 300.00,  'manutencao a fazer', 'Troca de filtro de ar', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (3, '2024-04-30', 17000, 200.00,  'manutencao feita', 'Alinhamento e balanceamento', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (4, '2024-04-29', 18000, 400.00,  'manutencao feita', 'Substituição de pastilhas de freio', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (5, '2024-04-27', 19000, 150.00,  'manutencao a fazer', 'Revisão geral', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (6, '2024-04-26', 20000, 350.00,  'manutencao a fazer', 'Troca de velas', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (7, '2024-05-02', 21000, 280.00,  'manutencao feita', 'Substituição de correia dentada', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (8, '2024-05-03', 22000, 200.00,  'manutencao a fazer', 'Troca de filtro de combustível', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (9, '2024-04-29', 23000, 300.00,  'manutencao a fazer', 'Troca de óleo do motor', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (10, '2024-04-30', 24000, 400.00, 'manutencao feita',  'Reparo no sistema de ar condicionado', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (11, '2024-04-28', 25000, 180.00, 'manutencao a fazer',  'Troca de filtro de óleo', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (12, '2024-04-29', 26000, 320.00, 'manutencao a fazer',  'Troca de pneus', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (13, '2024-05-01', 27000, 250.00, 'manutencao feita',  'Troca de amortecedores', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (14, '2024-04-30', 28000, 280.00, 'manutencao feita',  'Substituição de bateria', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (15, '2024-04-27', 29000, 200.00, 'manutencao feita',  'Reparo no sistema elétrico', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (16, '2024-05-02', 30000, 350.00, 'manutencao a fazer',  'Troca de fluido de freio', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (17, '2024-05-03', 31000, 180.00, 'manutencao a fazer',  'Limpeza de bicos injetores', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (18, '2024-04-28', 32000, 400.00, 'manutencao feita',  'Reparo na suspensão', 'Corretiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (19, '2024-04-29', 33000, 220.00, 'manutencao a fazer',  'Troca de filtro de ar condicionado', 'Preventiva');
INSERT INTO Manutencao (id_manutencao, data_manutencao, km, custo, Status_Manutencao, descricao, tipo_manutencao) VALUES (20, '2024-04-30', 34000, 270.00, 'manutencao a fazer',  'Substituição de palhetas do limpador', 'Preventiva');
-- Inserir dados adicionais na tabela de Funcionarios

INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('João', 1, 'Silva', 'Gerente', 5000.00, '2024-01-15', 1234);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Maria', 2, 'Santos', 'Assistente Administrativo', 3000.00, '2023-08-20', 1234);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Carlos', 3, 'Oliveira', 'Analista de Sistemas', 4000.00, '2022-05-10', 9101);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Ana', 4, 'Pereira', 'Desenvolvedor', 4500.00, '2023-11-30', 2345);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Pedro', 5, 'Martins', 'Analista de Marketing', 3500.00, '2022-09-25', 6789);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Mariana', 6, 'Almeida', 'Contador', 3800.00, '2023-04-12', 4321);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Lucas', 7, 'Ferreira', 'Analista Financeiro', 4200.00, '2022-11-18', 1357);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Camila', 8, 'Rocha', 'Recursos Humanos', 3200.00, '2023-06-05', 2468);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Gustavo', 9, 'Souza', 'Estoquista', 2800.00, '2024-03-22', 9753);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Patricia', 10, 'Lima', 'Secretária', 3000.00, '2022-07-14', 8642);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Rafael', 11, 'Gomes', 'Assistente de Vendas', 3200.00, '2023-02-09', 1234);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Fernanda', 12, 'Barbosa', 'Analista de Qualidade', 3800.00, '2024-01-28', 6394);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Diego', 13, 'Correia', 'Designer Gráfico', 3500.00, '2022-10-03', 5271);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Larissa', 14, 'Rodrigues', 'Engenheiro de Produção', 4500.00, '2023-07-19', 9183);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Felipe', 15, 'Araujo', 'Analista de Compras', 4000.00, '2022-12-05', 3067);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Aline', 16, 'Cardoso', 'Técnico de Manutenção', 3200.00, '2023-03-11', 7123);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Marcelo', 17, 'Nascimento', 'Assistente de Logística', 3000.00, '2024-02-17', 8954);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Juliana', 18, 'Pinto', 'Analista de Recursos Humanos', 3800.00, '2022-08-23', 1234);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Daniel', 19, 'Costa', 'Analista de TI', 4200.00, '2023-05-06', 7852);
INSERT INTO funcionario (Nome, Id_Funcionario, Sobrenome, Cargo, Salario, Data_Contratacao, Num_Agencia) VALUES ('Vanessa', 20, 'Mendes', 'Assistente Administrativo', 3500.00, '2024-04-09', 2649);

-- agencia

INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (1234, 'Rua A, 123', 'Sumare', '(11) 1234-5678', 'São Paulo');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (1234, 'Avenida B, 456', 'Sumare', '(11) 9876-5432', 'Sao Paulo');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (9101, 'Rua C, 789', 'Belo Horizonte', '(31) 2468-1357', 'Minas Gerais');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (2345, 'Avenida D, 1011', 'Salvador', '(71) 3698-7524', 'Bahia');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (6789, 'Rua E, 1213', 'Brasília', '(61) 8523-1479', 'Distrito Federal');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (4321, 'Avenida F, 1415', 'Recife', '(81) 6394-7281', 'Pernambuco');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (1357, 'Rua G, 1617', 'Fortaleza', '(85) 5741-9203', 'Ceará');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (2468, 'Avenida H, 1820', 'Curitiba', '(41) 3067-8952', 'Paraná');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (9753, 'Rua I, 2122', 'Porto Alegre', '(51) 4302-7856', 'Rio Grande do Sul');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (8642, 'Avenida J, 2324', 'Manaus', '(92) 2649-7123', 'Amazonas');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (1234, 'Rua K, 2526', 'Belém', '(91) 8954-6392', 'Pará');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (6394, 'Avenida L, 2728', 'Goiânia', '(62) 5271-3067', 'Goiás');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (5271, 'Rua M, 2930', 'Vitória', '(27) 7519-9183', 'Espírito Santo');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (9183, 'Avenida N, 3132', 'Natal', '(84) 9183-5271', 'Rio Grande do Norte');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (3067, 'Rua O, 3334', 'Teresina', '(86) 3067-8954', 'Piauí');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (7123, 'Avenida P, 3536', 'Sumare', '(11) 4302-7851', 'Sao Paulo');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (8954, 'Rua Q, 3738', 'Florianópolis', '(48) 8954-6392', 'Santa Catarina');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (1234, 'Avenida R, 3940', 'Campo Grande', '(67) 5271-3067', 'Mato Grosso do Sul');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (7852, 'Rua S, 4142', 'João Pessoa', '(83) 7519-9183', 'Paraíba');
INSERT INTO Agencia (Num_Agencia, Endereco, Cidade, Contato, Estado) VALUES (2649, 'Avenida T, 4344', 'Cuiabá', '(65) 9183-5271', 'Mato Grosso');
-- pagamento

INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (1, 'Concluído', 'Cartão de Crédito', 1500.00, '2024-01-15');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (2, 'Pendente', 'Boleto Bancário', 2000.00, '2024-02-20');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (3, 'Concluído', 'Transferência Bancária', 1750.50, '2024-03-10');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (4, 'Concluído', 'Dinheiro', 1200.00, '2024-04-05');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (5, 'Pendente', 'Cheque', 2500.00, '2024-05-01');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (6, 'Concluído', 'PIX', 1800.75, '2024-06-08');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (7, 'Pendente', 'Cartão de Débito', 3000.00, '2024-07-12');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (8, 'Concluído', 'Transferência Internacional', 2200.00, '2024-08-18');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (9, 'Concluído', 'Depósito Bancário', 1350.25, '2024-09-22');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (10,'Pendente', 'PicPay', 2800.00, '2024-10-29');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (11,'Concluído', 'Apple Pay', 1950.50, '2024-11-03');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (12,'Concluído', 'Samsung Pay', 2100.00, '2024-12-14');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (13,'Pendente', 'PayPal', 3200.00, '2025-01-20');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (14,'Concluído', 'Boleto Digital', 1750.75, '2025-02-25');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (15,'Concluído', 'Cartão Presente', 1500.00, '2025-03-30');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (16,'Pendente', 'Transferência entre Contas', 1900.00, '2025-04-05');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (17,'Concluído', 'Vale-Alimentação', 1250.50, '2025-05-10');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (18,'Pendente', 'Vale-Refeição', 2300.00, '2025-06-15');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (19,'Concluído', 'Dinheiro Digital', 1450.25, '2025-07-20');
INSERT INTO Pagamento (Id_Cliente, Status_Pagamento, Forma_Pagamento, Valor, Data_Pagamento) VALUES (20,'Concluído', 'Criptomoeda', 1800.00, '2025-08-25');
-- feedbackId_Cliente, 

INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (1,  1, 'Ótimo atendimento, estou muito satisfeito!', 'Positivo', '2024-01-15');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (2,  2, 'Serviço rápido e eficiente.', 'Positivo', '2024-02-20');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (3,  3, 'Precisam melhorar o atendimento ao cliente.', 'Negativo', '2024-03-10');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (4,  4, 'Fiquei impressionado com a qualidade do serviço.', 'Positivo', '2024-04-05');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (5,  5, 'Esperava mais, não atendeu minhas expectativas.', 'Negativo', '2024-05-01');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (6,  6, 'Recomendo a todos, excelente!', 'Positivo', '2024-06-08');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (7,  7, 'Poderiam oferecer mais opções de pagamento.', 'Neutro', '2024-07-12');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (8,  8, 'Muito satisfeito com o produto adquirido.', 'Positivo', '2024-08-18');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (9,  9, 'Serviço confiável e seguro.', 'Positivo', '2024-09-22');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (10, 10, 'Faltou transparência nas informações.', 'Negativo', '2024-10-29');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (11, 11, 'Estou decepcionado com a qualidade do serviço.', 'Negativo', '2024-11-03');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (12, 12, 'Precisam melhorar a interface do aplicativo.', 'Neutro', '2024-12-14');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (13, 13, 'Excelente suporte ao cliente.', 'Positivo', '2025-01-20');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (14, 14, 'Preço acessível, recomendo!', 'Positivo', '2025-02-25');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (15, 15, 'Decepcionado com a falta de variedade de produtos.', 'Negativo', '2025-03-30');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (16, 16, 'Processo de compra simples e rápido.', 'Positivo', '2025-04-05');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (17, 17, 'Produtos de qualidade, serviço impecável.', 'Positivo', '2025-05-10');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (18, 18, 'Atendimento ao cliente deixou a desejar.', 'Negativo', '2025-06-15');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (19, 19, 'Facilidade de navegação no site.', 'Positivo', '2025-07');
INSERT INTO Feedback (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (20, 20, 'Muito satisfeito com o serviço.', 'Ótimo', '2025-08-25');
INSERT INTO FeedBack (Id_Cliente, Id_Carro, Comentario, Avaliacao, Data_Feedback) VALUES (13, Null, 'Excelente suporte ao cliente.', 'Positivo', '2025-01-20');

-- locacao

INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-01-20', '2024-01-15', 250.00, 1,'Maria',   1);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-02-25', '2024-02-20', 350.00, 2,'João',    3);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-03-20', '2024-03-10', 420.50, 3,'ana',     2);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-04-15', '2024-04-05', 300.00, 4,'pedro',   4);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-05-10', '2024-05-01', 480.00, 5,'carolina',5);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-06-15', '2024-06-08', 370.75, 6,'Luiz',    6);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-07-20', '2024-07-12', 510.00, 7,'ariana',  7);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-08-25', '2024-08-18', 420.00, 1,'Maria',  8);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-09-30', '2024-09-22', 390.25, 9,'juliana', 9);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-10-05', '2024-10-29', 560.00, 10,'Daniel', 10);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-11-10', '2024-11-03', 450.50, 5, 'Carolina', 11);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2024-12-20', '2024-12-14', 600.00, 12,'Bruno',  12);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-01-25', '2025-01-20', 480.75, 13,'Fernan', 13);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-02-28', '2025-02-25', 620.00, 1, 'Maria',  14);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-03-30', '2025-03-30', 530.00, 15,'Isabel', 15);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-04-05', '2025-04-05', 450.50, 16,'Gabrie', 16);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-05-10', '2025-05-10', 680.25, 2, 'Joao', 17);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-06-15', '2025-06-15', 550.00, 18,'André',  18);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-07-20', '2025-07-20', 720.50, 1, 'Maria', 19);
INSERT INTO Locacao (Data_Devolucao, Data_locacao, Valor_total, Id_Cliente, nome, Id_Carro) VALUES ('2025-08-25', '2025-08-25', 620.00, 20,'Thiago', 20);

-- recebe

INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (1, 1);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (2, 3);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (3, 2);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (4, 4);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (5, 5);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (6, 6);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (7, 7);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (8, 8);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (9, 9);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (10, 10);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (11, 11);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (12, 12);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (13, 13);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (14, 14);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (15, 15);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (16, 16);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (17, 17);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (18, 18);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (19, 19);
INSERT INTO Recebe (Id_Manutencao, Id_Carro) VALUES (20, 20);

-- envia

INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Serviço excelente, muito obrigado!', 1, 1); 
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Estou bastante satisfeito com a empresa.', 2, 2);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Precisam melhorar o suporte ao cliente.', 3, 3);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Atendimento muito demorado.', 4, 4);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Fui muito bem atendido, recomendo a todos.', 5, 5);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Excelente custo-benefício.', 6, 6);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Problemas recorrentes, não recomendo.', 7, 7);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Precisam melhorar a pontualidade.', 8, 8);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Profissionais muito qualificados.', 9, 9);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Serviço rápido e eficiente.', 10, 10);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Ótimo atendimento, estou muito satisfeito!', 11, 11);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Muito satisfeito com o serviço.', 12, 12);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Estou aguardando solução para meu problema.', 13, 13);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Estou bastante insatisfeito com o serviço prestado.', 14, 14);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Ainda estou aguardando retorno da empresa.', 15, 15);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Boa comunicação com os clientes.', 16, 16);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Não gostei do atendimento prestado.', 17, 17);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Falta de transparência nas informações.', 18, 18);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Muito bom, continuem assim!', 19, 19);
INSERT INTO Envia (Observacao, Id_Cliente, Id_Feedback) VALUES ('Poderiam oferecer mais opções de pagamento.', 20, 20);


-- Carros disponiveis
SELECT * FROM carros WHERE disponibilidade = 'Disponível';

-- clientes que fizeram locacao nos ultimos 3 meses
SELECT DISTINCT Id_Cliente, nome
FROM Locacao
WHERE Data_locacao >= DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH);

-- mnostrando os funcionarios que estao cadastrados na agencia "1234"
SELECT *
FROM funcionario
WHERE Num_Agencia = 1234;

-- exibir os pagamentos de um cliente especifico
 SELECT *
FROM Pagamento
WHERE Id_Cliente = 5;

-- listar carros que precisam de manutencao
SELECT *
FROM Manutencao
WHERE Status_Manutencao = 'manutencao a fazer';

-- - Escreva uma consulta para encontrar os clientes que alugaram carros mais de uma vez usando uma subconsulta correlacionada.
SELECT id_cliente, COUNT(*) AS num_alugueis
FROM Aluguel
GROUP BY id_cliente
HAVING COUNT(*) > 1;

-- - Identifique os carros alugados por clientes que vivem na mesma cidade que um determinado funcionário.
SELECT DISTINCT a.Id_Carro, c.Modelo, c.Placa, c.Cor, c.Ano
FROM Aluguel a
JOIN Cliente cl ON a.Id_Cliente = cl.Id_Cliente
JOIN Carro c ON a.Id_Carro = c.Id_Carro
JOIN Funcionario f ON cl.Cidade = f.Cidade
WHERE f.Nome = 'Nome do Funcionário';

-- atualizando o preco dos carros com a marca toyota
UPDATE carros
SET preco_aluguel = novo_valor
WHERE marca = 'Toyota';

-- modificando a data de retorno de um carro do cliente
UPDATE Locacao
SET Data_Devolucao = '2024-01-26'
WHERE Id_Cliente = 1;

-- atualizando a manutencao de um carro logo apos ele ter sido arrumado
UPDATE Manutencao
SET Status_Manutencao = 'manutencao feita'
WHERE id_manutencao = 1;

-- alterando algum dado da tabela pagamento 
UPDATE Pagamento
SET Forma_Pagamento = 'PIX'
WHERE Forma_Pagamento IN ('Cartão de Crédito', 'Dinheiro');

-- removendo a coluna sobrenome da tabela clientes
ALTER TABLE clientes
DROP COLUMN sobrenome;

-- listando os carros alugados junto com o nome do funcionario, modelo do carro e data de aluguel
SELECT Locacao.Data_locacao, clientes.nome AS Nome_Cliente, carros.modelo AS Modelo_Carro
FROM Locacao
INNER JOIN clientes ON Locacao.Id_Cliente = clientes.id_cliente
INNER JOIN carros ON Locacao.Id_Carro = carros.id_carro;

-- listando os pagamentos feitos por clientes mostrando nomes e valores
SELECT Pagamento.Data_Pagamento, clientes.nome AS Nome_Cliente, Pagamento.Valor
FROM Pagamento
INNER JOIN clientes ON Pagamento.Id_Cliente = clientes.id_cliente;

-- listando feedbacks dos clientes, juntamente com os nomes e modelos de carros alugados
SELECT f.Data_Feedback, c.nome AS Nome_Cliente, l.nome AS Modelo_Carro, f.Comentario
FROM Feedback f
INNER JOIN clientes c ON f.Id_Cliente = c.id_cliente
INNER JOIN Locacao loc ON f.Id_Cliente = loc.Id_Cliente
INNER JOIN Carros l ON loc.Id_Carro = l.Id_Carro;

-- listando carros disponiveis na agencia "1234"
SELECT *
FROM carros
WHERE disponibilidade = 'Disponível' AND Agencia = 1234;

-- mostre todos os alugueis de carros feitos em sumaré

-- exibindo funcionarios que trabalham em uma agencia onde tem pelo meonos um carro da toyota
SELECT *
FROM funcionario
WHERE Num_Agencia IN (
    SELECT DISTINCT Agencia
    FROM carros
    WHERE marca = 'toyota'
);
-- liste todos os carros e se possivel mostre o feedback associado a cada carro
SELECT DISTINCT modelo FROM carros;
SELECT c.modelo, f.Comentario, f.Avaliacao, f.Data_Feedback
FROM carros c
JOIN FeedBack f ON c.id_carro = f.Id_Carro
ORDER BY c.id_carro;

-- Mostre todos os clientes, incluindo aqueles que ainda não alugaram nenhum carro.
SELECT * FROM clientes;

-- Exiba todas as agências e, se houver, o número total de carros disponíveis em cada agência.
SELECT * FROM Agencia;

-- Liste todos os feedbacks deixados pelos clientes, incluindo aqueles que não estão associados a nenhum aluguel de carro.  

-- Mostre todos os carros, incluindo aqueles que ainda não foram alugados por nenhum cliente.

-- Exiba todas as manutenções realizadas, incluindo aquelas que não estão associadas a nenhum carro específico.