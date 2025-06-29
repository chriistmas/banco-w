<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página no encontrada - Banco W</title>
    <link rel="stylesheet" href="../css/styles.css">
    <style>
        .error-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #ff6b35 0%, #f7931e 100%);
            color: white;
            text-align: center;
            padding: 2rem;
        }
        .error-content {
            max-width: 600px;
        }
        .error-code {
            font-size: 8rem;
            font-weight: bold;
            margin-bottom: 1rem;
            opacity: 0.8;
        }
        .error-message {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }
        .error-description {
            font-size: 1.1rem;
            margin-bottom: 2rem;
            opacity: 0.9;
        }
        .error-actions {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
        }
        .btn-home {
            background: white;
            color: #ff6b35;
            padding: 12px 24px;
            border: none;
            border-radius: 25px;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s;
        }
        .btn-home:hover {
            background: #f0f0f0;
            transform: translateY(-2px);
        }
        .btn-back {
            background: transparent;
            color: white;
            padding: 12px 24px;
            border: 2px solid white;
            border-radius: 25px;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s;
        }
        .btn-back:hover {
            background: white;
            color: #ff6b35;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <div class="error-content">
            <div class="error-code">404</div>
            <h1 class="error-message">¡Oops! Página no encontrada</h1>
            <p class="error-description">
                La página que estás buscando no existe o ha sido movida. 
                No te preocupes, te ayudamos a encontrar lo que necesitas.
            </p>
            <div class="error-actions">
                <a href="../index.jsp" class="btn-home">Ir al inicio</a>
                <a href="javascript:history.back()" class="btn-back">Volver atrás</a>
            </div>
        </div>
    </div>
    
    <script>
        // Redireccionar automáticamente después de 10 segundos
        setTimeout(function() {
            window.location.href = '../index.jsp';
        }, 10000);
    </script>
</body>
</html>