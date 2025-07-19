<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco W - Trabaja con nosotros</title>
    <link rel="stylesheet" href="../css/trabaja-con-nosotros.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="header-content">
            <div class="logo">
                <span class="banco-w">Banco</span>
                <div class="w-circle">W</div>
            </div>
            
            <div class="search-container">
                <input type="text" class="search-input" placeholder="¿Qué estás buscando hoy?">
                <button class="search-btn">🔍</button>
            </div>
            
            <div class="user-section">
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
                <a href="login.jsp" class="login-btn">👤 Iniciar Sesión</a>
            </div>
        </div>
    </header>
    
    <!-- Navigation -->
    <nav class="nav">
        <div class="nav-content">
            <ul class="nav-links">
                <li><a href="index.jsp">Inicio</a></li>
                <li><a href="nosotros.jsp">Conocer hoja de vida</a></li>
                <li><a href="vacantes.jsp">Ofertas de empleo</a></li>
                <li><a href="contacto.jsp">Contáctanos</a></li>
            </ul>
        </div>
    </nav>
    
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-overlay"></div>
        <div class="hero-content">
            <h1>¡Somos un gran lugar para trabajar, <span class="highlight">solo faltas tú!</span></h1>
        </div>
    </section>
    
    <!-- Values Section -->
    <section class="values-section">
        <div class="container">
            <div class="values-icon">❤️</div>
            <h2>Somos un Banco diferente con sentido social, buscamos impactar positivamente la vida de las y los clientes, colaboradores y colaboradoras. Sentimos pasión por lo que hacemos y vivimos nuestra propuesta de manera como aportamos a la sociedad</h2>
            <p>Queremos que te sumes a vivir la mejor experiencia y hagas parte de uno de los mejores lugares para trabajar en Colombia</p>
        </div>
    </section>
    
    <!-- Leader Section -->
    <section class="leader-section">
        <div class="leader-content">
            <div class="leader-features">
                <h3>Somos un Banco líder</h3>
                <div class="feature-item">
                    <div class="feature-icon">🏆</div>
                    <span>Escuchamos y construimos</span>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">😊</div>
                    <span>Nos interesa tu felicidad y la de tu familia</span>
                </div>
                <div class="feature-item">
                    <div class="feature-icon">💼</div>
                    <span>Aquí podrás desarrollarte profesionalmente</span>
                </div>
            </div>
            
            <div class="leader-image">
                <img src="../images/weAre.png" alt="Equipo Banco W">
            </div>
            
            <div class="leader-description">
		<img src="../images/somosblider.jpg" alt="Somos banco lider">
                <h3>Somos un Banco líder</h3>
                <p>Nos reconocen por facilitar productos y servicios financieros sencillos, innovadores y oportunos, de manera responsable rentable y sostenible. <strong>Somos el Banco de las y los microempresarios colombianos</strong></p>
            </div>
        </div>
    </section>
    
    <!-- Job Categories -->
    <section class="job-categories">
        <div class="container">
            <h2>Contamos con personal en diferentes áreas</h2>
            <div class="categories-grid">
                <div class="category-card">
                    <div class="category-icon">💼</div>
                    <h3>Comercial</h3>
                    <p>Buscamos personas dinámicas, con gran habilidad comercial e interés profesional que trabajen con nosotros, conozcan y que necesidades de mejoramiento de vida de los clientes y sus necesidades, proactivas en el ejercicio de funciones, transparente el trato a clientes dispuestas a negociar su superación</p>
                </div>
                
                <div class="category-card">
                    <div class="category-icon">⚙️</div>
                    <h3>Operativo</h3>
                    <p>Buscamos personas alegres, dinámicas y disponibles al servicio 24/7 inclinadas hacia atención al cliente con nuestros clientes y clientes. Nuestros oficiales de crédito buscan respuestas para el recurso humano que constituye el eje para el crecimiento de nuestros negocios</p>
                </div>
                
                <div class="category-card">
                    <div class="category-icon">📊</div>
                    <h3>Administrativo</h3>
                    <p>Buscamos profesionales que se sumen al posicionamiento y expansión como Banco. Personas apasionadas por la estrategia, proactivos y seguramente por la toma de informes que ofrezcan nuevas oportunidades de servicio e impacto en gestión para apoyo para alcances del Plan estratégico del Banco W</p>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="footer-content">
            <div class="footer-logo">
                <span class="banco-w">Banco</span>
                <div class="w-circle">W</div>
            </div>
            
            <div class="footer-info">
                <p>COPYRIGHT © 2025 Leasehousework S.A.S Prohibida su reproducción total o parcial, así como su traducción a cualquier idioma sin autorización escrita de su titular</p>
                <p>administracion.com.co o un producto de Leasehousework S.A.S. Nit: 830024370</p>
                <div class="footer-links">
                    <a href="#">📄 Términos y condiciones</a>
                    <a href="#">Powered by 🏢 Empleos</a>
                </div>
            </div>
        </div>
    </footer>
    
    <script>
        // Simple search functionality
        document.querySelector('.search-btn').addEventListener('click', function() {
            var searchTerm = document.querySelector('.search-input').value;
            if (searchTerm) {
                alert('Buscando: ' + searchTerm);
                // Aquí iría la lógica de búsqueda real
            }
        });
        
        // Enter key search
        document.querySelector('.search-input').addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                document.querySelector('.search-btn').click();
            }
        });
        
        // Category card interactions
        document.querySelectorAll('.category-card').forEach(function(card) {
            card.addEventListener('click', function() {
                var category = this.querySelector('h3').textContent;
                alert('Ver vacantes en área: ' + category);
                // Aquí iría la redirección a vacantes por categoría
            });
        });
        
        // Social media links
        document.querySelectorAll('.social-icons a').forEach(function(link) {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                var platform = this.querySelector('i').className.split('-')[1];
                alert('Redireccionar a ' + platform);
            });
        });
    </script>
</body>
</html>
