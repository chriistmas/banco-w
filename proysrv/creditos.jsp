<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Créditos - Banco W</title>
    <link rel="stylesheet" href="../css/creditos_style.css">
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
                <li class="active"><a href="../index.jsp">Inicio</a></li>
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
                        <li class="active"><a href="${pageContext.request.contextPath}/proysrv/creditos.jsp">Créditos</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/tarjeta_credito.jsp">Tarjeta de crédito</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/ahorro-inversion.jsp">Productos de ahorro e inversión</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/giros-internacionales.jsp">Giros internacionales</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/seguros.jsp">Seguros</a></li>
                    </ul>
                </li>
		<li class="dropdown">
		    <a href="#">Consumidor Financiero <span class="dropdown-arrow">▼</span></a>
		    <ul class="dropdown-menu">
			<li><a href="${pageContext.request.contextPath}/consumidor-financiero/atencion.jsp">Atención</a></li>
			<li><a href="${pageContext.request.contextPath}/consumidor-financiero/informacion.jsp">Información</a></li>
			<li><a href="#">Educación financiera</a></li>
		    </ul>
                </li>	
		<li class="dropdown">
		    <a href="#">Comunidad W <span class="dropdown-arrow">▼</span></a>
		    <ul class="dropdown-menu">
			<li><a href="${pageContext.request.contextPath}/comunidad/refiere-gana.jsp">Refiere y gana</a></li>
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

    <!-- INICIO -->
    <main class="main-content">
        <!-- Sección Créditos -->
        <section class="creditos-hero">
            <div class="hero-content">
                <div class="hero-image">
                    <img src="../images/credits.png" alt="Créditos" class="hero-img">
                </div>
                <div class="hero-text">
                    <h1>Créditos</h1>
                    <p>Contamos con soluciones de crédito únicas, para personas como tú que buscan impulsar su negocio.</p>
                </div>
            </div>
        </section>

        <!-- Tarjetas de productos -->
        <section class="cards-container">
            <div class="credit-card">
                <img src="../images/credito-microcredito.png" alt="Microcrédito">
                <h3>Microcrédito</h3>
                <p>Crédito con asesoría personalizada que te permitirá fortalecer y hacer crecer tu negocio.</p>
                <a href="../proysrv/creditos_sub/microcredito.jsp" class="btn btn-primary">¡Conoce más!</a>
            </div>
            <div class="credit-card">
                <img src="../images/gotahorro.png" alt="Gotahorro">
                <h3>Gotahorro</h3>
                <p>Te brinda acceso fácil a préstamos para que impulses tu negocio.</p>
                <a href="${pageContext.request.contextPath}/proysrv/creditos_sub/gotahorro.jsp" class="btn btn-primary">¡Conoce más!</a>
            </div>
            <div class="credit-card">
                <img src="../images/credito-yo-construyo.png" alt="Yo construyo">
                <h3>Yo construyo</h3>
                <p>Crédito personalizado para remodelar o restaurar tu negocio.</p>
                <a href="ruta_del_producto.jsp" class="btn btn-primary">¡Conoce más!</a>
            </div>
            <div class="credit-card">
                <img src="../images/credito-inmueble-productivo.png" alt="Inmueble productivo">
                <h3>Inmueble productivo</h3>
                <p>Haz realidad el sueño de comprar tu inmueble para negocios.</p>
                <a href="ruta_del_producto.jsp" class="btn btn-primary">¡Conoce más!</a>
            </div>
            <div class="credit-card">
                <img src="../images/credito-taxi.png" alt="Crédito para taxi">
                <h3>Crédito para taxi</h3>
                <p>Compra el vehículo que te permitirá generar tus propios ingresos.</p>
                <a href="ruta_del_producto.jsp" class="btn btn-primary">¡Conoce más!</a>
            </div>
            <div class="credit-card">
                <img src="../images/credit-card-6.png" alt="Libranza">
                <h3>Libranza</h3>
                <p>Prepárate ante cualquier calamidad con nuestros seguros voluntarios.</p>
                <a href="ruta_del_producto.jsp" class="btn btn-primary">¡Conoce más!</a>
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

    <script src="js/main.js"></script>
</body>
</html>
