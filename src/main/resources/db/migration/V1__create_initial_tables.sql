CREATE TABLE Livro (
    id_livro SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    data_lancamento DATE NOT NULL
);

CREATE TABLE Pessoa (
    id_pessoa SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    cep CHAR(9) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE Emprestimo (
    id_livro INT NOT NULL,
    id_pessoa INT NOT NULL,
    PRIMARY KEY (id_livro, id_pessoa),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);