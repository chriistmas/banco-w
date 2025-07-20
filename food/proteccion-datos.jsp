<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco W - Página Principal</title>
    <link rel="stylesheet" href="../css/proteccion-datos.css">
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
                        <li><a href="../food/quienes-somos.jsp">Quiénes somos</a></li>
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
                        <li><a href="proysrv/creditos.jsp">Créditos</a></li>
                        <li><a href="proysrv/tarjeta_credito.jsp">Tarjeta de crédito</a></li>
                        <li><a href="proysrv/ahorro-inversion.jsp">Productos de ahorro e inversión</a></li>
                        <li><a href="proysrv/giros-internacionales.jsp">Giros internacionales</a></li>
                        <li><a href="proysrv/seguros.jsp">Seguros</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#">Consumidor Financiero <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="consumidor-financiero/atencion.jsp">Atención</a></li>
                        <li><a href="consumidor-financiero/informacion.jsp">Información</a></li>
                        <li><a href="consumidor-financiero/educacion-financiera.jsp">Educación financiera</a></li>
                    </ul>
                        </li>	
                <li class="dropdown">
                    <a href="#">Comunidad W <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="comunidad/refiere-gana.jsp">Refiere y gana</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#">Atención al inversionista <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
			<li><a href="inversionista/documentacion.jsp">Documentación societaria</a></li>
			<li><a href="inversionista/accionistas.jsp">Accionistas</a></li>
			<li><a href="inversionista/junta.jsp">Junta directiva y alta gerencia</a></li>
			<li><a href="inversionista/relevante.jsp">Información relevante</a></li>
			<li><a href="inversionista/financiera.jsp">Información financiera</a></li>
			<li><a href="inversionista/gobierno.jsp">Documentación de gobierno corporativo</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#">Canales de atención <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
			<li><a href="canales/presenciales.jsp">Canales presenciales</a></li>
			<li><a href="canales/nopresenciales.jsp">Canales no presenciales</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>


    <section class="hero-section">
        <div class="container">
            <nav class="breadcrumb">
                <a href="#" class="breadcrumb-link">🏠</a>
                <span class="breadcrumb-separator">›</span>
                <a href="#" class="breadcrumb-link">Consumidor financiero</a>
                <span class="breadcrumb-separator">›</span>
            </nav>
            <h1 class="hero-title">Protección de datos</h1>
        </div>
    </section>

    <!-- Main Content -->
    <main class="main-content">
        <div class="container">
            <section class="content-section">
                <h2 class="section-title">Política de protección de datos personales Banco W</h2>
                
                <p class="section-description">
                    El Tratamiento consistirá en recolectar, recaudar, almacenar, usar, circular, suprimir, procesar, compilar, intercambiar, dar tratamiento, actualizar y 
                    disponer de los datos que han sido suministrados a El Banco W y que se han incorporado en las bases de datos de El Banco W, así como cualquier 
                    otro uso según la normatividad vigente y la autorización dada para el Tratamiento por el Titular de la información.
                </p>

                <div class="documents-grid">
                    <a href="#" class="document-card" download>
                        <div class="document-icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M14 2H6C4.9 2 4 2.9 4 4V20C4 21.1 4.89 22 5.99 22H18C19.1 22 20 21.1 20 20V8L14 2Z" fill="white"/>
                                <path d="M14 2V8H20" fill="white"/>
                            </svg>
                        </div>
                        <span class="document-title">Política de protección de datos personales Banco W</span>
                        <div class="download-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M19 9H15V3H9V9H5L12 16L19 9ZM5 18V20H19V18H5Z" fill="white"/>
                            </svg>
                        </div>
                    </a>

                    <a href="#" class="document-card" download>
                        <div class="document-icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M14 2H6C4.9 2 4 2.9 4 4V20C4 21.1 4.89 22 5.99 22H18C19.1 22 20 21.1 20 20V8L14 2Z" fill="white"/>
                                <path d="M14 2V8H20" fill="white"/>
                            </svg>
                        </div>
                        <span class="document-title">Aviso de privacidad</span>
                        <div class="download-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M19 9H15V3H9V9H5L12 16L19 9ZM5 18V20H19V18H5Z" fill="white"/>
                            </svg>
                        </div>
                    </a>

                    <a href="#" class="document-card" download>
                        <div class="document-icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M14 2H6C4.9 2 4 2.9 4 4V20C4 21.1 4.89 22 5.99 22H18C19.1 22 20 21.1 20 20V8L14 2Z" fill="white"/>
                                <path d="M14 2V8H20" fill="white"/>
                            </svg>
                        </div>
                        <span class="document-title">Autorización de tratamiento de datos personales</span>
                        <div class="download-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M19 9H15V3H9V9H5L12 16L19 9ZM5 18V20H19V18H5Z" fill="white"/>
                            </svg>
                        </div>
                    </a>

                    <a href="#" class="document-card" download>
                        <div class="document-icon">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M14 2H6C4.9 2 4 2.9 4 4V20C4 21.1 4.89 22 5.99 22H18C19.1 22 20 21.1 20 20V8L14 2Z" fill="white"/>
                                <path d="M14 2V8H20" fill="white"/>
                            </svg>
                        </div>
                        <span class="document-title">Autorización de tratamiento de datos personales para aspirantes</span>
                        <div class="download-icon">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M19 9H15V3H9V9H5L12 16L19 9ZM5 18V20H19V18H5Z" fill="white"/>
                            </svg>
                        </div>
                    </a>
                </div>
            </section>
        </div>
    </main>

    
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-section">
                    <h4>Nosotros</h4>
                    <ul>
                        <li><a href="food/quienes-somos.jsp">Quiénes somos</a></li>
                        <li><a href="food/proveedores.jsp">Proveedores</a></li>
                        <li><a href="#">Educación financiera</a></li>
                        <li><a href="food/trabaja-con-nosotros.jsp">Trabaja con nosotros</a></li>
                        <li><a href="food/licitacion-seguros.jsp">Licitación de seguros</a></li>
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
