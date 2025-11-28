<?php
include 'config.php';
session_start();
header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email'] ?? '');
    $senha = trim($_POST['senha'] ?? '');

    if (empty($email) || empty($senha)) {
        http_response_code(400);
        echo json_encode(['success' => false, 'message' => 'Preencha todos os campos']);
        exit;
    }

    try {
        // Busca o usuário pelo email
        $stmt = $pdo->prepare("SELECT nome, senha FROM usuarios WHERE email = ?");
        $stmt->execute([$email]);
        $usuario = $stmt->fetch();

        if ($usuario && password_verify($senha, $usuario['senha'])) {
            // Login bem-sucedido: Armazena informações na sessão
            $_SESSION['logado'] = [
                'nome' => $usuario['nome'],
                'email' => $email
            ];

            echo json_encode(['success' => true, 'message' => 'Login efetuado', 'usuario' => ['nome' => $usuario['nome'], 'email' => $email]]);
        } else {
            echo json_encode(['success' => false, 'message' => 'Email ou senha inválidos']);
        }

    } catch (\PDOException $e) {
        http_response_code(500);
        echo json_encode(['success' => false, 'message' => 'Erro no login: ' . $e->getMessage()]);
    }
} else {
    http_response_code(405);
    echo json_encode(['success' => false, 'message' => 'Método não permitido']);
}
?>