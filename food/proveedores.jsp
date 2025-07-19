<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco W - Portal de Proveedores</title>
    <link rel="stylesheet" href="../css/proveedores.css">
</head>
<body>
    <div class="container">
        <div class="sidebar">
            <h3>AYUDA / GUÍAS RÁPIDAS / DOCUMENTACIÓN</h3>
            <ul class="document-list">
                <li>📄 Cómo ser proveedor Banco W.pdf</li>
                <li>📄 Condiciones generales de compra Banco W.pdf</li>
                <li>📄 Conoce cómo opera nuestra Línea de Transparencia</li>
                <li>📄 Documentación solicitada a proveedores.pdf</li>
                <li>📹 [VIDEO] How to register as supplier (EN)</li>
                <li>📹 [VIDEO] How to regenerate your password (EN)</li>
                <li>📹 [VIDEO] Cómo registrarse como Proveedor (ES)</li>
                <li>📹 [VIDEO] Cómo regenerar la contraseña perdida u olvidada</li>
                <li>📹 [VIDEO] Línea de transparencia</li>
                <li>📹 [VIDEO] Política de Equidad Laboral</li>
                <li>📄 Modelo certificación documentos.doc</li>
            </ul>
            
            <div class="language-selector">
                <a href="#" onclick="changeLanguage('en')">English</a>
                <a href="#" onclick="changeLanguage('es')">Español (Colombia)</a>
            </div>
        </div>
        
        <div class="main-content">
            <div class="logo">
                <div>
                    <span class="banco-w">Banco</span>
                    <span class="w-circle">W</span>
                </div>
                <div class="tagline">Así de simple, así de inteligente</div>
            </div>
            
            <form action="login" method="post" id="loginForm">
                <div class="form-group">
                    <input type="text" name="usuario" placeholder="Usuario" required>
                </div>
                
                <div class="form-group">
                    <div class="password-container">
                        <input type="password" name="contrasena" id="password" placeholder="Contraseña" required>
                        <span class="password-toggle" onclick="togglePassword()">👁</span>
                    </div>
                </div>
                
                <div class="forgot-password">
                    <a href="forgot-password.jsp">¿Olvidó su contraseña?</a>
                </div>
                
                <button type="submit" class="login-btn">Iniciar sesión</button>
            </form>
            
            <div class="signup-section">
                <div class="signup-text">¿Quiere ser Proveedor?</div>
                <button type="button" class="signup-btn" onclick="location.href='registro.jsp'">Nuevo proveedor</button>
            </div>
        </div>
    </div>
    
    <div class="footer">
        <div>
            Powered by <a href="#">itbid</a><br>
            © 2003-2025. All rights reserved. | 5.7.11 SF4 1
        </div>
        <div>
            <a href="terms.jsp">Condiciones de uso</a>
        </div>
    </div>

    <script>
        function togglePassword() {
            var passwordField = document.getElementById('password');
            var toggleButton = document.querySelector('.password-toggle');
            
            if (passwordField.type === 'password') {
                passwordField.type = 'text';
                toggleButton.innerHTML = '🙈';
            } else {
                passwordField.type = 'password';
                toggleButton.innerHTML = '👁';
            }
        }
        
        function changeLanguage(lang) {
            // Simple language change functionality
            if (lang === 'en') {
                alert('English version would be loaded here');
            } else {
                alert('Versión en español cargada');
            }
        }
        
        // Simple form validation
        document.getElementById('loginForm').addEventListener('submit', function(e) {
            var usuario = document.querySelector('input[name="usuario"]').value;
            var contrasena = document.querySelector('input[name="contrasena"]').value;
            
            if (!usuario || !contrasena) {
                e.preventDefault();
                alert('Por favor complete todos los campos');
            }
        });
    </script>
</body>
</html>
