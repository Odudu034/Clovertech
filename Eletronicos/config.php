<?php
// Reporta erros de PDO
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$host = 'localhost';
$db   = 'clovertech_db'; // <<< ESTE NOME DEVE SER EXATO
$user = 'root';        // <<< USUÁRIO PADRÃO DO XAMPP
$pass = '';             // <<< SENHA PADRÃO DO XAMPP (VAZIA)
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
     $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
     http_response_code(500);
     // O erro que você está vendo é gerado aqui.
     echo json_encode(['success' => false, 'message' => 'Erro de conexão com o BD: ' . $e->getMessage()]);
     exit;
}
?>