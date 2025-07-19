<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco W - Página Principal</title>
    <link rel="stylesheet" href="../css/quienes-somos.css">
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


    <!-- Updated Main Content for Quiénes Somos -->
    <main class="main-content">
	<!-- Hero Section with Gradient Background -->
	<section class="hero-about">
	    <div class="container">
		<h1 class="hero-title">Quiénes Somos</h1>
	    </div>
	</section>

	<!-- About Us Introduction -->
	<section class="about-intro">
	    <div class="container">
		<p class="intro-text">
		    Somos un Banco colombiano con presencia a nivel nacional que promueve la inclusión a través de las microfinanzas y otros productos y servicios financieros.
		</p>
	    </div>
	</section>

	<!-- Video Section -->
	<section class="video-section">
	    <div class="container">
		<div class="video-container">
		    <div class="video-wrapper">
			<video controls poster="../images/video-about-us.webp" class="about-video">
			    <source src="../videos/banco-w-about.mp4" type="video/mp4">
			    Tu navegador no soporta el elemento de video.
			</video>
			<div class="video-overlay">
			    <div class="video-stats">
				<div class="stat-item">
				    <span class="stat-number">+350.000</span>
				    <span class="stat-label">personas bancarizadas</span>
				</div>
				<div class="stat-item">
				    <div class="stat-icon">👥</div>
				    <span class="stat-number">53%</span>
				    <span class="stat-label">mujeres</span>
				</div>
			    </div>
			    <button class="play-button" aria-label="Reproducir video">▶</button>
			</div>
		    </div>
		    <div class="video-info">
			<span class="video-label">VIDEO</span>
			<h3 class="video-title">Sobre nosotros</h3>
			<p class="video-description">
			    Ponemos al alcance de las personas independientes, con pequeñas empresas y que se dedica a alguna actividad productiva, productos prácticos, oportunos e innovadores en materia de crédito para negocios, ahorro, inversiones, microseguros y remesas.
			</p>
		    </div>
		</div>
	    </div>
	</section>

	<!-- Purpose and Values -->
	<section class="purpose-values">
	    <div class="container">
		<div class="content-grid">
		    <div class="purpose-item">
			<h3 class="section-title">Nuestro propósito</h3>
			<p class="section-text">
			    Aportar al desarrollo económico y social facilitando soluciones financieras a micronegocios y pequeñas empresas.
			</p>
		    </div>
		    <div class="values-item">
			<h3 class="section-title">Valores</h3>
			<p class="section-text">
			    Compromiso, transparencia y respeto.
			</p>
		    </div>
		</div>
	    </div>
	</section>

	<!-- Culture Pillars -->
	<section class="culture-pillars">
	    <div class="container">
		<h2 class="section-heading">Pilares de nuestra cultura</h2>
		<div class="pillars-grid">
		    <div class="pillar-item">
			<div class="pillar-icon">✓</div>
			<h4 class="pillar-title">Principios</h4>
		    </div>
		    <div class="pillar-item">
			<div class="pillar-icon">👥</div>
			<h4 class="pillar-title">Trabajo colaborativo</h4>
		    </div>
		    <div class="pillar-item">
			<div class="pillar-icon">⭐</div>
			<h4 class="pillar-title">Clientes</h4>
		    </div>
		    <div class="pillar-item">
			<div class="pillar-icon">🏆</div>
			<h4 class="pillar-title">Liderazgo</h4>
		    </div>
		    <div class="pillar-item">
			<div class="pillar-icon">💡</div>
			<h4 class="pillar-title">Innovación</h4>
		    </div>
		</div>
	    </div>
	</section>

	<!-- Leadership Profile -->
	<section class="leadership-profile">
	    <div class="container">
		<h2 class="section-heading">Perfil de Presidencia</h2>
		<div class="profile-content">
		    <div class="profile-image">
			<img src="../images/jose-alejandro-guerrero.png" alt="José Alejandro Guerrero" class="president-img">
		    </div>
		    <div class="profile-info">
			<h3 class="president-name">José Alejandro Guerrero</h3>
			<div class="profile-details">
			    <p class="president-bio">
				Cuenta con más de 25 años de experiencia en el área financiera, administrativa, de riesgo, comercial, mercadeo y gestión humana. Desempeñando varios cargos directivos en AV Villas, Helm Bank y Bancolombia. Se destaca por sus habilidades en la dirección de grupos, planeación y ejecución de planes de negocio y implementación de estrategias administrativas y comerciales con enfoque en resultados, además de buenas relaciones interpersonales, versatilidad y adaptación al cambio.
			    </p>
			    
			    <div class="profile-section">
				<h4>Formación:</h4>
				<p>Administrador de Empresas, Universidad ICESI. Especialista en Finanzas, Universidad del Valle. Dirección Estratégica Comercial, Universidad de los Andes en Bogotá.</p>
			    </div>
			    
			    <div class="profile-section">
				<h4>Experiencia Laboral:</h4>
				<p>Banco AV Villas: Gerente Regional Región Suroccidente Helm Bank: Vicepresidente Banca de Consumo, Vicepresidente Banca Empresarial, y Pyme Bancolombia S.A. (Bogotá): Gerente Regional Banca Empresarial y Corporativa Bogotá y Centro País Banco Industrial Colombiano (Cali): Gerente Regional Banca Empresarial y Corporativa – Occidente País.</p>
			    </div>
			    
			    <div class="profile-section">
				<h4>Participación Juntas:</h4>
				<p>Ex miembro de Juntas Directivas de Colcorp (Banca de Inversión Bancolombia), Almacenar, Franquicia Visa Colombia y Fondo de Empleados Helm Bank.</p>
			    </div>
			</div>
		    </div>
		</div>
	    </div>
	</section>
    </main> 	
    
    
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-section">
                    <h4>Nosotros</h4>
                    <ul>
                        <li><a href="#">Quiénes somos</a></li>
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
