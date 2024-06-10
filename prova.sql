create database torneiolol
use TORNEIOLOL

CREATE TABLE Player (
 
    id INT IDENTITY PRIMARY KEY,
 
    nome VARCHAR(255) NOT NULL,
 
    idade INT NOT NULL,
 
    data_nasc DATE NOT NULL,
 
    posicoes VARCHAR(255) NOT NULL,
 
    estado VARCHAR(255) NOT NULL,
 
    cidade VARCHAR(255) NOT NULL,
 
    bairro VARCHAR(255) NOT NULL,
	email_id int not null,
	timee_id int not null,
	boneco_id int not null,
 
	FOREIGN KEY (timee_id) REFERENCES Timee(id)
 
);


CREATE TABLE Email(
	id INT identity PRIMARY KEY,
	player_id INT,
	FOREIGN KEY (player_id) REFERENCES Player(id),
	email varchar(255));


CREATE TABLE Partida (
 
    id INT IDENTITY PRIMARY KEY,
 
    duracao INT NOT NULL,
 
    data DATE NOT NULL,
 
    resultado VARCHAR(255) NOT NULL
 
);
CREATE TABLE Torneio (
 
    id INT IDENTITY PRIMARY KEY,
 
    premiacao DECIMAL(10, 2) NOT NULL,
 
    data_termino DATE NOT NULL,
 
    data_inicio DATE NOT NULL,
 
    nome VARCHAR(255) NOT NULL,
 
    estado VARCHAR(255) NOT NULL,
 
    cidade VARCHAR(255) NOT NULL,
 
    pa�s VARCHAR(255) NOT NULL,
);
CREATE TABLE Timee (
 
    id INT IDENTITY PRIMARY KEY,
 
    data_criacao DATE NOT NULL,
 
    nome VARCHAR(255) NOT NULL,
 
    regiao VARCHAR(255) NOT NULL
 
);
CREATE TABLE Boneco (
 
    id INT identity PRIMARY KEY,
 
    dificuldade VARCHAR(255) NOT NULL,
 
    funcao VARCHAR(255) NOT NULL,
 
    data_lancamento DATE NOT NULL,
 
    nome VARCHAR(255) NOT NULL
 
);
CREATE TABLE Partida_Time (
 
    partida_id INT,
 
    timee_id INT,
 
    PRIMARY KEY (partida_id, timee_id),
 
    FOREIGN KEY (partida_id) REFERENCES Partida(id),
 
    FOREIGN KEY (timee_id) REFERENCES Timee(id),
);

CREATE TABLE Torneio_Time (
 
    torneio_id INT,
 
    timee_id INT,

	colocacao int,
 
    PRIMARY KEY (torneio_id, timee_id),
 
    FOREIGN KEY (torneio_id) REFERENCES Torneio(id),
 
    FOREIGN KEY (timee_id) REFERENCES Timee(id)
 
);
CREATE TABLE Time_Player (
 
    timee_id INT,
 
    player_id INT,
 
    PRIMARY KEY (timee_id, player_id),
 
    FOREIGN KEY (timee_id) REFERENCES Timee(id),
 
    FOREIGN KEY (player_id) REFERENCES Player(id)
 
);



INSERT INTO Timee (data_criacao, nome, regiao) VALUES 
('2010-06-10', 'Team Liquid', 'North America'),
('2011-09-05', 'Cloud9', 'North America'),
('2012-11-01', 'Fnatic', 'Europe'),
('2013-03-12', 'G2 Esports', 'Europe'),
('2014-07-15', 'TSM', 'North America'),
('2015-01-20', 'Rogue', 'Europe'),
('2016-04-25', '100 Thieves', 'North America'),
('2017-08-30', 'Evil Geniuses', 'North America'),
('2018-12-10', 'Origen', 'Europe'),
('2019-03-21', 'MAD Lions', 'Europe'),
('2020-06-11', 'SK Gaming', 'Europe'),
('2021-01-01', 'Astralis', 'Europe'),
('2022-02-13', 'Misfits', 'Europe'),
('2022-05-22', 'Dignitas', 'North America'),
('2023-04-11', 'Immortals', 'North America'),
('2023-05-01', 'FlyQuest', 'North America'),
('2023-06-15', 'Golden Guardians', 'North America'),
('2023-07-20', 'Excel Esports', 'Europe'),
('2023-08-30', 'Schalke 04', 'Europe'),
('2023-10-10', 'Vitality', 'Europe');



INSERT INTO Boneco (dificuldade, funcao, data_lancamento, nome) VALUES 
('Medium', 'Mage', '2010-06-10', 'Ahri'),
('Hard', 'Assassin', '2011-09-05', 'Zed'),
('Medium', 'Support', '2012-11-01', 'Thresh'),
('Easy', 'Tank', '2013-03-12', 'Garen'),
('Medium', 'Marksman', '2014-07-15', 'Caitlyn'),
('Hard', 'Mage', '2015-01-20', 'LeBlanc'),
('Easy', 'Support', '2016-04-25', 'Janna'),
('Medium', 'Fighter', '2017-08-30', 'Camille'),
('Hard', 'Assassin', '2018-12-10', 'KhaZix'),
('Easy', 'Tank', '2019-03-21', 'Malphite'),
('Medium', 'Mage', '2020-06-11', 'Syndra'),
('Easy', 'Marksman', '2021-01-01', 'Ashe'),
('Medium', 'Support', '2022-02-13', 'Nami'),
('Hard', 'Fighter', '2022-05-22', 'Riven'),
('Medium', 'Mage', '2023-04-11', 'Viktor'),
('Easy', 'Tank', '2023-05-01', 'Braum'),
('Hard', 'Assassin', '2023-06-15', 'Ekko'),
('Medium', 'Support', '2023-07-20', 'Lulu'),
('Easy', 'Marksman', '2023-08-30', 'Jinx'),
('Medium', 'Fighter', '2023-10-10', 'Sett');



INSERT INTO Player (nome, idade, data_nasc, posicoes, estado, cidade, bairro, email_id, timee_id, boneco_id) VALUES 
('John Doe', 22, '2002-05-10', 'Mid', 'California', 'Los Angeles', 'Hollywood', 1, 1, 1),
('Jane Smith', 24, '2000-07-15', 'ADC', 'New York', 'New York', 'Manhattan', 2, 1, 2),
('Sam Johnson', 20, '2003-09-20', 'Support', 'Texas', 'Houston', 'Downtown', 3, 2, 3),
('Alice Brown', 23, '2001-02-25', 'Top', 'Florida', 'Miami', 'South Beach', 4, 2, 4),
('Bob White', 25, '1999-12-10', 'Jungle', 'Nevada', 'Las Vegas', 'The Strip', 5, 3, 5),
('Chris Green', 21, '2003-03-15', 'Mid', 'Illinois', 'Chicago', 'Hyde Park', 6, 3, 6),
('Nancy Blue', 22, '2002-11-05', 'ADC', 'Washington', 'Seattle', 'Capitol Hill', 7, 4, 7),
('Mike Red', 24, '2000-08-12', 'Support', 'Massachusetts', 'Boston', 'Back Bay', 8, 4, 8),
('Laura Black', 19, '2004-10-10', 'Top', 'Pennsylvania', 'Philadelphia', 'Center City', 9, 5, 9),
('Gary White', 26, '1998-04-18', 'Jungle', 'Arizona', 'Phoenix', 'Downtown', 10, 5, 10),
('Kelly Gold', 27, '1997-01-21', 'Mid', 'New Jersey', 'Jersey City', 'Journal Square', 11, 6, 11),
('Frank Silver', 22, '2002-06-10', 'ADC', 'Georgia', 'Atlanta', 'Buckhead', 12, 6, 12),
('Tina Bronze', 23, '2001-09-05', 'Support', 'Ohio', 'Cleveland', 'Tremont', 13, 7, 13),
('Carl Steel', 24, '2000-12-01', 'Top', 'Michigan', 'Detroit', 'Midtown', 14, 7, 14),
('Diana Platinum', 21, '2003-05-18', 'Jungle', 'North Carolina', 'Charlotte', 'Uptown', 15, 8, 15),
('Peter Diamond', 23, '2001-08-22', 'Mid', 'Virginia', 'Richmond', 'Downtown', 16, 8, 16),
('Helen Ruby', 22, '2002-02-10', 'ADC', 'Colorado', 'Denver', 'Cherry Creek', 17, 9, 17),
('Patrick Emerald', 24, '2000-11-05', 'Support', 'Minnesota', 'Minneapolis', 'Downtown West', 18, 9, 18),
('Olivia Sapphire', 25, '1999-09-30', 'Top', 'Wisconsin', 'Milwaukee', 'East Town', 19, 10, 19),
('Steven Pearl', 26, '1998-06-20', 'Jungle', 'Missouri', 'Kansas City', 'Westport', 20, 10, 20);



INSERT INTO Email (player_id, email) VALUES 
(1, 'johndoe@example.com'),
(2, 'janesmith@example.com'),
(3, 'samjohnson@example.com'),
(4, 'alicebrown@example.com'),
(5, 'bobwhite@example.com'),
(6, 'chrisgreen@example.com'),
(7, 'nancyblue@example.com'),
(8, 'mikered@example.com'),
(9, 'laurablack@example.com'),
(10, 'garywhite@example.com'),
(11, 'kellygold@example.com'),
(12, 'franksilver@example.com'),
(13, 'tinabronze@example.com'),
(14, 'carlsteel@example.com'),
(15, 'dianaplatinum@example.com'),
(16, 'peterdiamond@example.com'),
(17, 'helenruby@example.com'),
(18, 'patrickemerald@example.com'),
(19, 'oliviasapphire@example.com'),
(20, 'stevenpearl@example.com');



INSERT INTO Partida (duracao, data, resultado) VALUES 
(35, '2023-01-10', '3-0'),
(28, '2023-01-15', '2-1'),
(42, '2023-02-20', '3-0'),
(30, '2023-03-25', '0-3'),
(25, '2023-04-10', '3-0'),
(50, '2023-04-20', '1-2'),
(33, '2023-05-15', '3-0'),
(45, '2023-06-18', '2-1'),
(38, '2023-07-22', '3-1'),
(40, '2023-08-30', '1-2'),
(32, '2023-09-12', '3-0'),
(29, '2023-09-25', '2-0'),
(31, '2023-10-05', '3-1'),
(43, '2023-10-20', '0-3'),
(35, '2023-11-01', '3-0'),
(27, '2023-11-10', '2-1'),
(44, '2023-11-20', '1-3'),
(37, '2023-12-05', '3-0'),
(41, '2023-12-12', '0-3'),
(36, '2023-12-20', '3-0');



INSERT INTO Torneio (premiacao, data_termino, data_inicio, nome, estado, cidade, pa�s) VALUES 
(10000.00, '2023-12-20', '2023-12-01', 'World Championship', 'California', 'Los Angeles', 'USA'),
(5000.00, '2023-11-30', '2023-11-15', 'Mid-Season Invitational', 'New York', 'New York', 'USA'),
(7500.00, '2023-10-31', '2023-10-15', 'All-Star Event', 'Nevada', 'Las Vegas', 'USA'),
(3000.00, '2023-09-30', '2023-09-15', 'Regional Finals', 'Texas', 'Dallas', 'USA'),
(6000.00, '2023-08-31', '2023-08-15', 'Summer Split', 'Florida', 'Miami', 'USA'),
(4000.00, '2023-07-31', '2023-07-15', 'Spring Split', 'Illinois', 'Chicago', 'USA'),
(5500.00, '2023-06-30', '2023-06-15', 'Pro-Am Tournament', 'Washington', 'Seattle', 'USA'),
(7000.00, '2023-05-31', '2023-05-15', 'International Invitational', 'Massachusetts', 'Boston', 'USA'),
(8000.00, '2023-04-30', '2023-04-15', 'Intercontinental Cup', 'Pennsylvania', 'Philadelphia', 'USA'),
(9500.00, '2023-03-31', '2023-03-15', 'National Finals', 'Arizona', 'Phoenix', 'USA'),
(12000.00, '2023-02-28', '2023-02-15', 'Global Championship', 'Colorado', 'Denver', 'USA'),
(8500.00, '2023-01-31', '2023-01-15', 'Champions Cup', 'Minnesota', 'Minneapolis', 'USA'),
(9200.00, '2022-12-31', '2022-12-15', 'Winter Invitational', 'Wisconsin', 'Milwaukee', 'USA'),
(7800.00, '2022-11-30', '2022-11-15', 'Fall Brawl', 'Missouri', 'Kansas City', 'USA'),
(6300.00, '2022-10-31', '2022-10-15', 'Autumn Open', 'North Carolina', 'Charlotte', 'USA'),
(5900.00, '2022-09-30', '2022-09-15', 'Harvest Cup', 'Georgia', 'Atlanta', 'USA'),
(4700.00, '2022-08-31', '2022-08-15', 'Summer Showdown', 'Ohio', 'Cleveland', 'USA'),
(5200.00, '2022-07-31', '2022-07-15', 'Heatwave Tournament', 'Michigan', 'Detroit', 'USA'),
(6100.00, '2022-06-30', '2022-06-15', 'Sunshine Invitational', 'Virginia', 'Richmond', 'USA'),
(4300.00, '2022-05-31', '2022-05-15', 'Spring Fling', 'New Jersey', 'Jersey City', 'USA');


INSERT INTO Partida_Time (partida_id, timee_id) VALUES 
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3),
(6, 3),
(7, 4),
(8, 4),
(9, 5),
(10, 5),
(11, 6),
(12, 6),
(13, 7),
(14, 7),
(15, 8),
(16, 8),
(17, 9),
(18, 9),
(19, 10),
(20, 10);



INSERT INTO Torneio_Time (torneio_id, timee_id, colocacao) VALUES 
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 3),
(5, 3, 2),
(6, 3, 4),
(7, 4, 1),
(8, 4, 3),
(9, 5, 2),
(10, 5, 5),
(11, 6, 3),
(12, 6, 4),
(13, 7, 1),
(14, 7, 2),
(15, 8, 5),
(16, 8, 3),
(17, 9, 2),
(18, 9, 4),
(19, 10, 3),
(20, 10, 1);



INSERT INTO Time_Player (timee_id, player_id) VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20);

INSERT INTO Player (nome, idade, data_nasc, posicoes, estado, cidade, bairro, email_id, timee_id, boneco_id) 
VALUES ('Cleitin', 21, '2003-05-10', 'Mid', 'S�o Paulo', 'Franca', 'Vera Cruz', 21, 11, 21);

UPDATE Player 
SET bairro = 'Tropical'
WHERE id = 21;

DELETE FROM Player 
WHERE id = 21;

SELECT * FROM player

1
SELECT Player.nome AS NomeDoJogador, Timee.nome AS NomeDoTime
FROM Player
JOIN Timee ON Player.timee_id = Timee.id;

2
SELECT nome, idade, posicoes
FROM Player
WHERE posicoes = 'Mid'
ORDER BY idade DESC;

3
SELECT Timee.nome AS NomeDoTime, Player.nome AS NomeDoJogador
FROM Timee
JOIN Player ON Timee.id = Player.timee_id
WHERE Timee.regiao = 'Europe';

4
SELECT Torneio.nome AS NomeDoTorneio, Timee.nome AS NomeDoTime, Torneio_Time.colocacao
FROM Torneio
JOIN Torneio_Time ON Torneio.id = Torneio_Time.torneio_id
JOIN Timee ON Torneio_Time.timee_id = Timee.id
ORDER BY Torneio.nome, Torneio_Time.colocacao;

SELECT nome, cidade, estado
FROM Player
WHERE estado = 'S�o Paulo'
ORDER BY cidade;

SELECT Player.nome AS NomeDoJogador, Boneco.nome AS NomeDoBoneco
FROM Player
JOIN Boneco ON Player.boneco_id = Boneco.id;

SELECT id, duracao, data, resultado
FROM Partida
WHERE duracao > 30
ORDER BY data DESC;

SELECT Timee.nome AS NomeDoTime, Torneio.nome AS NomeDoTorneio, Torneio_Time.colocacao
FROM Timee
JOIN Torneio_Time ON Timee.id = Torneio_Time.timee_id
JOIN Torneio ON Torneio_Time.torneio_id = Torneio.id
ORDER BY Torneio_Time.colocacao;

SELECT Player.nome AS NomeDoJogador, Timee.nome AS NomeDoTime, Torneio.nome AS NomeDoTorneio
FROM Player
JOIN Time_Player ON Player.id = Time_Player.player_id
JOIN Timee ON Time_Player.timee_id = Timee.id
JOIN Torneio_Time ON Timee.id = Torneio_Time.timee_id
JOIN Torneio ON Torneio_Time.torneio_id = Torneio.id
ORDER BY Player.nome, Torneio.data_inicio;


SELECT 
    Partida.id AS PartidaID, 
    Partida.duracao AS Duracao,
    Partida.data AS Data,
    Partida.resultado AS Resultado,
    Timee.nome AS NomeDoTime,
    Player.nome AS NomeDoJogador
FROM Partida
JOIN Partida_Time ON Partida.id = Partida_Time.partida_id
JOIN Timee ON Partida_Time.timee_id = Timee.id
JOIN Time_Player ON Timee.id = Time_Player.timee_id
JOIN Player ON Time_Player.player_id = Player.id
ORDER BY Partida.data, Timee.nome, Player.nome;