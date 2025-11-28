-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/11/2025 às 13:37
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clovertech_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `imagemURL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `categoria`, `preco`, `marca`, `imagemURL`) VALUES
(1, 'Apple Smartphone Model 1', 'smartphones', 272.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+1'),
(2, 'Samsung Smartphone Model 2', 'smartphones', 345.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+2'),
(3, 'Xiaomi Smartphone Model 3', 'smartphones', 418.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+3'),
(4, 'Motorola Smartphone Model 4', 'smartphones', 491.00, 'Motorola', 'https://via.placeholder.com/120?text=Prod+4'),
(5, 'Google Smartphone Model 5', 'smartphones', 564.00, 'Google', 'https://via.placeholder.com/120?text=Prod+5'),
(6, 'ASUS Smartphone Model 6', 'smartphones', 637.00, 'ASUS', 'https://via.placeholder.com/120?text=Prod+6'),
(7, 'Realme Smartphone Model 7', 'smartphones', 710.00, 'Realme', 'https://via.placeholder.com/120?text=Prod+7'),
(8, 'Apple Smartphone Model 8', 'smartphones', 783.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+8'),
(9, 'Samsung Smartphone Model 9', 'smartphones', 856.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+9'),
(10, 'Xiaomi Smartphone Model 10', 'smartphones', 929.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+10'),
(11, 'Motorola Smartphone Model 11', 'smartphones', 1002.00, 'Motorola', 'https://via.placeholder.com/120?text=Prod+11'),
(12, 'Google Smartphone Model 12', 'smartphones', 1075.00, 'Google', 'https://via.placeholder.com/120?text=Prod+12'),
(13, 'ASUS Smartphone Model 13', 'smartphones', 1148.00, 'ASUS', 'https://via.placeholder.com/120?text=Prod+13'),
(14, 'Realme Smartphone Model 14', 'smartphones', 1221.00, 'Realme', 'https://via.placeholder.com/120?text=Prod+14'),
(15, 'Apple Smartphone Model 15', 'smartphones', 1294.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+15'),
(16, 'Samsung Smartphone Model 16', 'smartphones', 1367.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+16'),
(17, 'Xiaomi Smartphone Model 17', 'smartphones', 1440.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+17'),
(18, 'Motorola Smartphone Model 18', 'smartphones', 1513.00, 'Motorola', 'https://via.placeholder.com/120?text=Prod+18'),
(19, 'Google Smartphone Model 19', 'smartphones', 1586.00, 'Google', 'https://via.placeholder.com/120?text=Prod+19'),
(20, 'ASUS Smartphone Model 20', 'smartphones', 1659.00, 'ASUS', 'https://via.placeholder.com/120?text=Prod+20'),
(21, 'Realme Smartphone Model 21', 'smartphones', 1732.00, 'Realme', 'https://via.placeholder.com/120?text=Prod+21'),
(22, 'Apple Smartphone Model 22', 'smartphones', 1805.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+22'),
(23, 'Samsung Smartphone Model 23', 'smartphones', 1878.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+23'),
(24, 'Xiaomi Smartphone Model 24', 'smartphones', 1951.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+24'),
(25, 'Motorola Smartphone Model 25', 'smartphones', 2024.00, 'Motorola', 'https://via.placeholder.com/120?text=Prod+25'),
(26, 'Apple Notebook Model 1', 'notebooks', 2097.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+26'),
(27, 'Dell Notebook Model 2', 'notebooks', 2170.00, 'Dell', 'https://via.placeholder.com/120?text=Prod+27'),
(28, 'ASUS Notebook Model 3', 'notebooks', 2243.00, 'ASUS', 'https://via.placeholder.com/120?text=Prod+28'),
(29, 'Lenovo Notebook Model 4', 'notebooks', 2316.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+29'),
(30, 'Acer Notebook Model 5', 'notebooks', 2389.00, 'Acer', 'https://via.placeholder.com/120?text=Prod+30'),
(31, 'Samsung Notebook Model 6', 'notebooks', 2462.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+31'),
(32, 'Apple Notebook Model 7', 'notebooks', 2535.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+32'),
(33, 'Dell Notebook Model 8', 'notebooks', 2608.00, 'Dell', 'https://via.placeholder.com/120?text=Prod+33'),
(34, 'ASUS Notebook Model 9', 'notebooks', 2681.00, 'ASUS', 'https://via.placeholder.com/120?text=Prod+34'),
(35, 'Lenovo Notebook Model 10', 'notebooks', 2754.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+35'),
(36, 'Acer Notebook Model 11', 'notebooks', 2827.00, 'Acer', 'https://via.placeholder.com/120?text=Prod+36'),
(37, 'Samsung Notebook Model 12', 'notebooks', 2900.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+37'),
(38, 'Apple Notebook Model 13', 'notebooks', 2973.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+38'),
(39, 'Dell Notebook Model 14', 'notebooks', 3046.00, 'Dell', 'https://via.placeholder.com/120?text=Prod+39'),
(40, 'ASUS Notebook Model 15', 'notebooks', 3119.00, 'ASUS', 'https://via.placeholder.com/120?text=Prod+40'),
(41, 'Lenovo Notebook Model 16', 'notebooks', 3192.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+41'),
(42, 'Acer Notebook Model 17', 'notebooks', 3265.00, 'Acer', 'https://via.placeholder.com/120?text=Prod+42'),
(43, 'Samsung Notebook Model 18', 'notebooks', 3338.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+43'),
(44, 'Apple Notebook Model 19', 'notebooks', 3411.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+44'),
(45, 'Dell Notebook Model 20', 'notebooks', 3484.00, 'Dell', 'https://via.placeholder.com/120?text=Prod+45'),
(46, 'ASUS Notebook Model 21', 'notebooks', 3557.00, 'ASUS', 'https://via.placeholder.com/120?text=Prod+46'),
(47, 'Lenovo Notebook Model 22', 'notebooks', 3630.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+47'),
(48, 'Acer Notebook Model 23', 'notebooks', 3703.00, 'Acer', 'https://via.placeholder.com/120?text=Prod+48'),
(49, 'Samsung Notebook Model 24', 'notebooks', 3776.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+49'),
(50, 'Apple Notebook Model 25', 'notebooks', 3849.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+50'),
(51, 'Apple Tablet Model 1', 'tablets', 3922.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+51'),
(52, 'Samsung Tablet Model 2', 'tablets', 3995.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+52'),
(53, 'Xiaomi Tablet Model 3', 'tablets', 4068.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+53'),
(54, 'Lenovo Tablet Model 4', 'tablets', 4141.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+54'),
(55, 'Microsoft Tablet Model 5', 'tablets', 4214.00, 'Microsoft', 'https://via.placeholder.com/120?text=Prod+55'),
(56, 'Amazon Tablet Model 6', 'tablets', 4287.00, 'Amazon', 'https://via.placeholder.com/120?text=Prod+56'),
(57, 'Apple Tablet Model 7', 'tablets', 4360.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+57'),
(58, 'Samsung Tablet Model 8', 'tablets', 4433.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+58'),
(59, 'Xiaomi Tablet Model 9', 'tablets', 4506.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+59'),
(60, 'Lenovo Tablet Model 10', 'tablets', 4579.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+60'),
(61, 'Microsoft Tablet Model 11', 'tablets', 4652.00, 'Microsoft', 'https://via.placeholder.com/120?text=Prod+61'),
(62, 'Amazon Tablet Model 12', 'tablets', 4725.00, 'Amazon', 'https://via.placeholder.com/120?text=Prod+62'),
(63, 'Apple Tablet Model 13', 'tablets', 4798.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+63'),
(64, 'Samsung Tablet Model 14', 'tablets', 4871.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+64'),
(65, 'Xiaomi Tablet Model 15', 'tablets', 4944.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+65'),
(66, 'Lenovo Tablet Model 16', 'tablets', 5017.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+66'),
(67, 'Microsoft Tablet Model 17', 'tablets', 5090.00, 'Microsoft', 'https://via.placeholder.com/120?text=Prod+67'),
(68, 'Amazon Tablet Model 18', 'tablets', 5163.00, 'Amazon', 'https://via.placeholder.com/120?text=Prod+68'),
(69, 'Apple Tablet Model 19', 'tablets', 5236.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+69'),
(70, 'Samsung Tablet Model 20', 'tablets', 5309.00, 'Samsung', 'https://via.placeholder.com/120?text=Prod+70'),
(71, 'Xiaomi Tablet Model 21', 'tablets', 5382.00, 'Xiaomi', 'https://via.placeholder.com/120?text=Prod+71'),
(72, 'Lenovo Tablet Model 22', 'tablets', 5455.00, 'Lenovo', 'https://via.placeholder.com/120?text=Prod+72'),
(73, 'Microsoft Tablet Model 23', 'tablets', 5528.00, 'Microsoft', 'https://via.placeholder.com/120?text=Prod+73'),
(74, 'Amazon Tablet Model 24', 'tablets', 5601.00, 'Amazon', 'https://via.placeholder.com/120?text=Prod+74'),
(75, 'Apple Tablet Model 25', 'tablets', 5674.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+75'),
(76, 'Apple Acessorio Model 1', 'acessorios', 5747.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+76'),
(77, 'Anker Acessorio Model 2', 'acessorios', 5820.00, 'Anker', 'https://via.placeholder.com/120?text=Prod+77'),
(78, 'Logitech Acessorio Model 3', 'acessorios', 5893.00, 'Logitech', 'https://via.placeholder.com/120?text=Prod+78'),
(79, 'JBL Acessorio Model 4', 'acessorios', 5966.00, 'JBL', 'https://via.placeholder.com/120?text=Prod+79'),
(80, 'Sony Acessorio Model 5', 'acessorios', 6039.00, 'Sony', 'https://via.placeholder.com/120?text=Prod+80'),
(81, 'Baseus Acessorio Model 6', 'acessorios', 6112.00, 'Baseus', 'https://via.placeholder.com/120?text=Prod+81'),
(82, 'Razer Acessorio Model 7', 'acessorios', 6185.00, 'Razer', 'https://via.placeholder.com/120?text=Prod+82'),
(83, 'Apple Acessorio Model 8', 'acessorios', 6258.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+83'),
(84, 'Anker Acessorio Model 9', 'acessorios', 6331.00, 'Anker', 'https://via.placeholder.com/120?text=Prod+84'),
(85, 'Logitech Acessorio Model 10', 'acessorios', 6404.00, 'Logitech', 'https://via.placeholder.com/120?text=Prod+85'),
(86, 'JBL Acessorio Model 11', 'acessorios', 6477.00, 'JBL', 'https://via.placeholder.com/120?text=Prod+86'),
(87, 'Sony Acessorio Model 12', 'acessorios', 6550.00, 'Sony', 'https://via.placeholder.com/120?text=Prod+87'),
(88, 'Baseus Acessorio Model 13', 'acessorios', 6623.00, 'Baseus', 'https://via.placeholder.com/120?text=Prod+88'),
(89, 'Razer Acessorio Model 14', 'acessorios', 6696.00, 'Razer', 'https://via.placeholder.com/120?text=Prod+89'),
(90, 'Apple Acessorio Model 15', 'acessorios', 6769.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+90'),
(91, 'Anker Acessorio Model 16', 'acessorios', 6842.00, 'Anker', 'https://via.placeholder.com/120?text=Prod+91'),
(92, 'Logitech Acessorio Model 17', 'acessorios', 6915.00, 'Logitech', 'https://via.placeholder.com/120?text=Prod+92'),
(93, 'JBL Acessorio Model 18', 'acessorios', 6988.00, 'JBL', 'https://via.placeholder.com/120?text=Prod+93'),
(94, 'Sony Acessorio Model 19', 'acessorios', 7061.00, 'Sony', 'https://via.placeholder.com/120?text=Prod+94'),
(95, 'Baseus Acessorio Model 20', 'acessorios', 7134.00, 'Baseus', 'https://via.placeholder.com/120?text=Prod+95'),
(96, 'Razer Acessorio Model 21', 'acessorios', 7207.00, 'Razer', 'https://via.placeholder.com/120?text=Prod+96'),
(97, 'Apple Acessorio Model 22', 'acessorios', 7280.00, 'Apple', 'https://via.placeholder.com/120?text=Prod+97'),
(98, 'Anker Acessorio Model 23', 'acessorios', 7353.00, 'Anker', 'https://via.placeholder.com/120?text=Prod+98'),
(99, 'Logitech Acessorio Model 24', 'acessorios', 7426.00, 'Logitech', 'https://via.placeholder.com/120?text=Prod+99'),
(100, 'JBL Acessorio Model 25', 'acessorios', 7499.00, 'JBL', 'https://via.placeholder.com/120?text=Prod+100');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `data_registro`) VALUES
(3, 'Eduardo', 'teste@gmail.com', '$2y$10$K.NzbFOiaKWJK7w3Ak3gyO09D3HK1Y2Yd.6/DyUZbYgvVPX7OnPxK', '2025-11-28 09:32:13');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
