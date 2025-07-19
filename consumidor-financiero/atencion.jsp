<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Atención al Consumidor Financiero - Banco W</title>
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

        /* Estilos específicos para el main de esta página */
        .main-content-consumer {
            background-color: white; /* El main es blanco por defecto */
            padding: 0; /* Eliminar padding del main, el contenido interno lo manejará */
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center; /* Centra el contenido horizontalmente */
            justify-content: flex-start;
        }

        /* Nuevo contenedor para el degradado de borde a borde */
        .hero-gradient-wrapper {
            width: 100%; /* Ocupa todo el ancho disponible */
            /* CAMBIO AQUÍ: Degradado de borde a borde con el color especificado */
            background: linear-gradient(to right, #2596be, #ffffff);
            padding: 40px 20px; /* Padding para el contenido dentro del degradado */
            display: flex;
            justify-content: center; /* Centra el consumer-hero-section dentro del wrapper */
            align-items: center;
        }

        /* Contenedor principal para la imagen y el texto en la parte superior del main */
        .consumer-hero-section {
            display: flex; /* Usar flexbox para alinear imagen y texto */
            align-items: center; /* Centrar verticalmente los elementos */
            max-width: 1000px; /* Ancho máximo para el contenido */
            width: 100%;
            border-radius: 10px;    
            gap: 20px; /* Espacio entre la imagen y el texto */
            flex-wrap: wrap; /* Permite que los elementos se envuelvan en pantallas pequeñas */
            padding: 20px; /* Padding interno de la caja blanca */
        }

        .consumer-hero-image {
            flex: 1; /* La imagen ocupará espacio flexible */
            min-width: 300px; /* Ancho mínimo para la imagen antes de envolver */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .consumer-hero-image img {
            height: auto;
            border-radius: 8px;
        }

        .consumer-hero-content {
            flex: 2; /* El contenido de texto ocupará más espacio flexible */
            min-width: 300px; /* Ancho mínimo para el texto antes de envolver */
            text-align: left; /* Alinear el texto a la izquierda */
        }

        .consumer-hero-content h1 {
            font-size: 2em;
            color: #007bff; /* Color del título */
            margin-bottom: 15px;
        }

        .consumer-text {
            font-size: 1.1em;
            line-height: 1.6;
            color: #333;
            text-align: justify;
        }

        .tabs-container {
            width: 100%;
            max-width: 900px;
            margin-top: -30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            overflow: hidden;
        }

        .tabs-nav {
            display: flex;
            justify-content: space-around;
            border-bottom: 1px solid #ddd;
            background-color: #007bff; /* Color de fondo de las pestañas */
            border-radius: 10px 10px 0 0;
        }

        .tabs-nav button {
            flex-grow: 1;
            padding: 15px 10px;
            border: none;
            background-color: transparent;
            color: white;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            outline: none;
        }

        .tabs-nav button:hover {
            background-color: #0056b3; /* Color al pasar el ratón */
        }

        .tabs-nav button.active {
            background-color: #ffffff; /* Pestaña activa */
            color: #007bff;
            border-bottom: 3px solid #007bff;
            font-weight: bold;
        }

        .tabs-content {
            padding: 20px;
            text-align: left;
            color: #555;
        }
        /* Estilos específicos para el contenido de la pestaña PQRS */
        .pqrs-card-container {
            display: flex;
            flex-direction: column; /* Apilar las tarjetas verticalmente por defecto */
            gap: 20px; /* Espacio entre las tarjetas */
            margin-top: 20px;
            padding: 0 20px; /* Añadir padding para que no se peguen a los bordes del tab-content */
        }

        .pqrs-card {
            display: flex;
            align-items: flex-start; /* Alinea los elementos al inicio (arriba) */
            gap: 20px;
            background-color: #f8f8f8; /* Fondo de las tarjetas */
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
            text-align: left;
            width: 100%; /* Ocupa todo el ancho disponible */
            max-width: 700px; /* Ancho máximo para las tarjetas */
            margin: 0 auto; /* Centra las tarjetas */
        }

        .pqrs-icon-circle {
            background-color: #2596be; /* Color del círculo */
            border-radius: 50%;
            width: 60px;
            height: 60px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-shrink: 0; /* Evita que el círculo se encoja */
        }

        .pqrs-icon-circle svg {
            color: white; /* Color del icono SVG */
            width: 30px;
            height: 30px;
        }

        .pqrs-card-content {
            flex-grow: 1; /* Permite que el contenido de texto ocupe el espacio restante */
        }

        .pqrs-card-content h4 {
            font-size: 1.2em;
            color: #333;
            margin-bottom: 5px;
        }

        .pqrs-card-content p {
            font-size: 0.95em;
            color: #555;
            margin-bottom: 10px;
        }

        .pqrs-card-content ul {
            list-style: none; /* Elimina las viñetas por defecto */
            padding: 0;
            margin: 0;
        }

        .pqrs-card-content ul li {
            font-size: 0.9em;
            color: #555;
            margin-bottom: 5px;
            display: flex;
            align-items: center;
        }

        .pqrs-card-content ul li span {
            color: #2596be; /* Color de las viñetas personalizadas (iconos) */
            font-size: 1.2em;
            margin-right: 8px;
            line-height: 1; /* Alinea el icono verticalmente */
        }

        .btn-pqrs-form {
            background-color: #2596be; /* Color del botón */
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 30px; /* Espacio superior para el botón */
            display: block; /* Para que ocupe su propia línea y se pueda centrar */
            margin-left: auto;
            margin-right: auto;
            max-width: 300px; /* Ancho máximo para el botón */
            text-decoration: none; /* En caso de que sea un <a> tag */
        }

        .btn-pqrs-form:hover {
            background-color: #1e7a9e; /* Color al pasar el ratón */
        }

        /* Ajustes responsivos para las tarjetas PQRS */
        @media (min-width: 769px) { /* Estilos para desktop */
            .pqrs-card-container {
                flex-direction: row; /* Las tarjetas en fila en pantallas grandes */
                justify-content: center; /* Centrar las tarjetas en la fila */
                flex-wrap: wrap; /* Permite que se envuelvan si no caben */
            }
            .pqrs-card {
                flex-direction: column; /* Icono y texto apilados en desktop */
                align-items: center; /* Centrar contenido en desktop */
                text-align: center; /* Centrar texto en desktop */
                width: 320px; /* Ancho fijo para las tarjetas en desktop */
            }
            .pqrs-card-content h4,
            .pqrs-card-content p,
            .pqrs-card-content ul {
                text-align: center; /* Centrar texto en desktop */
            }
            .pqrs-card-content ul {
                padding-left: 0; /* Eliminar padding para centrar la lista */
            }
            .pqrs-card-content ul li {
                justify-content: center; /* Centrar elementos de la lista */
            }
        }
        /* Estilos para el botón de Superintendencia */
        .btn-superfinanciera {
            background-color: #007bff; /* Un color azul similar al de las pestañas */
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 30px; /* Espacio superior para el botón */
            display: block; /* Para que ocupe su propia línea y se pueda centrar */
            margin-left: auto;
            margin-right: auto;
            max-width: 300px; /* Ancho máximo para el botón */
            text-decoration: none; /* En caso de que sea un <a> tag */
        }

        .btn-superfinanciera:hover {
            background-color: #0056b3; /* Color al pasar el ratón */
        }
        /* Responsive adjustments */
        @media (max-width: 768px) {
            .consumer-hero-section {
                flex-direction: column; /* Apilar imagen y texto en pantallas pequeñas */
                align-items: center;
            }
            .consumer-hero-image, .consumer-hero-content {
                min-width: unset; /* Eliminar ancho mínimo para permitir que se ajusten */
                width: 100%;
            }
            .tabs-nav {
                flex-wrap: wrap;
            }
            .tabs-nav button {
                width: 50%; /* Dos botones por fila en pantallas pequeñas */
            }
        }
        @media (max-width: 480px) {
            .tabs-nav button {
                width: 100%; /* Un botón por fila en pantallas muy pequeñas */
            }
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

            /* Los estilos para tarjeta-hero, hero-content, tabs y beneficios-carousel no están en esta página,
               pero se mantienen aquí si se usan en otros archivos CSS */
            .tarjeta-hero {
                flex-direction: column;
            }

            .hero-content {
                flex-direction: column;
            }

            .tabs {
                flex-direction: column;
            }

            .beneficios-carousel {
                flex-direction: column;
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
            <li class="active"><a href="${pageContext.request.contextPath}/consumidor-financiero/atencion.jsp">Atención</a></li> 
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

    <!-- INICIO - Contenido Principal (Main Content) -->
    <main class="main-content-consumer">
        <div class="hero-gradient-wrapper">
            <div class="consumer-hero-section">
                <div class="consumer-hero-image">
                    <!-- Imagen central basada en la imagen proporcionada -->
                    <img src="${pageContext.request.contextPath}/images/atencion-consumidor-financiero.png" alt="Imagen de Atención al Consumidor">
                </div>
                <div class="consumer-hero-content">
                    <h1>Atención al consumidor financiero</h1>
                    <p class="consumer-text">
                        Como Consumidor financiero tienes derecho a acudir directamente a la Entidad financiera, Defensor del consumidor financiero, Superintendencia financiera de Colombia o a los organismos de autorregulación, para presentar tu queja o reclamo de conformidad con lo establecido en el literal E del artículo 5 de la Ley 1328 de 2009, teniendo en cuenta que cada entidad evaluará los trámites dentro del marco de competencia que le corresponda.
                    </p>
                </div>
            </div>
        </div>

        <div class="tabs-container">
            <div class="tabs-nav">
                <button class="tab-button active" onclick="openTab(event, 'pqrs')">Canales de atención PQRS</button>
                <button class="tab-button" onclick="openTab(event, 'defensor')">Defensor del consumidor</button>
                <button class="tab-button" onclick="openTab(event, 'superintendencia')">Superintendencia financiera</button>
                <button class="tab-button" onclick="openTab(event, 'revisor')">Revisor fiscal</button>
            </div>

            <div id="pqrs" class="tabs-content">
                <div class="pqrs-card-container">
                    <div class="pqrs-card">
                        <div class="pqrs-icon-circle">
                            <!-- Icono de teléfono SVG -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-3.07-8.63A2 2 0 0 1 4.11 2H7c.55 0 .96.34 1.15.83l1.88 4.7a1 1 0 0 1-.6 1.25l-2.29 1.62a1 1 0 0 0-.36 1.25l.8 2.68a15.79 15.79 0 0 0 6.84 6.84l2.68.8a1 1 0 0 0 1.25-.36l1.62-2.29a1 1 0 0 1 1.25-.6l4.7 1.88c.49.19.83.6.83 1.15z"></path></svg>
                        </div>
                        <div class="pqrs-card-content">
                            <h4>Línea de servicio al cliente</h4>
                            <p>Listos para atenderte de lunes a viernes de 07:00 a.m. a 06:00 p.m. y sábados de 08:00 a.m. - 02:00 p.m.</p>
                            <ul>
                                <li><span>📞</span> Teléfono: 01 8000 5156 56</li>
                                <li><span>📱</span> Celular: 323 5996557</li>
                            </ul>
                        </div>
                    </div>
                    <div class="pqrs-card">
                        <div class="pqrs-icon-circle">
                            <!-- Icono de clip de papel SVG -->
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-paperclip"><path d="M21.44 11.05l-9.19 9.19a6 6 0 0 1-8.49-8.49l9.19-9.19a4 4 0 0 1 5.66 5.66l-9.2 9.19a2 2 0 0 1-2.83-2.83l8.49-8.48"></path></svg>
                        </div>
                        <div class="pqrs-card-content">
                            <h4>Formulario PQRS</h4>
                            <p>Las consultas sobre los requisitos para acceder a nuestros productos financieros y la atención de casos de colaboradores o ex colaboradores del banco, accionistas, proveedores, remisión de notificaciones judiciales, tutelas y hojas de vida, no se responderán a través de este formulario. En esta página encontrarás la información para dirigir correctamente tu solicitud.</p>
                        </div>
                    </div>
                </div>
                <button class="btn-pqrs-form">Formulario PQRS</button>
            </div>



            <div id="defensor" class="tabs-content" style="display:none;">
                <h3>Defensor del Consumidor Financiero</h3>
                <p>Es una figura externa que actúa como mediador entre los clientes y el banco, para buscar mejorar la prestación del servicio. Sus datos siempre son publicados por las entidades en todos sus medios. El Defensor tendrá tres días para confirmar si atenderá la reclamación. Si acepta el caso, le otorgará al banco ocho días hábiles para responder y después de revisar el caso emitirá una respuesta (máximo en ocho días). Como consumidor financiero podrás formular tus quejas ante el DCF en los canales de atención dispuesto por el Banco. Así mismo, también podrás formular recomendaciones y propuestas frente aquellos aspectos que puedan mejorar nuestras relaciones.</p>

                <h4>Defensor del consumidor</h4>
                <ul>
                    <li><strong>Defensor del consumidor financiero:</strong> Dr. Dario Laguado Monsalve.</li>
                    <li><strong>Suplente:</strong> Dr. Gonzalo Méndez Morales.</li>
                    <li><strong>Número de Teléfono:</strong> (601) 3736697, (601) 5970412, (601) 2351604.</li>
                    <li><strong>Número de Celular:</strong> 320 398 1187.</li>
                    <li><strong>Horario de atención al público:</strong> de 9:00 a.m. a 4:00 p.m. de Lunes a Viernes, jornada continua.</li>
                    <li><strong>Dirección:</strong> Calle 70 A No. 11-83 Bogotá</li>
                    <li><strong>Página Web:</strong> <a href="http://www.defensorialg.com.co" target="_blank">www.defensorialg.com.co</a></li>
                </ul>

                <h4>Recuerda incluir los siguientes datos en tu reclamación:</h4>
                <ul>
                    <li>Nombres</li>
                    <li>Apellidos</li>
                    <li>Número de identificación.</li>
                    <li>Teléfono.</li>
                    <li>Correo electrónico.</li>
                    <li>Describir los hechos y derechos que consideres vulnerados.</li>
                </ul>
            </div>

            <div id="superintendencia" class="tabs-content" style="display:none;">
                <h3>Superintendencia Financiera de Colombia</h3>
                <p>Un caso de inconformidad se puede exponer a la Superfinanciera de dos maneras: acercándose a una de sus sedes o contactándose a su línea gratuita nacional 01 8000 120100.</p>
                <p>Para recibir una respuesta es importante suministrar sus datos de contacto y copia de los documentos que soportan la reclamación.</p>
                <button class="btn-superfinanciera">superfinanciera.gov.co</button>
            </div>

            <div id="revisor" class="tabs-content" style="display:none;">
                <h3>Revisoría Fiscal KPMG</h3>
                <p>La Revisoría Fiscal hace las veces de un órgano de control independiente cuyo objetivo es vigilar y garantizar el cumplimiento ajustado de una organización a la normativa externa e interna.</p>
                <p>Como consumidor Financiero podrás radicar tus manifestaciones, quejas y sugerencias ante la Revisoría Fiscal al siguiente correo electrónico:</p>
                <p><strong>Correo electrónico:</strong> <a href="mailto:CO-FMColombia@kpmg.com">CO-FMColombia@kpmg.com</a></p>

                <h4>Información Revisora Fiscal Banco W</h4>
                <ul>
                    <li><strong>Firma Revisora Fiscal:</strong> KPMG SAS.</li>
                    <li><strong>Revisor Fiscal principal:</strong> Hugo Alonso Magaña Salazar</li>
                    <li><strong>Revisor Fiscal suplente:</strong> Joe Raphael Velasco Betancourt</li>
                </ul>
            </div>
        </div>
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
        // Función para manejar las pestañas
        function openTab(evt, tabName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabs-content");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("tab-button");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        // Mostrar la primera pestaña por defecto al cargar la página
        document.addEventListener('DOMContentLoaded', (event) => {
            document.querySelector('.tab-button').click();
        });
    </script>
    <script src="js/main.js"></script>
</body>
</html>
