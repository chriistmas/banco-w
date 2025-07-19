<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Refiere y Gana - Banco W</title>
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
            padding-top: 160px; /* Adjusted to compensate for fixed header height */
            background-color: #f4f4f4; /* Body background color */
        }

        /* Fixed Header */
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

        /* Main Menu */
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

        /* Specific styles for "Refiere y Gana" page */
        .main-content-refer {
            background-color: white; /* Main content background is white */
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
        }

        .refer-hero {
            width: 100%;
            background-color: #8a2be2; /* Purple background from image */
            padding: 60px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden;
            min-height: 450px; /* Ensure enough height for content */
        }

        .refer-hero-content {
            display: flex;
            align-items: center;
            justify-content: space-between;
            max-width: 1200px;
            width: 100%;
            position: relative;
            z-index: 1;
            flex-wrap: wrap;
            padding: 0 20px;
        }

        .refer-hero-image-container {
            flex: 1;
            display: flex;
            justify-content: center; /* Center image within its flex item */
            min-width: 300px;
            order: 2; /* Image on the right by default */
        }

        .refer-hero-image-container img {
            max-width: 100%;
            height: auto;
            display: block;
            position: relative;
            right: -50px; /* Adjust to move image slightly right, as in the example */
        }

        .refer-hero-text {
            flex: 1;
            color: white;
            text-align: left; /* Text on the left by default */
            min-width: 400px;
            padding-left: 20px;
            order: 1; /* Text on the left by default */
        }

        .refer-hero-text h1 {
            font-size: 40px;
            margin-bottom: 15px;
            color: white;
        }

        .refer-hero-text p {
            font-size: 18px;
            line-height: 1.6;
            color: white;
            margin-bottom: 25px;
        }

        .refer-hero-text .btn-refer {
            background-color: #ff6b35; /* Orange button */
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .refer-hero-text .btn-refer:hover {
            background-color: #e55a2b;
        }

        .refer-steps-section {
            width: 100%;
            padding: 60px 20px;
            background-color: white; /* White background for this section */
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-wrap: wrap;
            gap: 40px;
            max-width: 1200px; /* Limit width of content */
            margin: 0 auto;
        }

        .refer-steps {
            flex: 2; /* Steps take more space */
            min-width: 300px;
            text-align: left;
        }

        .step-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 30px;
            gap: 20px;
        }

        .step-number {
            font-size: 3em;
            font-weight: bold;
            color: #8a2be2; /* Purple color for numbers */
            line-height: 1;
            flex-shrink: 0; /* Prevent number from shrinking */
        }

        .step-text {
            font-size: 1.1em;
            color: #555;
            line-height: 1.5;
        }

        .refer-considerations {
            flex: 1; /* Considerations take less space */
            min-width: 300px;
            background-color: #fff8e1; /* Light orange background for considerations */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: left;
        }

        .refer-considerations h3 {
            font-size: 1.5em;
            color: #ff6b35; /* Orange color for title */
            margin-bottom: 20px;
        }

        .refer-considerations ul {
            list-style: none;
            padding: 0;
        }

        .refer-considerations ul li {
            margin-bottom: 15px;
            font-size: 0.95em;
            color: #666;
            display: flex;
            align-items: flex-start;
        }

        .refer-considerations ul li span {
            color: #ff6b35; /* Orange icon color */
            font-size: 1.2em;
            margin-right: 10px;
            line-height: 1;
            flex-shrink: 0;
        }

        .btn-refer-now {
            background-color: #ff6b35; /* Orange button */
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 25px;
            font-size: 1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
            margin-top: 30px;
            margin-left: auto;
            margin-right: auto;
        }

        .btn-refer-now:hover {
            background-color: #e55a2b;
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

            .refer-hero-content {
                flex-direction: column;
                text-align: center;
            }

            .refer-hero-image-container {
                order: 1; /* Image on top for mobile */
                left: 0;
                margin-bottom: 20px;
            }

            .refer-hero-image-container img {
                right: 0;
            }

            .refer-hero-text {
                order: 2; /* Text below image for mobile */
                text-align: center;
                padding-left: 0;
            }

            .refer-steps-section {
                flex-direction: column;
                align-items: center;
            }

            .refer-steps, .refer-considerations {
                min-width: unset;
                width: 100%;
            }

            .step-item {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .step-text {
                text-align: center;
            }

            .refer-considerations ul li {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .refer-considerations ul li span {
                margin-bottom: 5px;
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
                <li class="dropdown">
                    <a href="#">Consumidor Financiero <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/consumidor-financiero/atencion.jsp">Atención</a></li>
                        <li><a href="${pageContext.request.contextPath}/consumidor-financiero/informacion.jsp">Información</a></li>
                        <li><a href="#">Educación financiera</a></li>
                    </ul>
                </li>    
                <li class="dropdown active">
                    <a href="#">Comunidad W <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li class="active"><a href="${pageContext.request.contextPath}/comunidad/refiere-gana.jsp">Refiere y gana</a></li>
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

    <!-- START - Main Content -->
    <main class="main-content-refer">
        <section class="refer-hero">
            <div class="refer-hero-content">
                <div class="refer-hero-image-container">
                    <!-- Image of woman holding money -->
                    <img src="${pageContext.request.contextPath}/images/refiere-gana.png" alt="Mujer sonriendo con dinero">
                </div>
                <div class="refer-hero-text">
                    <h1>¡Refiere y gana!</h1>
                    <p>Referir a tus conocidos con negocio y ayudarlos a crecer también tiene sus recompensas.</p>
                    <p>Recibe la plata por cada crédito que tomen tus amigos, familiares y conocidos, y ayúdalos a crecer.</p>
                    <p>Exclusivo para clientes del Banco W</p>
                    <a href="#" class="btn-refer">¡Empieza a Referir!</a>
                </div>
            </div>
        </section>

        <section class="refer-steps-section">
            <div class="refer-steps">
                <h2>¡Referir es muy fácil! Sigue los siguientes pasos:</h2>
                <div class="step-item">
                    <div class="step-number">1.</div>
                    <p class="step-text">Perfilá muy bien a tu referido. (Recuerda que podrías ganar si tus referidos toman un crédito con el Banco W)</p>
                </div>
                <div class="step-item">
                    <div class="step-number">2.</div>
                    <p class="step-text">Tu referido debe tener un negocio superior a un año.</p>
                </div>
                <div class="step-item">
                    <div class="step-number">3.</div>
                    <p class="step-text">Verifica sus datos como: cédula, nombre, celular, ciudad y departamento.</p>
                </div>
                <button class="btn-refer-now">Refiere ahora!</button>
            </div>

            <div class="refer-considerations">
                <h3>¡Ten en cuenta!</h3>
                <ul>
                    <li><span>🟠</span> Tu cuenta de ahorro puede estar inactiva. Para activarla solo tienes que dirigirte a tu oficina más cercana.</li>
                    <li><span>🟠</span> Tu producto de crédito puede estar en mora. No eres cliente del Banco W.</li>
                    <li><span>🟠</span> Te invitamos a abrir aquí una cuenta de Depósito de bajo monto para que empieces a referir y recibir plata en efectivo.</li>
                </ul>
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
