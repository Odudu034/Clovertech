<?php
include 'config.php';
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nome = trim($_POST['nome'] ?? '');
    $email = trim($_POST['email'] ?? '');
    $senha = trim($_POST['senha'] ?? '');

    if (empty($nome) || empty($email) || empty($senha)) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Preencha todos os campos']);
        exit;
    }

    try {
        // 1. Verifica se o email já existe
        $stmt = $pdo->prepare("SELECT id FROM usuarios WHERE email = ?");
        $stmt->execute([$email]);
        if ($stmt->rowCount() > 0) {
            echo json_encode(['success' => false, 'message' => 'Email já cadastrado']);
            exit;
        }

        // 2. Insere o novo usuário
        $senhaHash = password_hash($senha, PASSWORD_DEFAULT);
        $stmt = $pdo->prepare("INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)");
        $stmt->execute([$nome, $email, $senhaHash]);
        
        echo json_encode(['success' => true, 'message' => 'Conta criada com sucesso']);

    } catch (\PDOException $e) {
        http_response_code(500);
        echo json_encode(['success' => false, 'message' => 'Erro ao registrar: ' . $e->getMessage()]);
    }
} else {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Método não permitido']);
}
?>