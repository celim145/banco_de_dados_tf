CREATE TABLE clientes (
    cliente_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE usuarios (
    usuario_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL,
    senha TEXT NOT NULL
);

CREATE TABLE log (
    log_id INTEGER PRIMARY KEY AUTOINCREMENT,
    message TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO clientes (nome, email, telefone, endereco)
VALUES ('João Silva', 'joao@email.com', '11987654321', 'Rua ABC, 123');

INSERT INTO usuarios (username, senha)
VALUES ('jose_silva', 'senha123');

CREATE TRIGGER insert_cliente_trigger
AFTER INSERT ON clientes
BEGIN
   INSERT INTO usuarios (username, senha) 
    VALUES ('default', 'password'); 
END;

CREATE TRIGGER insert_usuario_trigger
AFTER INSERT ON usuarios
BEGIN
    INSERT INTO log (message) 
    VALUES ('Novo usuário inserido com ID: ' || NEW.usuario_id);
END;

SELECT * FROM clientes;

SELECT * FROM usuarios;

UPDATE clientes
SET endereco = 'Rua Y, 1000'
WHERE nome = 'Maria Souza';

UPDATE usuarios
SET senha = 'novaSenha123'
WHERE username = 'maria_souza';

DELETE FROM usuarios
WHERE username = 'maria_souza';

SELECT * FROM log;

UPDATE clientes
SET endereco = 'Rua Y, 1000'
WHERE nome = 'Maria Souza';

UPDATE usuarios
SET senha = 'novaSenha123'
WHERE username = 'maria_souza'

SELECT * FROM usuarios;

INSERT INTO clientes (nome, email, telefone, endereco)
VALUES ('Maria Souza', 'maria@email.com', '11987654322', 'Avenida X, 500');

INSERT INTO usuarios (username, senha)
VALUES ('maria_souza', 'senha123');

SELECT * FROM usuarios;

SELECT * FROM log;






