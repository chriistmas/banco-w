<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Informaicon - Banco W</title>
    <link rel="stylesheet" href="../css/creditos_style.css">
    <style>
        /* Base Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            color: #333;
            padding-top: 120px; /* Ajustado para compensar la altura del header fijo */
            background-color: #f4f4f4; /* Fondo del body */
        }

        /* Header fijo */
        .header {
            background: white;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        .navbar {
            padding: 0.8rem 0;
        }

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo-text {
            font-size: 1.8rem;
            font-weight: bold;
            background: linear-gradient(135deg, #00a0b0 0%, #0088a0 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .logo-w {
            background: #00a0b0;
            color: white;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            font-size: 1.2rem;
            margin-left: 8px;
        }

        .nav-center {
            display: flex;
            align-items: center;
            flex: 1;
            justify-content: center;
            gap: 2rem;
        }

        .search-container {
            position: relative;
            max-width: 400px;
            width: 100%;
        }

        .search-input {
            width: 100%;
            padding: 12px 20px 12px 45px;
            border: 2px solid #e0e0e0;
            border-radius: 25px;
            font-size: 14px;
            background: #f8f9fa;
        }

        .search-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 16px;
            color: #666;
        }

        .nav-buttons {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .office-selector {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 14px;
            color: #666;
            cursor: pointer;
        }

        .btn-login {
            background: #ff6b35;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-login:hover {
            background: #e55a2b;
        }

        /* Menú principal */
        .main-nav {
            background: #f8f9fa;
            border-top: 1px solid #e0e0e0;
        }

        .nav-menu {
            display: flex;
            list-style: none;
            justify-content: center;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .nav-menu > li {
            position: relative;
        }

        .nav-menu > li > a {
            display: block;
            padding: 15px 20px;
            text-decoration: none;
            color: #666;
            font-weight: 500;
            font-size: 14px;
            border-bottom: 3px solid transparent;
        }

        .nav-menu > li > a:hover,
        .nav-menu > li.active > a {
            color: #00a0b0;
            border-bottom-color: #00a0b0;
        }

        .dropdown-menu {
            position: absolute;
            top: 100%;
            left: 0;
            background: white;
            width: 220px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            border-radius: 0 0 10px 10px;
            opacity: 0;
            visibility: hidden;
            transform: translateY(10px);
            transition: all 0.3s ease;
            z-index: 100;
        }

        .dropdown:hover .dropdown-menu {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .dropdown-menu li a {
            display: block;
            padding: 12px 20px;
            color: #666;
            transition: all 0.3s;
        }

        .dropdown-menu li a:hover {
            background: #f8f9fa;
            color: #ff6b35;
        }

        .dropdown-arrow {
            font-size: 0.8em;
            margin-left: 5px;
        }

        /* Estilos específicos para la página de Consumidor Financiero */
        .main-content-consumer {
            background-color: white; /* El main es blanco por defecto */
            padding: 0; /* Eliminar padding del main, el contenido interno lo manejará */
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center; /* Centra el contenido horizontalmente */
            justify-content: flex-start;
        }

        .consumer-info-hero {
            width: 100%;
            background: linear-gradient(to right, #2596be, #ffffff); /* Color de fondo del hero */
            padding: 60px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative; /* Para posicionar la imagen */
            overflow: hidden; /* Para que la imagen no sobresalga */
        }

        .consumer-info-hero-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            max-width: 1200px;
            width: 100%;
            position: relative;
            z-index: 1; /* Asegura que el contenido esté sobre el fondo */
            flex-wrap: wrap;
            padding: 0 20px;
        }

        .consumer-info-hero-image-container {
            flex: 1;
            display: flex;
            justify-content: flex-start; /* Alinea la imagen a la izquierda */
            min-width: 300px;
            position: relative;
            left: -50px; /* Ajuste para que la imagen se vea más a la izquierda, si es necesario */
        }

        .consumer-info-hero-image-container img {
            max-width: 100%;
            height: auto;
            display: block;
        }

        .consumer-info-hero-text {
            flex: 1;
            color: white;
            text-align: right; /* Alinea el texto a la derecha */
            min-width: 400px;
            padding-right: 20px;
        }

        .consumer-info-hero-text h1 {
            font-size: 40px;
            margin-bottom: 15px;
            color: white;
        }

        .consumer-info-hero-text .btn-hero {
            background-color: #00c0e0; /* Un color de botón que contraste */
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }

        .consumer-info-hero-text .btn-hero:hover {
            background-color: #0099b3;
        }

        .info-cards-section {
            padding: 60px 20px;
            background-color: #f9f9f9; /* Fondo de la sección de tarjetas */
            width: 100%;
        }

        .info-cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            max-width: 1200px;
            margin: 0 auto;
            justify-items: center;
            justify-content: center;
        }

        .info-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            width: 280px; /* Ancho fijo para las tarjetas */
            max-width: 100%;
        }

        .info-card-image {
            width: 100%;
            height: 180px; /* Altura fija para las imágenes de las tarjetas */
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .info-card h3 {
            margin-top: 0;
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
            flex-grow: 1; /* Permite que el título ocupe espacio si es largo */
        }

        .info-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
            flex-grow: 1; /* Permite que el párrafo ocupe espacio si es largo */
        }

        .info-card .btn-conoce-mas {
            background-color: #2596be; /* Color del botón de las tarjetas */
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: auto; /* Empuja el botón hacia abajo */
        }

        .info-card .btn-conoce-mas:hover {
            background-color: #1e7a9e;
        }

        /* Footer */
        .footer {
            background: #333;
            color: white;
            padding: 3rem 0 1rem;
            font-size: 0.9rem;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 2rem;
        }

        .footer-section h4 {
            margin-bottom: 1.5rem;
            color: #ff6b35;
            font-size: 1.1rem;
            position: relative;
            padding-bottom: 0.5rem;
        }

        .footer-section h4::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 50px;
            height: 2px;
            background: #ff6b35;
        }

        .footer-section ul {
            list-style: none;
        }

        .footer-section ul li {
            margin-bottom: 0.8rem;
        }

        .footer-section ul li a {
            color: #ccc;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-section ul li a:hover {
            color: #ff6b35;
        }

        .footer-contact {
            display: flex;
            flex-direction: column;
        }

        .contact-info p {
            margin-bottom: 0.5rem;
            color: #ccc;
        }

        .footer-legal {
            margin-top: 2rem;
            padding-top: 1rem;
            border-top: 1px solid #555;
            color: #aaa;
            font-size: 0.8rem;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .nav-menu {
                display: none;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 1.5rem;
            }

            .consumer-info-hero-content {
                flex-direction: column;
                text-align: center;
            }

            .consumer-info-hero-image-container {
                justify-content: center;
                left: 0;
                margin-bottom: 20px;
            }

            .consumer-info-hero-text {
                text-align: center;
                padding-right: 0;
            }

            .info-cards-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
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
                <li><a href="../index.jsp">Inicio</a></li>
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
                        <li><a href="${pageContext.request.contextPath}/proysrv/creditos.jsp">Créditos</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/tarjeta_credito.jsp">Tarjeta de crédito</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/ahorro-inversion.jsp">Productos de ahorro e inversión</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/giros-internacionales.jsp">Giros internacionales</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/seguros.jsp">Seguros</a></li>
                    </ul>
                </li>
                <li class="dropdown active">
                    <a href="#">Consumidor Financiero <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/consumidor-financiero/atencion.jsp">Atención</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/consumidor-financiero/informacion.jsp">Información</a></li>
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

    <!-- INICIO - Contenido Principal (Main Content) -->
    <main class="main-content-consumer">
        <section class="consumer-info-hero">
            <div class="consumer-info-hero-content">
                <div class="consumer-info-hero-image-container">
                    <!-- Imagen del hombre con laptop -->
                    <img src="${pageContext.request.contextPath}/images/informacion.png" alt="Hombre sonriendo con laptop">
                </div>
                <div class="consumer-info-hero-text">
                    <h1>Consumidor financiero</h1>
                    <a href="#" class="btn-hero">Preguntas frecuentes</a>
                </div>
            </div>
        </section>

        <section class="info-cards-section">
            <div class="info-cards-grid">
                <!-- Tarjeta 1: Tasas y Tarifas -->
                <div class="info-card">
                    <img src="${pageContext.request.contextPath}/images/tasa-tarifa.png" alt="Calculadora y documentos" class="info-card-image">
                    <h3>Tasas y Tarifas</h3>
                    <p>Conoce las tasas de interés y tarifas aplicables a nuestros productos y servicios.</p>
                    <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                </div>

                <!-- Tarjeta 2: Contratos y Reglamentos -->
                <div class="info-card">
                    <img src="${pageContext.request.contextPath}/images/contrato.png" alt="Firmando un contrato" class="info-card-image">
                    <h3>CONTRATOS Y REGLAMENTOS DE PRODUCTOS FINANCIEROS</h3>
                    <p>Accede a la información detallada de los contratos y reglamentos de nuestros productos.</p>
                    <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                </div>

                <!-- Tarjeta 3: Protección de Datos -->
                <div class="info-card">
                    <img src="${pageContext.request.contextPath}/images/proteccion-datos.png" alt="Gráficos de datos" class="info-card-image">
                    <h3>Protección a datos personales</h3>
                    <p>Infórmate sobre cómo protegemos tu información personal y tus derechos como usuario.</p>
                    <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                </div>

                <!-- Tarjeta 4: Ley de Víctimas -->
                <div class="info-card">
                    <img src="${pageContext.request.contextPath}/images/ley-victimas.png" alt="Mujer mayor" class="info-card-image">
                    <h3>Ley de víctimas</h3>
                    <p>Información relevante sobre la Ley de Víctimas y cómo te afecta como consumidor.</p>
                    <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                </div>

                <!-- Tarjeta 5: Fogafín -->
                <div class="info-card">
                    <img src="${pageContext.request.contextPath}/images/fogafin.png" alt="Logo Fogafín" class="info-card-image">
                    <h3>Fogafín</h3>
                    <p>Conoce el Fondo de Garantías de Instituciones Financieras y su importancia para tu seguridad.</p>
                    <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                </div>

                <!-- Tarjeta 6: Sistema de atención al consumidor financiero (SAC) -->
                <div class="info-card">
                    <img src="${pageContext.request.contextPath}/images/atencion-consumidor.png" alt="Atención al cliente" class="info-card-image">
                    <h3>Sistema de atención al consumidor financiero (SAC)</h3>
                    <p>Descubre cómo nuestro sistema de atención al consumidor puede ayudarte en tus consultas.</p>
                    <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                </div>

                <!-- Tarjeta 7: Cobranza -->
                <div class="info-card">
                    <img src="${pageContext.request.contextPath}/images/cobranza.jpg" alt="Calendario" class="info-card-image">
                    <h3>Cobranza</h3>
                    <p>Información sobre nuestros procesos de cobranza y tus derechos como deudor.</p>
                    <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
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

    <script src="js/main.js"></script>
</body>
</html>
