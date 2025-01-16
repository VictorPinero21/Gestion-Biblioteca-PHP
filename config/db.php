<?php
// Configuración de la base de datos

define('DB_HOST', 'localhost');     // Servidor de base de datos
define('DB_USER', 'root');          // Usuario de MySQL
define('DB_PASS', '');              // Contraseña de MySQL (vacía por defecto en XAMPP)
define('DB_NAME', 'biblioteca');   // Nombre de la base de datos

// Crear conexión
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>

