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
