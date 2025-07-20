<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Preguntas Frecuentes - Banco W</title>
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
            padding-top: 160px; /* Ajustado para compensar la altura del header fijo */
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

        /* Specific styles for Preguntas Frecuentes page */
        .main-content-faq {
            background-color: white; /* Main content background is white */
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
        }

        /* Hero Section */
        .faq-hero {
            width: 100%;
            background-color: #ff8c00; /* Orange background */
            padding: 60px 20px;
            text-align: center;
        }

        .faq-hero h1 {
            font-size: 2.5em;
            color: white;
            margin-bottom: 20px;
        }

        /* Search and Filter Section */
        .faq-filter-section {
            width: 100%;
            max-width: 1000px;
            margin-top: -50px; /* Overlap with hero section */
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 30px;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            align-items: center;
            position: relative;
            z-index: 2; /* Ensure it's above other content */
        }

        .faq-filter-section select,
        .faq-filter-section input[type="text"] {
            flex: 1;
            min-width: 250px;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
        }

        .faq-filter-section button {
            background-color: #ff6b35; /* Orange button */
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .faq-filter-section button:hover {
            background-color: #e55a2b;
        }

        /* FAQ Accordion Section */
        .faq-accordion-section {
            width: 100%;
            max-width: 1000px;
            padding: 40px 20px;
            background-color: white;
            margin-top: 20px; /* Space below filter section */
        }

        .accordion-item {
            margin-bottom: 15px;
            border: 1px solid #eee;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }

        .accordion-button {
            background-color: #ff8c00; /* Orange button from image */
            color: white;
            padding: 18px 25px;
            width: 100%;
            text-align: left;
            border: none;
            outline: none;
            cursor: pointer;
            font-size: 1.1em;
            font-weight: bold;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: background-color 0.3s ease;
        }

        .accordion-button:hover {
            background-color: #e55a2b;
        }

        .accordion-button .arrow-icon {
            transition: transform 0.3s ease;
        }

        .accordion-button.active .arrow-icon {
            transform: rotate(90deg); /* Rotate arrow when active */
        }

        .accordion-content {
            padding: 0 25px;
            background-color: #f9f9f9;
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease-out, padding 0.3s ease-out;
        }

        .accordion-content.show {
            max-height: 200px; /* Adjust as needed based on content height */
            padding: 25px;
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

            .faq-filter-section {
                flex-direction: column;
                margin-top: -30px; /* Adjust overlap for smaller screens */
                padding: 20px;
            }

            .faq-filter-section select,
            .faq-filter-section input[type="text"],
            .faq-filter-section button {
                width: 100%;
                min-width: unset;
            }

            .accordion-button {
                font-size: 1em;
                padding: 15px 20px;
            }

            .accordion-content.show {
                padding: 15px 20px;
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
                        <li><a href="${pageContext.request.contextPath}/confin/atencion.jsp">Atención</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/confin/informacion.jsp">Información</a></li>
                        <li><a href="${pageContext.request.contextPath}/confin/educacion-financiera.jsp">Educación financiera</a></li>
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

    <!-- START - Main Content -->
    <main class="main-content-faq">
        <section class="faq-hero">
            <h1>Preguntas Frecuentes</h1>
        </section>

        <section class="faq-filter-section">
            <select id="product-service-filter">
                <option value="">Elige un producto o servicio</option>
                <option value="microcredito">Microcrédito</option>
                <option value="seguros">Seguros</option>
                <option value="credito">Crédito</option>
                <option value="general">General</option>
            </select>
            <input type="text" id="faq-search-input" placeholder="Buscar pregunta...">
            <button>Buscar</button>
        </section>

        <section class="faq-accordion-section">
            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Dónde puedo generar el pago de las cuotas mensuales de mi microcrédito?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Puedes generar el pago de tus cuotas mensuales de microcrédito a través de nuestros canales de atención: oficinas, corresponsales bancarios y pagos en línea.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿En qué eventos me cubre la renta por hospitalización?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>La renta por hospitalización cubre eventos como enfermedades graves, accidentes y cirugías que requieran internamiento hospitalario, según las condiciones de tu póliza.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Cómo genero una solicitud de crédito con el Banco W?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Puedes generar una solicitud de crédito visitando nuestras oficinas, contactando a un asesor comercial o a través de nuestro formulario de solicitud en línea.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Qué necesito para adquirir un crédito con el Banco W?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Los requisitos básicos incluyen fotocopia de la cédula de ciudadanía, referencias comerciales y personales, facturas de servicios públicos y antigüedad mínima del negocio.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>Si estoy reportado negativamente ante las centrales de riesgo, ¿puedo solicitar un crédito al Banco W?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>En caso de estar reportado negativamente, es necesario presentar un Paz y Salvo de la obligación para poder evaluar tu solicitud de crédito.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>Si no tengo codeudor, ¿puedo solicitar un crédito con el Banco W?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Sí, el Banco W ofrece opciones de crédito sin codeudor, sujetas a evaluación de tu perfil crediticio y capacidad de pago.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Cuánto es el monto que puedo solicitar en un crédito con el Banco W?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>El monto del crédito varía según tu capacidad de endeudamiento y el tipo de crédito que solicites. Puedes usar nuestro simulador de crédito para estimar un monto.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Dónde puedo consultar el saldo total de mi crédito con el Banco W?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Puedes consultar el saldo total de tu crédito a través de nuestra banca en línea, la aplicación móvil o llamando a nuestra línea de servicio al cliente.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Por cuál medio puedo solicitar el paz y salvo de mi crédito ya cancelado?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Puedes solicitar el paz y salvo de tu crédito cancelado en cualquiera de nuestras oficinas o a través de nuestra línea de atención al cliente.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Dónde consulto el valor de la cuota de mi crédito?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>El valor de tu cuota de crédito puede ser consultado en tu extracto bancario, a través de nuestra plataforma en línea o contactando a servicio al cliente.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Cómo puedo saber cuántas cuotas me restan por pagar?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Puedes verificar el número de cuotas restantes en tu extracto de crédito, en tu cuenta en línea o consultando con un asesor.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Banco W tiene el servicio para compra de cartera?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Sí, el Banco W ofrece el servicio de compra de cartera para ayudarte a consolidar tus deudas y mejorar tus condiciones de pago.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>Quiero realizar un acuerdo de pago, ¿qué debo hacer?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Para realizar un acuerdo de pago, te recomendamos contactar a nuestra área de cobranza o visitar una de nuestras oficinas para recibir asesoría personalizada.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Con el Banco W, puedo ahorrar mientras pago mi crédito?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Sí, algunos de nuestros productos de crédito incluyen un componente de ahorro que te permite ahorrar mientras pagas tu préstamo.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>Si no pago lo correspondiente al ahorro en la cuota de mi crédito, ¿me genera mora?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>No pagar el componente de ahorro en tu cuota de crédito no genera mora, pero sí afectará el monto total de ahorro acumulado.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿El codeudor de crédito puede generar acuerdos de pago y por qué medio?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>El codeudor puede generar acuerdos de pago a través de los mismos canales que el titular del crédito, siempre y cuando esté autorizado para ello.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿El Analista de Crédito puede generar cobros en mi negocio o vivienda?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Los analistas de crédito no están autorizados para generar cobros directamente en tu negocio o vivienda. Todos los cobros se realizan a través de los canales oficiales del banco.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿El Banco puede embargarme si no realizo el pago de mi obligación?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>El embargo es una medida legal que el banco puede tomar en caso de incumplimiento prolongado de tus obligaciones. Te recomendamos buscar un acuerdo de pago para evitar esta situación.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿Qué tipos de crédito ofrece el Banco W?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>El Banco W ofrece diversos tipos de crédito, incluyendo microcréditos, créditos de consumo y créditos para vivienda, adaptados a las necesidades de nuestros clientes.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">
                    <span>¿El Banco W ofrece créditos para la agricultura?</span>
                    <span class="arrow-icon">▶</span>
                </button>
                <div class="accordion-content">
                    <p>Sí, el Banco W ofrece líneas de crédito especializadas para el sector agrícola, apoyando el desarrollo de proyectos productivos en el campo.</p>
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

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const accordionButtons = document.querySelectorAll('.accordion-button');

            accordionButtons.forEach(button => {
                button.addEventListener('click', () => {
                    const content = button.nextElementSibling;
                    
                    // Toggle the active class on the button
                    button.classList.toggle('active');
                    
                    // Toggle the 'show' class on the content
                    if (content.classList.contains('show')) {
                        content.classList.remove('show');
                        content.style.maxHeight = null; // Collapse
                    } else {
                        content.classList.add('show');
                        content.style.maxHeight = content.scrollHeight + "px"; // Expand to content height
                    }
                });
            });
        });
    </script>
    <script src="js/main.js"></script>
</body>
</html>
