<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco W - Página Principal</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <!-- Updated Header -->
    <header class="header">
        <nav class="navbar">
            <div class="nav-container">
                <div class="logo">
                    <span class="logo-text">Banco</span>
                    <div class="logo-w">W</div>
                </div>
                
                <div class="nav-center">
                    <div class="search-container">
                        <span class="search-icon">🔍</span>
                        <input type="text" class="search-input" placeholder="¿Qué estás buscando?">
                    </div>
                </div>
                
                <div class="nav-buttons">
                    <div class="office-selector">
                        <span>💼</span>
                        <span>Pagos en línea</span>
                        <span>▶</span>
                    </div>
                    <button class="btn btn-login">Entrar</button>
                </div>
            </div>
        </nav>
        
        <!-- Main Navigation -->
        <nav class="main-nav">
            <ul class="nav-menu">
                <li class="active"><a href="#inicio">Inicio</a></li>
                <li class="dropdown">
                    <a href="#">Acerca de Nosotros <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Quiénes somos</a></li>
                        <li><a href="#">Fundación</a></li>
                        <li><a href="#">WWB Colombia</a></li>
                        <li><a href="#">Trabaja con nosotros</a></li>
                        <li><a href="#">Sala de prensa</a></li>
                        <li><a href="#">Línea de transparencia</a></li>
                        <li><a href="#">Gestión Sostenible</a></li>
                        <li><a href="#">Notificaciones Judiciales</a></li>
                        <li><a href="#">Licitación de seguros</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#">Productos y servicios <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Créditos</a></li>
                        <li><a href="#">Tarjeta de crédito</a></li>
                        <li><a href="#">Productos de ahorro e inversión</a></li>
                        <li><a href="#">Giros internacionales</a></li>
                        <li><a href="#">Seguros</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#">Consumidor Financiero <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Atención</a></li>
                        <li><a href="#">Información</a></li>
                        <li><a href="#">Educación financiera</a></li>
                    </ul>
                        </li>	
                <li class="dropdown">
                    <a href="#">Comunidad W <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Refiere y gana</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#">Atención al inversionista <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Documentación societaria</a></li>
                        <li><a href="#">Accionistas</a></li>
                        <li><a href="#">Junta directiva y alta gerencia</a></li>
                        <li><a href="#">Información relevante</a></li>
                        <li><a href="#">Información financiera</a></li>
                        <li><a href="#">Documentación de gobierno corporativo</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#">Canales de atención <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Canales presenciales</a></li>
                        <li><a href="#">Canales no presenciales</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>


    <!-- Enhanced Hero Section -->
    <main class="main-content">
        <section class="hero">
            <div class="hero-content">
                <div class="hero-text">
                    <h1>¡Hola<span id="user-name-display"></span>!</h1>
                    <p>Descubre todas las soluciones en Crédito, Ahorro e Inversión que tenemos para ti en el Banco W.</p>
                </div>
                <div class="hero-image">
                    <img src="images/hero-people.png" alt="Personas felices" class="hero-img">
                </div>
            </div>

            <div class="hero-cards">
                <div class="hero-card">
                    <span class="card-icon">💳</span>
                    <span class="card-title">Pago tarjeta de crédito</span>
                </div>
                <div class="hero-card">
                    <span class="card-icon">📊</span>
                    <span class="card-title">CDT digital</span>
                </div>
                <div class="hero-card">
                    <span class="card-icon">📈</span>
                    <span class="card-title">Giros internacionales</span>
                </div>
            </div>
        </section>
	

	<!-- What are you looking for section -->
        <section class="search-section">
            <div class="container">
                <h2>¿Qué estás buscando?</h2>
                <div class="search-content">
                    <div class="search-text">
                        <div class="search-category">
                            <h3>Seguros</h3>
                            <p>Protégete a ti y a los que más quieres con nuestros seguros. Haz que tu futuro sea tranquilo, seguro y sin preocupaciones cada día, sin dolor y sin debilidad.</p>
                            <ul>
                                <li>Asistente 24/7</li>
                                <li>Planes personalizados y flexibles</li>
                            </ul>
                            <button class="btn btn-primary">Conoce más</button>
                        </div>
                    </div>
                    <div class="search-image">
                        <img src="images/insurance-couple.webp" alt="Pareja feliz" class="search-img">
                    </div>
                </div>
            </div>
        </section>

        <!-- Products section -->
        <section class="products-section">
            <div class="container">
                <h2>Descubre los productos favoritos</h2>
                <div class="products-grid">
                    <div class="product-main">
                        <div class="product-card billetera">
                            <h3>Nuestras novedades</h3>
                            <div class="billetera-logo">Billetera W</div>
                            <p>Administra tus finanzas sin cobrar por pagos ni transferencias LULO.</p>
                            <button class="btn btn-primary">Descarga Billetera W</button>
                            <img src="images/billetera-woman.webp" alt="Mujer con billetera" class="product-img">
                        </div>
                    </div>
                    <div class="product-sidebar">
                        <h3>Lo más buscado</h3>
                        <div class="product-item giros">
                            <span>Giros internacionales</span>
                            <i class="arrow-right"></i>
                        </div>
                        <div class="product-item canales">
                            <span>Canales de atención</span>
                            <i class="arrow-right"></i>
                        </div>
                        <div class="product-item creditos">
                            <span>Créditos para ti</span>
                            <i class="arrow-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Featured articles -->
        <section class="articles-section">
            <div class="container">
                <h2>Artículos destacados</h2>
                <div class="articles-grid">
                    <article class="article-card">
                        <img src="images/article1.png" alt="Artículo 1" class="article-img">
                        <div class="article-content">
                            <h3>Fraud algo a lo negativo</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </article>
                    <article class="article-card">
                        <img src="images/article2.png" alt="Artículo 2" class="article-img">
                        <div class="article-content">
                            <h3>Programa de Apoyo al Docente Nominal (PADN)</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </article>
                    <article class="article-card">
                        <img src="images/article3.png" alt="Artículo 3" class="article-img">
                        <div class="article-content">
                            <h3>Gastos emocionales</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                        </div>
                    </article>
                </div>
            </div>
        </section>

        <!-- Club del Ahorro -->
        <section class="club-ahorro">
            <div class="container">
                <div class="club-content">
                    <div class="club-text">
                        <h2>Club del Ahorro</h2>
                        <p>Únete a nuestro club y ahorra hoy con los beneficios del Club del Ahorro y obtén beneficios exclusivos con nosotros aprovecha durante Edición Colombia.</p>
                        <div class="club-prize">
                            <span class="prize-text">PREMIAMOS CON</span>
                            <span class="prize-amount">$1.500.000</span>
                        </div>
                        <button class="btn btn-primary">¡Empieza ahorrando hoy!</button>
                    </div>
                    <div class="club-image">
                        <img src="images/club-couple.jpg" alt="Pareja del club" class="club-img">
                    </div>
                </div>
            </div>
        </section>

        <!-- Unique products -->
        <section class="unique-products">
            <div class="container">
                <h2>Creamos productos únicos pensando en tus necesidades</h2>
                <div class="unique-content">
                    <div class="unique-image">
                        <img src="images/devices.webp" alt="Dispositivos" class="devices-img">
                    </div>
                    <div class="unique-grid">
                        <div class="unique-item">Crédito CRA</div>
                        <div class="unique-item">Crédito APP</div>
                        <div class="unique-item">CDT Súper</div>
                        <div class="unique-item">Billetera W</div>
                        <div class="unique-item">Crédito Vehículo</div>
                        <div class="unique-item">Club del Ahorro</div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Rest of the existing sections (Search, Products, Articles, Club, Unique Products) -->
        <!-- ... (keep all existing sections from original index.jsp) ... -->

    </main>

    
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-section">
                    <h4>Nosotros</h4>
                    <ul>
                        <li><a href="quienes-somos.jsp">Quiénes somos</a></li>
                        <li><a href="#">Proveedores</a></li>
                        <li><a href="#">Educación financiera</a></li>
                        <li><a href="#">Trabaja con nosotros</a></li>
                        <li><a href="#">Licitación de seguros</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Canales de atención</h4>
                    <ul>
                        <li><a href="#">Oficinas</a></li>
                        <li><a href="#">App móvil</a></li>
                        <li><a href="#">Línea nacional gratuita</a></li>
                        <li><a href="#">Corresponsales bancarios</a></li>
                    </ul>
                </div>
                <div class="footer-section">
                    <h4>Ayuda</h4>
                    <ul>
                        <li><a href="#">Preguntas frecuentes</a></li>
                        <li><a href="#">Tasas y tarifas</a></li>
                        <li><a href="#">Comunicados de prensa</a></li>
                        <li><a href="#">PORS</a></li>
                        <li><a href="#">Defensoría del Consumidor Financiero</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h4>Síguenos y contáctanos</h4>
                    <div class="contact-info">
                        <p>01 8000 5156566</p>
                        <p>Celular -67 323 5996557</p>
                        <p>Call (602) 4896636</p>
                        <p>Bogotá (601) 7433638</p>
                        <p>Medellín (604) 6048644</p>
                    </div>
                    <div class="footer-legal">
                        <p>Política de protección de datos</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Welcome Modal -->
    <div id="welcomeModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <img src="images/banco-w-logo.svg" alt="Banco W" class="modal-logo">
            </div>
            <div class="modal-body">
                <h2>Bienvenido a la nueva experiencia Banco W</h2>
                <p>Hemos renovado nuestro sitio para ti. Estás en la página oficial, segura y confiable de siempre.</p>
                <p class="modal-subtitle">Antes de continuar, cuéntanos tu nombre para personalizar tu visita.</p>
                <form id="welcomeForm">
                    <div class="form-group">
                        <label for="userName">Nombre usuario</label>
                        <input type="text" id="userName" name="userName" placeholder="Ingresa tu nombre">
                    </div>
                    <button type="submit" class="btn btn-primary btn-full">Continuar</button>
                    <button type="button" class="btn btn-secondary btn-full" id="cancelBtn">Cancelar</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Cookie Manager -->
    <div id="cookieManager" class="cookie-manager">
        <div class="cookie-content">
            <div class="cookie-icon">🍪</div>
            <div class="cookie-text">
                <h3>Gestor de cookies</h3>
                <p>Este sitio web utiliza cookies propias y de terceros para analizar el tráfico, personalizar tu experiencia de navegación y mostrarte contenido relevante. Puedes aceptar todas las cookies o rechazarlas. Al continuar navegando, entendemos que aceptas su uso.</p>
                <a href="#" class="cookie-link">Más detalle aquí</a>
            </div>
            <div class="cookie-actions">
                <button class="btn btn-accept" id="acceptCookies">Aceptar</button>
                <button class="btn btn-reject" id="rejectCookies">Rechazar</button>
            </div>
        </div>
    </div>

    <script src="js/main.js"></script>
</body>
</html>
