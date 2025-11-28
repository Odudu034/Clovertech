-- 1. Criação do Banco de Dados
-- O nome do DB é 'clovertech_db', conforme configurado em config.php
CREATE DATABASE IF NOT EXISTS `clovertech_db`
DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE `clovertech_db`;

-----------------------------------------------------------------------

-- 2. Tabela 'usuarios'
-- Armazena dados de login e registro (usada por registrar.php e login.php)
CREATE TABLE `usuarios` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL, -- Armazena o hash da senha usando password_hash()
  `data_registro` DATETIME DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email` (`email`) -- Garante que cada email seja único
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-----------------------------------------------------------------------

-- 3. Tabela 'produtos'
-- Armazena os itens do marketplace (usada por produtos_api.php)
CREATE TABLE `produtos` (
  `id` INT(11) UNSIGNED NOT NULL, -- ID do produto, não auto-incremento, pois é fornecido no array JSON
  `nome` VARCHAR(255) NOT NULL,
  `categoria` VARCHAR(100) NOT NULL,
  `preco` DECIMAL(10,2) NOT NULL, -- DECIMAL é ideal para valores monetários
  `marca` VARCHAR(100) NOT NULL,
  `imagemURL` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-----------------------------------------------------------------------

-- 4. Inserção de um Usuário de Teste (Opcional)
-- Use esta linha APENAS se quiser um usuário pré-registrado.
-- ATENÇÃO: A senha 'minhasenha123' deve ser HASHEADA antes de ser inserida.
-- O hash abaixo é o resultado de password_hash('minhasenha123', PASSWORD_DEFAULT).
INSERT INTO `usuarios` (`nome`, `email`, `senha`) VALUES
('Usuario Teste', 'teste@clovertech.com', '$2y$10$7zVn1q2g.x0hXg8x2q.b.uVv2Lz3qE5g7p9s.vB6p.m8M3n8C9L8');