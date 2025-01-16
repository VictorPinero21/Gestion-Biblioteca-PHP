<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Biblioteca</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-blue-200 via-blue-400 to-blue-600 min-h-screen flex items-center justify-center">
    <div class="bg-white p-8 rounded-lg shadow-md w-full max-w-md">
        <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Iniciar Sesión</h2>
        <form action="/controllers/AuthController.php" method="POST" class="space-y-4">
            <div>
                <label for="nombre" class="block text-gray-700 font-medium">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required
                       class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>

            <div>
                <label for="ape1" class="block text-gray-700 font-medium">Primer Apellido:</label>
                <input type="text" id="ape1" name="ape1" required
                       class="w-full px-4 py-2 border rounded-md focus:outline-none focus:ring-2 focus:ring-blue-400">
            </div>

            <button type="submit"
                    class="w-full bg-blue-500 text-white py-2 rounded-md hover:bg-blue-600 transition duration-300">
                Ingresar
            </button>
        </form>
        <p class="text-center text-gray-600 mt-4">Acceso solo para usuarios registrados.</p>
    </div>
</body>
</html>
