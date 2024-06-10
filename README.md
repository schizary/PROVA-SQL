<h1>🎮BANCO DE DADOS PARA TORNEIO DE LOL!</h1>
<p>Esse projeto foi feito para uma tarefa do primeiro semestre da materia Estrutura de Banco de Dados na FATEC.</p>
<h1>📝Objetivo</h1>
<p>O objetivo do Banco de Dados a seguir é comportar as informações de um torneio de league of legends, contendo todas os dados necessários.</p>

<h2>Criando as tabelas</h2>


```sql
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
```

```sql
   CREATE TABLE Email(
    id INT identity PRIMARY KEY,
    player_id INT,
    FOREIGN KEY (player_id) REFERENCES Player(id),
    email varchar(255));
```
```sql
   CREATE TABLE Email(

    id INT identity PRIMARY KEY,
    player_id INT,
    FOREIGN KEY (player_id) REFERENCES Player(id),
    email varchar(255));
```


```sql
CREATE TABLE Torneio (
 
    id INT IDENTITY PRIMARY KEY,
    premiacao DECIMAL(10, 2) NOT NULL,
    data_termino DATE NOT NULL,
    data_inicio DATE NOT NULL,
    nome VARCHAR(255) NOT NULL,
    estado VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    país VARCHAR(255) NOT NULL
 
);
```

```sql
CREATE TABLE Timee (
 
    id INT IDENTITY PRIMARY KEY,
    data_criacao DATE NOT NULL,
    nome VARCHAR(255) NOT NULL,
    regiao VARCHAR(255) NOT NULL
 
);
```

```sql
CREATE TABLE Boneco (
 
    id INT identity PRIMARY KEY,
    dificuldade VARCHAR(255) NOT NULL,
    funcao VARCHAR(255) NOT NULL,
    data_lancamento DATE NOT NULL,
    nome VARCHAR(255) NOT NULL
 
);
```

```sql
CREATE TABLE Partida_Time (
 
    partida_id INT,
    timee_id INT,
    PRIMARY KEY (partida_id, timee_id),
    FOREIGN KEY (partida_id) REFERENCES Partida(id),
    FOREIGN KEY (timee_id) REFERENCES Timee(id),
    data_entrada date,
    data_saida date
 
);

```
```sql
CREATE TABLE Partida_Time (
 
    partida_id INT,
    timee_id INT,
    PRIMARY KEY (partida_id, timee_id),
    FOREIGN KEY (partida_id) REFERENCES Partida(id),
    FOREIGN KEY (timee_id) REFERENCES Timee(id),
	   data_entrada date,
	   data_saida date
 
);
```
```sql
CREATE TABLE Torneio_Time (
 
    torneio_id INT,
    timee_id INT,
    PRIMARY KEY (torneio_id, timee_id),
    FOREIGN KEY (torneio_id) REFERENCES Torneio(id),
    FOREIGN KEY (timee_id) REFERENCES Timee(id)
);
```

```sql
CREATE TABLE Time_Player (
 
    timee_id INT,
    player_id INT,
    PRIMARY KEY (timee_id, player_id),
    FOREIGN KEY (timee_id) REFERENCES Timee(id),
    FOREIGN KEY (player_id) REFERENCES Player(id)
);
```





