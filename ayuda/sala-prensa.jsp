<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Sala de prensa - Banco W</title>
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

        /* Specific styles for Sala de prensa page */
        .main-content-press {
            background-color: white; /* Main content background is white */
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
        }

        /* Hero Section */
        .press-hero {
            width: 100%;
            background-color: #2596be; /* Blue background from image */
            padding: 60px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden;
            min-height: 400px; /* Adjust height as needed */
        }

        .press-hero-content {
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

        .press-hero-image-container {
            flex: 1;
            display: flex;
            justify-content: flex-start; /* Image on the left */
            min-width: 300px;
        }

        .press-hero-image-container img {
            max-width: 100%;
            height: auto;
            display: block;
            position: relative;
            left: -50px; /* Adjust to move image slightly left, as in the example */
        }

        .press-hero-text {
            flex: 1;
            color: white;
            text-align: left; /* Text on the right */
            min-width: 400px;
            padding-left: 20px; /* Adjust as needed */
        }

        .press-hero-text h1 {
            font-size: 40px;
            margin-bottom: 15px;
            color: white;
        }

        .press-hero-text p {
            font-size: 18px;
            line-height: 1.6;
            color: white;
            margin-bottom: 25px;
        }

        /* Tabs Section for Press */
        .press-tabs-section {
            width: 100%;
            background-color: white;
            padding: 40px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .press-tabs-nav {
            display: flex;
            justify-content: center;
            max-width: 1000px;
            width: 100%;
            border-bottom: 2px solid #ddd;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }

        .press-tab-button {
            background-color: transparent;
            border: none;
            padding: 15px 30px;
            cursor: pointer;
            font-size: 1.1em;
            font-weight: bold;
            color: #666;
            transition: color 0.3s ease, border-bottom 0.3s ease;
            outline: none;
            border-bottom: 3px solid transparent;
        }

        .press-tab-button.active {
            color: #2596be; /* Blue color for active tab */
            border-bottom-color: #2596be;
        }

        .press-tab-button:hover:not(.active) {
            color: #007bff; /* Slightly darker blue on hover */
        }

        .press-tab-content {
            display: none;
            max-width: 1000px;
            width: 100%;
            padding: 20px 0;
            text-align: left;
        }

        .press-tab-content.active {
            display: block;
        }

        /* Styles for news items (buttons that deploy info) */
        .news-item-list {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .news-item-button {
            background-color: #2596be; /* Blue background */
            color: white;
            padding: 15px 25px;
            border: none;
            border-radius: 8px;
            font-size: 1em;
            font-weight: normal;
            cursor: pointer;
            text-align: left;
            display: flex;
            align-items: center;
            gap: 15px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .news-item-button:hover {
            background-color: #1e7a9e; /* Darker blue on hover */
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        .news-item-button .icon-document {
            width: 24px;
            height: 24px;
            flex-shrink: 0; /* Prevent icon from shrinking */
        }

        /* Styles for Comunicados de prensa tab content */
        .press-filters {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-bottom: 30px;
            flex-wrap: wrap;
            width: 100%;
            max-width: 800px; /* Limit width of filters */
        }

        .press-filters select,
        .press-filters button {
            padding: 10px 15px;
            border-radius: 5px;
            font-size: 1em;
            border: 1px solid #ddd;
        }

        .press-filters select {
            flex: 1;
            min-width: 180px;
            background-color: #f8f8f8;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23000000%22%20d%3D%22M287%2C197.3L159.3%2C69.6c-3.6-3.6-8.6-5.6-13.7-5.6s-10.1%2C2-13.7%2C5.6L5.4%2C197.3c-7.3%2C7.3-7.3%2C19.1%2C0%2C26.4c3.6%2C3.6%2C8.6%2C5.6%2C13.7%2C5.6s10.1%2C2%2C13.7%2C5.6L145.6%2C106.8l127.7%2C127.7c3.6%2C3.6%2C8.6%2C5.6%2C13.7%2C5.6s10.1%2C2%2C13.7%2C5.6c7.3-7.3%2C7.3-19.1%2C0-26.4L287%2C197.3z%22%2F%3E%3C%2Fsvg%3E');
            background-repeat: no-repeat;
            background-position: right 10px top 50%;
            background-size: 12px auto;
            cursor: pointer;
        }

        .press-filters button {
            background-color: #2596be;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .press-filters button:hover {
            background-color: #1e7a9e;
        }

        .press-cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            width: 100%;
        }

        .press-card {
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            text-align: left;
        }

        .press-card-top {
            background-color: #2596be; /* Blue top section */
            height: 80px; /* Fixed height for the blue part */
            width: 100%;
        }

        .press-card-content {
            padding: 20px;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .press-card-content h4 {
            font-size: 1.1em;
            color: #333;
            margin-top: 0;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .press-card-content p {
            font-size: 0.9em;
            color: #666;
            margin-bottom: 15px;
            flex-grow: 1;
        }

        .press-card-content .date {
            font-size: 0.85em;
            color: #999;
            margin-bottom: 15px;
        }

        .press-card-content .btn-conoce-mas {
            background-color: #ff6b35; /* Orange button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            font-size: 0.9em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
            align-self: flex-start; /* Align button to the left */
        }

        .press-card-content .btn-conoce-mas:hover {
            background-color: #e55a2b;
        }

        /* Contact Section */
        .contact-section {
            width: 100%;
            max-width: 800px;
            margin-top: 40px;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            text-align: center;
        }

        .contact-section h3 {
            font-size: 1.5em;
            color: #333;
            margin-bottom: 20px;
        }

        .contact-info-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            gap: 20px;
            margin-top: 20px;
        }

        .contact-info-grid img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
        }

        .contact-details {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .contact-details p {
            margin: 5px 0;
            font-size: 1em;
            color: #555;
        }

        .contact-buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 10px;
            margin-top: 20px;
        }

        .contact-button {
            background-color: #2596be;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 20px;
            font-size: 0.9em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .contact-button:hover {
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

            .press-hero-content {
                flex-direction: column;
                text-align: center;
            }

            .press-hero-image-container {
                justify-content: center;
                left: 0;
                margin-bottom: 20px;
            }

            .press-hero-image-container img {
                left: 0; /* Reset position for mobile */
            }

            .press-hero-text {
                text-align: center;
                padding-left: 0;
            }

            .press-tabs-nav {
                flex-direction: column;
                align-items: center;
            }

            .press-tab-button {
                width: 100%;
                margin-bottom: 10px;
            }

            .news-item-button {
                flex-direction: row; /* Keep icon and text in a row */
                text-align: left;
                padding: 12px 15px;
                font-size: 0.9em;
            }

            .press-filters {
                flex-direction: column;
                gap: 10px;
            }

            .press-filters select,
            .press-filters button {
                width: 100%;
            }

            .press-cards-grid {
                grid-template-columns: 1fr;
            }

            .contact-section {
                padding: 20px;
            }

            .contact-info-grid {
                flex-direction: column;
            }

            .contact-buttons {
                flex-direction: column;
            }

            .contact-button {
                width: 100%;
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
                <li class="dropdown active">
                    <a href="#">Acerca de Nosotros <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Quiénes somos</a></li>
                        <li><a href="#">Fundación</a></li>
                        <li><a href="#">WWB Colombia</a></li>
                        <li><a href="#">Trabaja con nosotros</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/nosotros/sala-prensa.jsp">Sala de prensa</a></li>
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
                        <li><a href="${pageContext.request.contextPath}/confin/atencion.jsp">Atención</a></li>
                        <li><a href="${pageContext.request.contextPath}/confin/informacion.jsp">Información</a></li>
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
                        <li><a href="${pageContext.request.contextPath}/inversionista/tasas-tarifas.jsp">Información financiera</a></li>
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
    <main class="main-content-press">
        <section class="press-hero">
            <div class="press-hero-content">
                <div class="press-hero-image-container">
                    <!-- Image of woman on a chair -->
                    <img src="${pageContext.request.contextPath}/images/sala-prensa.png" alt="Mujer sentada en una silla">
                </div>
                <div class="press-hero-text">
                    <h1>Sala de prensa</h1>
                    <p>Infórmate de todas las noticias y novedades de Banco W, acá encontrarás artículos que te ayudarán a mantenerte al tanto.</p>
                </div>
            </div>
        </section>

        <section class="press-tabs-section">
            <div class="press-tabs-nav">
                <button class="press-tab-button active" onclick="openPressTab(event, 'publicaciones')">Publicaciones en medios</button>
                <button class="press-tab-button" onclick="openPressTab(event, 'comunicados')">Comunicados de prensa</button>
                <button class="press-tab-button" onclick="openPressTab(event, 'boletin')">Boletín informativo</button>
            </div>

            <!-- Tab Content: Publicaciones en medios -->
            <div id="publicaciones" class="press-tab-content active">
                <div class="news-item-list">
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Tiempo - mayo 28: Fundación social no fusionará los bancos W y Caja Social.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web El Diario del Otún - mayo 29: Remesas en la mira risaraldenses podrían perder ingresos si avanza propuesta de Trump. Se destaca declaraciones de Andrés Vinasco, gerente de pagos internacionales del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        El Diario del Otún - mayo 29: Impuesto a remesas será golpe bajo al consumo.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        El Universal - mayo 27: Grupo Social con el 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        La República - mayo 23: Banco W mantiene su presidente, tras compra por Fundación Grupo Social.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web La República - mayo 22: José Guerrero sigue al frente del Banco W tras compra de la Fundación Grupo Social.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Infobae América - mayo 21: Fundación Grupo Social adquiere el 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Javeriana Estéreo - mayo 21: Novedades empresariales, bursátiles y financieras en Colombia. Fundación Grupo Social oficializa la adquisición del 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Portafolio - mayo 20: Dueña del Banco Caja Social oficializa la adquisición del 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        La FM de RCN - mayo 20: Fundación Grupo Social compra el 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Forbes - mayo 20: Fundación Grupo Social oficializa la adquisición del 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Noticias Colombia - mayo 20: El Banco W impulsa la cultura del emprendimiento en más de 19.000 estudiantes caleños con su programa de inversión social Emprendedores 4.0.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Valora Analitik - mayo 20: Fundación Grupo Social concreta la compra del 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Caracol Radio Cali - mayo 20: Fundación Grupo Social adquiere 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Pulzo - mayo 20: Banco Caja Social compró otro reconocido banco en Colombia.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Radio Melodía Bogotá - mayo 20: Fundación Grupo Social adquiere 51% del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web La República - mayo 21: Fundación Grupo Social oficializó la adquisición de 51% de acciones del Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Valor y Dinero - mayo 20: Dueña de Caja Social adquiere participación mayoritaria en Banco W.
                    </button>
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Portal web Revista Semana - mayo 20: Importante operación de compra en la banca del país se sigue moviendo el sector financiero.
                    </button>
                </div>
            </div>

            <!-- Tab Content: Comunicados de prensa -->
            <div id="comunicados" class="press-tab-content">
                <div class="press-filters">
                    <select>
                        <option value="">Seleccione Mes</option>
                        <option value="enero">Enero</option>
                        <option value="febrero">Febrero</option>
                        <option value="marzo">Marzo</option>
                        <option value="abril">Abril</option>
                        <option value="mayo">Mayo</option>
                        <option value="junio">Junio</option>
                        <option value="julio">Julio</option>
                        <option value="agosto">Agosto</option>
                        <option value="septiembre">Septiembre</option>
                        <option value="octubre">Octubre</option>
                        <option value="noviembre">Noviembre</option>
                        <option value="diciembre">Diciembre</option>
                    </select>
                    <select>
                        <option value="">Seleccione Año</option>
                        <option value="2025">2025</option>
                        <option value="2024">2024</option>
                        <option value="2023">2023</option>
                        <option value="2022">2022</option>
                    </select>
                    <button>Buscar</button>
                </div>
                <div class="press-cards-grid">
                    <!-- Comunicado de prensa No. 115 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 115</h4>
                            <p class="date">20 mayo de 2025</p>
                            <p>Banco W impulsa la cultura del emprendimiento en más de 19 mil estudiantes</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 114 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 114</h4>
                            <p class="date">21 agosto de 2024</p>
                            <p>'Cash, el resurgir de los imperios': Un videojuego que promueve la educación financiera</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 113 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 113</h4>
                            <p class="date">01 de julio de 2024</p>
                            <p>El laboratorio digital del Banco W cumple 1 año de operación en el que ha habilitado varias soluciones...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 112 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 112</h4>
                            <p class="date">12 junio de 2024</p>
                            <p>Tu giro protegido: nuevo seguro que lanza Banco W para brindar tranquilidad a sus clientes de...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 111 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 111</h4>
                            <p class="date">17 abril de 2024</p>
                            <p>Banco W le apuesta a la cultura del emprendimiento en edades tempranas en colegios públicos de...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 110 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 110</h4>
                            <p class="date">15 abril de 2024</p>
                            <p>Banco W en alianza con Finanzas para la Equidad de USAID Colombia inicia proyecto 'Uniendo caminos,...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 109 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 109</h4>
                            <p class="date">27 de marzo de 2024</p>
                            <p>Banco W cumple con éxito el pago de su primera emisión con enfoque social aportando de manera...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 108 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 108</h4>
                            <p class="date">20 febrero de 2024</p>
                            <p>Banco W presenta los esfuerzos adelantados en términos de experiencia y satisfacción de sus...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 107 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 107</h4>
                            <p class="date">08 de febrero de 2024</p>
                            <p>Banco W presenta un balance positivo en el mercado de las remesas y anticipa perspectivas...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 106 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 106</h4>
                            <p class="date">18 diciembre de 2023</p>
                            <p>Banco W anuncia el lanzamiento de su billetera digital, una de las primeras apuestas digitales de la...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 105 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 105</h4>
                            <p class="date">27 noviembre de 2023</p>
                            <p>Banco W pone a disposición de las microempresarias colombianas su primer producto con enfoque de...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 104 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 104</h4>
                            <p class="date">14 noviembre de 2023</p>
                            <p>Banco W actualizó sus calificaciones de impacto social y riesgo institucional con excelentes...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 103 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 103</h4>
                            <p class="date">7 noviembre de 2023</p>
                            <p>Banco W primera entidad de microfinanzas en lanzar tarjeta de crédito prepago para los...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 102 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 102</h4>
                            <p class="date">5 de octubre de 2023</p>
                            <p>W Lab, alianza entre Banco W y la Universidad Icesi para crear soluciones innovadoras y digitales...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 101 (29 septiembre) -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 101</h4>
                            <p class="date">29 septiembre de 2023</p>
                            <p>Colaboradores del Banco W adelantaron jornada de donación a la Fundación Ascodisvalle de Jeison...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 101 (29 septiembre, segundo) -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 101</h4>
                            <p class="date">29 septiembre de 2023</p>
                            <p>Banco W y ¡Belive, una alianza innovadora en el ámbito de las microfinanzas que promueve la...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 099 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 099</h4>
                            <p class="date">08 agosto de 2023</p>
                            <p>Banco W abre convocatoria con bachilleres de Cali – Palmira y Jamundí para Plan Semilla</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 098 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 098</h4>
                            <p class="date">28 julio de 2023</p>
                            <p>Culmina con éxito el ciclo de mentorías gratuitas que el Banco W ofreció a sus clientes...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 097 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 097</h4>
                            <p class="date">25 de julio de 2023</p>
                            <p>Banco W, una de las empresas vinculadas a Compromiso Valle, iniciativa que aporta al cierre de...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 096 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 096</h4>
                            <p class="date">22 de junio de 2023</p>
                            <p>Proyecto integrador, una alianza entre el Banco W y la universidad ICESI</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 095 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 095</h4>
                            <p class="date">5 de junio de 2023</p>
                            <p>Banco W adelantó jornada de siembra de árboles en Cali, Soacha y Rionegro</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 094 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 094</h4>
                            <p class="date">02 de marzo de 2023</p>
                            <p>Banco W primera entidad financiera en apoyar a los microempresarios en el país para tener casa y regici...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 093 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 093</h4>
                            <p class="date">17 de febrero de 2023</p>
                            <p>Excusa pública del Banco W, señor Abner Mitchell Gutierrez Acosta</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 092 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 092</h4>
                            <p class="date">7 de febrero de 2023</p>
                            <p>Banco W abre sus puertas al servicio de los microempresarios y trabajadores independientes, del...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                    <!-- Comunicado de prensa No. 091 -->
                    <div class="press-card">
                        <div class="press-card-top"></div>
                        <div class="press-card-content">
                            <h4>Comunicado de prensa No. 091</h4>
                            <p class="date">11 enero de 2023</p>
                            <p>Expansión de canales físicos y virtuales: la apuesta del Banco W para promover la inclusión...</p>
                            <a href="#" class="btn-conoce-mas">¡Conoce más!</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tab Content: Boletín informativo -->
            <div id="boletin" class="press-tab-content">
                <div class="news-item-list">
                    <button class="news-item-button">
                        <svg class="icon-document" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                        Boletín informativo Julio - Agosto - Septiembre
                    </button>
                </div>

                <div class="contact-section">
                    <h3>Contacto Oficina de Prensa Banco W</h3>
                    <div class="contact-info-grid">
                        <img src="http://googleusercontent.com/file_content/1" alt="Diana Lucía Fernández Lemos">
                        <div class="contact-details">
                            <p>Diana Lucía Fernández Lemos</p>
                            <p>Jefe de Comunicaciones Corporativas</p>
                        </div>
                    </div>
                    <div class="contact-buttons">
                        <a href="mailto:dfernandez@bancow.com.co" class="contact-button">dfernandez@bancow.com.co</a>
                        <button class="contact-button">T (602) 6089999 ext. 10435</button>
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

    <script>
        // Function to handle press tabs
        function openPressTab(evt, tabName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("press-tab-content");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("press-tab-button");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        // Show the first tab by default on page load
        document.addEventListener('DOMContentLoaded', (event) => {
            document.querySelector('.press-tab-button').click();
        });
    </script>
    <script src="js/main.js"></script>
</body>
</html>
