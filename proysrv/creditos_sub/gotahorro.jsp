<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Gotahorro - Banco W</title>
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

        /* Specific styles for Gotahorro page */
        .main-content-gotahorro {
            background-color: white; /* Main content background is white */
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
        }

        /* Hero Section */
        .gotahorro-hero {
            width: 100%;
            background: linear-gradient(to right, #ff8c00, #ffffff); /* Orange to white gradient */
            padding: 60px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden;
            min-height: 450px;
        }

        .gotahorro-hero-content {
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

        .gotahorro-hero-image-container {
            flex: 1;
            display: flex;
            justify-content: flex-start; /* Image on the left */
            min-width: 300px;
        }

        .gotahorro-hero-image-container img {
            max-width: 100%;
            height: auto;
            display: block;
            position: relative;
            left: -50px; /* Adjust to move image slightly left, as in the example */
        }

        .gotahorro-hero-text {
            flex: 1;
            color: #333; /* Text color for the white part of the gradient */
            text-align: left; /* Text on the right */
            min-width: 400px;
            padding-left: 20px; /* Adjust as needed */
        }

        .gotahorro-hero-text h1 {
            font-size: 40px;
            margin-bottom: 15px;
            color: #333;
        }

        .gotahorro-hero-text p {
            font-size: 18px;
            line-height: 1.6;
            color: #555;
            margin-bottom: 25px;
        }

        .gotahorro-hero-text .btn-simulator {
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

        .gotahorro-hero-text .btn-simulator:hover {
            background-color: #e55a2b;
        }

        /* Tabs Section */
        .gotahorro-tabs-section {
            width: 100%;
            background-color: white;
            padding: 40px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .gotahorro-tabs-nav {
            display: flex;
            justify-content: center;
            max-width: 1000px;
            width: 100%;
            border-bottom: 2px solid #ddd;
            margin-bottom: 30px;
            flex-wrap: wrap;
        }

        .gotahorro-tab-button {
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

        .gotahorro-tab-button.active {
            color: #ff8c00; /* Orange color for active tab */
            border-bottom-color: #ff8c00;
        }

        .gotahorro-tab-button:hover:not(.active) {
            color: #ff6b35;
        }

        .gotahorro-tab-content {
            display: none;
            max-width: 1000px;
            width: 100%;
            padding: 20px 0;
            text-align: left;
        }

        .gotahorro-tab-content.active {
            display: block;
        }

        /* Styles for the 3-column list in "Características" tab */
        .gotahorro-tab-content.caracteristicas-grid ul {
            list-style: none;
            padding: 0;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); /* 3 columns on larger screens */
            gap: 20px;
        }

        .gotahorro-tab-content ul li {
            font-size: 1em;
            color: #555;
            margin-bottom: 10px;
            display: flex;
            align-items: flex-start;
        }

        .gotahorro-tab-content ul li span {
            color: #ff8c00; /* Orange circle for list items */
            font-size: 1.5em;
            line-height: 1;
            margin-right: 10px;
            flex-shrink: 0;
        }

        /* Styles for Trámites de apertura button */
        .btn-tramites-apertura {
            background-color: #ff8c00; /* Orange background */
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: flex; /* Use flexbox to align content */
            align-items: center;
            justify-content: space-between; /* Space between text and arrow */
            width: 100%;
            max-width: 400px; /* Limit width */
            margin: 20px auto; /* Center the button */
            text-decoration: none; /* In case it's an <a> tag */
        }

        .btn-tramites-apertura:hover {
            background-color: #e55a2b; /* Darker orange on hover */
        }

        .btn-tramites-apertura .arrow-icon {
            font-size: 1.2em;
            margin-left: 10px;
        }

        /* Specific styles for Solicitud de Crédito tab */
        .solicitud-form-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-bottom: 20px;
        }

        .solicitud-form-group {
            text-align: left;
        }

        .solicitud-form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #333;
        }

        .solicitud-form-group input[type="text"],
        .solicitud-form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
        }

        .solicitud-checkbox-group {
            margin-top: 20px;
            text-align: left;
        }

        .solicitud-checkbox-group label {
            display: flex;
            align-items: flex-start;
            font-size: 0.9em;
            color: #555;
            margin-bottom: 15px;
            line-height: 1.5;
        }

        .solicitud-checkbox-group input[type="checkbox"] {
            margin-right: 10px;
            margin-top: 4px; /* Adjust vertical alignment */
            flex-shrink: 0;
        }

        .solicitud-checkbox-group a {
            color: #ff6b35;
            text-decoration: none;
            font-weight: bold;
        }

        .solicitud-checkbox-group a:hover {
            text-decoration: underline;
        }

        .btn-send-solicitud {
            background-color: #ff6b35; /* Orange button */
            color: white;
            padding: 15px 40px;
            border: none;
            border-radius: 25px;
            font-size: 1.2em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 30px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .btn-send-solicitud:hover {
            background-color: #e55a2b;
        }

        /* Bottom Info Section */
        .info-section-bottom {
            width: 100%;
            background-color: #ff8c00; /* Orange background */
            padding: 60px 20px;
            text-align: center;
        }

        .info-section-bottom h2 {
            font-size: 2em;
            color: white;
            margin-bottom: 30px;
        }

        .info-buttons-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            max-width: 1000px;
            margin: 0 auto;
        }

        .info-button {
            background-color: transparent;
            color: white;
            border: 2px solid white;
            padding: 15px 30px;
            border-radius: 25px;
            font-size: 1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .info-button:hover {
            background-color: white;
            color: #ff8c00;
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

            .gotahorro-hero-content {
                flex-direction: column;
                text-align: center;
            }

            .gotahorro-hero-image-container {
                justify-content: center;
                left: 0;
                margin-bottom: 20px;
            }

            .gotahorro-hero-image-container img {
                left: 0; /* Reset position for mobile */
            }

            .gotahorro-hero-text {
                text-align: center;
                padding-left: 0;
            }

            .gotahorro-tabs-nav {
                flex-direction: column;
                align-items: center;
            }

            .gotahorro-tab-button {
                width: 100%;
                margin-bottom: 10px;
            }

            .gotahorro-tab-content ul {
                grid-template-columns: 1fr;
            }

            .info-buttons-container {
                flex-direction: column;
            }

            .info-button {
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
                <li class="dropdown active">
                    <a href="#">Productos y servicios <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/proysrv/creditos.jsp">Créditos</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/proysrv/gotahorro.jsp">Gotahorro</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/tarjeta_credito.jsp">Tarjeta de crédito</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/ahorro-inversion.jsp">Productos de ahorro e inversión</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/giros-internacionales.jsp">Giros internacionales</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/seguros.jsp">Seguros</a></li>
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

    <!-- START - Main Content -->
    <main class="main-content-gotahorro">
        <section class="gotahorro-hero">
            <div class="gotahorro-hero-content">
                <div class="gotahorro-hero-image-container">
                    <!-- Image of woman with piggy bank -->
                    <img src="${pageContext.request.contextPath}/images/gotahorro.webp" alt="Mujer con alcancía">
                </div>
                <div class="gotahorro-hero-text">
                    <h1>Gotahorro</h1>
                    <p>La solución de crédito flexible y segura para microempresarios, la cual puedes pagar diaria, semanal o quincenal.</p>
                    <a href="#" class="btn-simulator">Simulador de crédito</a>
                </div>
            </div>
        </section>

        <section class="gotahorro-tabs-section">
            <div class="gotahorro-tabs-nav">
                <button class="gotahorro-tab-button active" onclick="openGotahorroTab(event, 'caracteristicas')">Características</button>
                <button class="gotahorro-tab-button" onclick="openGotahorroTab(event, 'requisitos')">Requisitos</button>
                <button class="gotahorro-tab-button" onclick="openGotahorroTab(event, 'tramites')">Trámites</button>
                <button class="gotahorro-tab-button" onclick="openGotahorroTab(event, 'solicitud')">Solicitud de Crédito</button>
            </div>

            <!-- Tab Content: Características -->
            <div id="caracteristicas" class="gotahorro-tab-content active caracteristicas-grid">
                <ul>
                    <li><span>🟠</span> Destino económico
                        <ul>
                            <li><span>•</span> Capital de trabajo</li>
                        </ul>
                    </li>
                    <li><span>🟠</span> Monto
                        <ul>
                            <li><span>•</span> Desde $400.000 hasta $1.500.000</li>
                        </ul>
                    </li>
                    <li><span>🟠</span> Plazo
                        <ul>
                            <li><span>•</span> 30, 45, 60, 75, 90 y 120 días: Pago diario</li>
                            <li><span>•</span> 4, 8, 12 y 16 semanas: Pago semanal</li>
                            <li><span>•</span> 2, 4, 6 y 8 quincenas: Pago quincenal</li>
                        </ul>
                    </li>
                    <li><span>🟠</span> Tasa fija durante toda la vigencia del préstamo.</li>
                </ul>
                <ul>
                    <li><span>🟠</span> La frecuencia de pago diaria, únicamente se encuentra disponible en las siguientes oficinas en Cali y Bogotá.</li>
                    <li><span>🟠</span> La frecuencia de pago semanal y quincenal se encuentra disponible en todas nuestras oficinas a nivel nacional.</li>
                    <li><span>🟠</span> Este producto tiene un componente de ahorro que está incluido en el valor de la cuota, permitiendo que al final del crédito se cuente con un dinero para invertir en su propio negocio. Si el cliente desea disponer de sus ahorros, lo puede hacer en cualquier momento ya que su ahorro está siempre a la vista.</li>
                </ul>
                <ul>
                    <li><span>🟠</span> Seguros Obligatorios:
                        <ul>
                            <li><span>•</span> Seguros Obligatorios</li>
                            <li><span>•</span> Seguros deudores</li>
                        </ul>
                    </li>
                    <li><span>🟠</span> El pago de la cuota se puede realizar en cualquiera de nuestros canales de servicio.</li>
                </ul>
            </div>

            <!-- Tab Content: Requisitos -->
            <div id="requisitos" class="gotahorro-tab-content">
                <ul>
                    <li><span>🟠</span> Fotocopia de la cédula de ciudadanía</li>
                    <li><span>🟠</span> Dos referencias comerciales, y/o personales, y una familiar</li>
                    <li><span>🟠</span> Facturas de compra del último año y servicios públicos al día</li>
                    <li><span>🟠</span> En caso de estar reportado negativamente en las centrales de riesgo, presentar Paz y Salvo de la obligación</li>
                    <li><span>🟠</span> Antigüedad mínima del negocio: 1 año</li>
                </ul>
            </div>

            <!-- Tab Content: Trámites -->
            <div id="tramites" class="gotahorro-tab-content">
                <button class="btn-tramites-apertura">Trámites de apertura <span class="arrow-icon">▶</span></button>
            </div>

            <!-- Tab Content: Solicitud de Crédito -->
            <div id="solicitud" class="gotahorro-tab-content">
                <div class="solicitud-form-grid">
                    <div class="solicitud-form-group">
                        <label for="antiguedad">Antigüedad*</label>
                        <select id="antiguedad">
                            <option value="">Cuanta antigüedad tienes</option>
                            <option value="menos-1">Menos de 1 año</option>
                            <option value="1-3">1-3 años</option>
                            <option value="mas-3">Más de 3 años</option>
                        </select>
                    </div>
                    <div class="solicitud-form-group">
                        <label for="nombresApellidos">Nombres y apellidos*</label>
                        <input type="text" id="nombresApellidos" placeholder="Escribe tus nombres y apellidos">
                    </div>
                    <div class="solicitud-form-group">
                        <label for="tipoIdentificacion">Tipo de identificación*</label>
                        <select id="tipoIdentificacion">
                            <option value="">Tipo de documento</option>
                            <option value="cc">Cédula de Ciudadanía</option>
                            <option value="ce">Cédula de Extranjería</option>
                            <option value="pasaporte">Pasaporte</option>
                        </select>
                    </div>
                    <div class="solicitud-form-group">
                        <label for="numeroIdentificacion">Número de identificación*</label>
                        <input type="text" id="numeroIdentificacion" placeholder="Escribe tu número de identificación">
                    </div>
                    <div class="solicitud-form-group">
                        <label for="celular">Celular*</label>
                        <input type="text" id="celular" placeholder="Escribe tu celular">
                    </div>
                    <div class="solicitud-form-group">
                        <label for="fijo">Fijo*</label>
                        <input type="text" id="fijo" placeholder="Escribe tu fijo">
                    </div>
                    <div class="solicitud-form-group">
                        <label for="departamento">Departamento*</label>
                        <select id="departamento">
                            <option value="">Selecciona tu departamento</option>
                            <!-- Add more options as needed -->
                            <option value="antioquia">Antioquia</option>
                            <option value="cundinamarca">Cundinamarca</option>
                        </select>
                    </div>
                    <div class="solicitud-form-group">
                        <label for="ciudad">Ciudad*</label>
                        <select id="ciudad">
                            <option value="">Selecciona tu ciudad</option>
                            <!-- Add more options as needed -->
                            <option value="medellin">Medellín</option>
                            <option value="bogota">Bogotá</option>
                        </select>
                    </div>
                    <div class="solicitud-form-group">
                        <label for="barrio">Barrio*</label>
                        <input type="text" id="barrio" placeholder="Escribe tu barrio">
                    </div>
                    <div class="solicitud-form-group">
                        <label for="cuantoDinero">¿Cuánto dinero necesitas?*</label>
                        <input type="text" id="cuantoDinero" placeholder="Escribe el valor">
                    </div>
                    <div class="solicitud-form-group">
                        <label for="cedulaQuienRefiere">Cédula de quien refiere</label>
                        <input type="text" id="cedulaQuienRefiere" placeholder="Escribe el número de identificación de tu referido">
                    </div>
                    <div class="solicitud-form-group">
                        <label for="nombreQuienRefiereForm">Nombre de quien refiere</label>
                        <input type="text" id="nombreQuienRefiereForm" placeholder="Escribe quien refiere">
                    </div>
                </div>
                <div class="solicitud-checkbox-group">
                    <label>
                        <input type="checkbox">
                        Declaro que actuando en nombre propio, como titular de la información y siendo la persona que esta diligenciando este formulario, autorizo libre, expresa e inequívocamente al Banco W para ser contactado (a) mediante visita, llamada telefónica, mensaje de texto, mensaje de datos, correo electrónico, cualquier red social de integración o mensajería instantánea y/u otra mensajería.
                    </label>
                    <label>
                        <input type="checkbox">
                        Para conocer la autorización de tratamiento de datos da <a href="#">Clic aquí</a>
                    </label>
                    <label>
                        <input type="checkbox">
                        Autorizo expresamente al Banco W, para que de Conformidad con lo establecido en la Ley Estatutaria 1266 de 2008 Habeas Data o cualquiera que la sustituya, modifique o complemente, informe reporte, procese, solicite, consulte, suministre y divulgue a las entidades públicas o privadas que administren o manejen bases de datos de información pública y/o semi privada de carácter financiero y crediticio de actividad comercial o de servicios; el nacimiento, modificación, comportamiento, hábitos de pago y extinción de obligaciones contraídas, así como de las prórrogas y/o reestructuraciones que sobre las mismas llegaré a contraer con el Banco W.
                    </label>
                </div>
                <button class="btn-send-solicitud">Enviar</button>
            </div>
        </section>

        <!-- Bottom Info Section -->
        <section class="info-section-bottom">
            <h2>Para mayor información</h2>
            <div class="info-buttons-container">
                <a href="#" class="info-button">TASAS Y TARIFAS VIGENTES</a>
                <a href="#" class="info-button">Contratos y reglamentos de productos</a>
                <a href="#" class="info-button">Simulador VTU</a>
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
        // Function to handle Gotahorro tabs
        function openGotahorroTab(evt, tabName) {
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("gotahorro-tab-content");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }
            tablinks = document.getElementsByClassName("gotahorro-tab-button");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].className = tablinks[i].className.replace(" active", "");
            }
            document.getElementById(tabName).style.display = "block";
            evt.currentTarget.className += " active";
        }

        // Show the first tab by default on page load
        document.addEventListener('DOMContentLoaded', (event) => {
            document.querySelector('.gotahorro-tab-button').click();
        });
    </script>
    <script src="js/main.js"></script>
</body>
</html>
