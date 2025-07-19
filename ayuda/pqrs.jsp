<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>PQRS - Banco W</title>
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
            background-color: #f4f4f4; /* Body background */
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

        /* Main menu */
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

        /* Specific styles for PQRS page */
        .main-content-pqrs {
            background-color: white; /* Main content background is white */
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
        }

        /* Hero Section */
        .pqrs-hero {
            width: 100%;
            background-color: #ff8c00; /* Orange background from image */
            padding: 60px 20px;
            text-align: center;
            color: white;
            position: relative;
            overflow: hidden;
            min-height: 250px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .pqrs-hero h1 {
            font-size: 2.5em;
            margin-bottom: 15px;
        }

        .pqrs-hero p {
            font-size: 1.1em;
            max-width: 800px;
            margin: 0 auto;
        }

        /* Info Boxes Section */
        .pqrs-info-boxes {
            width: 100%;
            max-width: 1000px;
            margin-top: -50px; /* Overlap with hero section */
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
            justify-content: center;
            position: relative;
            z-index: 2; /* Ensure it's above other content */
            padding: 0 20px;
        }

        .info-box {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            padding: 25px;
            text-align: left;
            display: flex;
            align-items: flex-start;
            gap: 15px;
        }

        .info-box .icon-circle {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: #ff8c00; /* Orange circle */
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            font-weight: bold;
            flex-shrink: 0;
            font-size: 1.2em;
        }

        .info-box p {
            font-size: 0.95em;
            color: #555;
            margin: 0;
        }

        /* Download Button Section */
        .download-section {
            width: 100%;
            max-width: 1000px;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .btn-download {
            background-color: #ff6b35; /* Orange button */
            color: white;
            padding: 15px 40px;
            border: none;
            border-radius: 25px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            display: inline-block;
        }

        .btn-download:hover {
            background-color: #e55a2b;
        }

        /* PQRS Form Section */
        .pqrs-form-section {
            width: 100%;
            max-width: 1000px;
            padding: 40px 20px;
            background-color: white;
            text-align: left;
        }

        .pqrs-form-section h2 {
            font-size: 1.8em;
            color: #333;
            margin-bottom: 20px;
            text-align: center;
        }

        .pqrs-form-section p.form-description {
            font-size: 0.95em;
            color: #666;
            margin-bottom: 30px;
            text-align: center;
        }

        .pqrs-form-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            color: #333;
            font-size: 0.95em;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="tel"],
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
            background-color: #f8f8f8;
        }

        .form-group textarea {
            min-height: 100px;
            resize: vertical;
        }

        .form-group select {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23000000%22%20d%3D%22M287%2C197.3L159.3%2C69.6c-3.6-3.6-8.6-5.6-13.7-5.6s-10.1%2C2-13.7%2C5.6L5.4%2C197.3c-7.3%2C7.3-7.3%2C19.1%2C0%2C26.4c3.6%2C3.6%2C8.6%2C5.6%2C13.7%2C5.6s10.1%2C2%2C13.7%2C5.6L145.6%2C106.8l127.7%2C127.7c3.6%2C3.6%2C8.6%2C5.6%2C13.7%2C5.6s10.1%2C2%2C13.7%2C5.6c7.3-7.3%2C7.3-19.1%2C0-26.4L287%2C197.3z%22%2F%3E%3C%2Fsvg%3E');
            background-repeat: no-repeat;
            background-position: right 15px top 50%;
            background-size: 12px auto;
            cursor: pointer;
        }

        .checkbox-group {
            margin-top: 20px;
        }

        .checkbox-group label {
            display: flex;
            align-items: flex-start;
            font-size: 0.9em;
            color: #555;
            margin-bottom: 15px;
            line-height: 1.5;
        }

        .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
            margin-top: 4px; /* Adjust vertical alignment */
            flex-shrink: 0;
        }

        .checkbox-group a {
            color: #ff6b35;
            text-decoration: none;
            font-weight: bold;
        }

        .checkbox-group a:hover {
            text-decoration: underline;
        }

        .btn-send-pqrs {
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

        .btn-send-pqrs:hover {
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

            .pqrs-info-boxes {
                grid-template-columns: 1fr;
                margin-top: -30px;
            }

            .info-box {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .pqrs-form-grid {
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
                        <li><a href="${pageContext.request.contextPath}/nosotros/sala-prensa.jsp">Sala de prensa</a></li>
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

                <li class="dropdown active">
                    <a href="#">Canales de atención <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Canales presenciales</a></li>
                        <li><a href="#">Canales no presenciales</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/canales/pqrs.jsp">PQRS</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>

    <!-- START - Main Content -->
    <main class="main-content-pqrs">
        <section class="pqrs-hero">
            <h1>PQRS</h1>
            <p>Estamos aquí para escuchar, atender y resolver tus solicitudes, peticiones, quejas y reclamos rápidamente</p>
        </section>

        <section class="pqrs-info-boxes">
            <div class="info-box">
                <div class="icon-circle">i</div>
                <p>La respuesta a tu requerimiento será enviada en 15 días hábiles al correo electrónico registrado en el presente formulario.</p>
            </div>
            <div class="info-box">
                <div class="icon-circle">i</div>
                <p>Los casos que no correspondan a una petición, queja o sugerencia de un consumidor financiero, no serán tramitados, ni direccionados a través de este canal.</p>
            </div>
            <div class="info-box">
                <div class="icon-circle">i</div>
                <p>Si tu caso corresponde a reclamación relacionada con <b>TARJETA DE CRÉDITO</b>, debes descargar este formato, diligenciarlo y adjuntarlo en este formulario para que pueda ser gestionado y obtener una respuesta.</p>
            </div>
        </section>

        <section class="download-section">
            <a href="#" class="btn-download">Descarga el formato aquí</a>
        </section>

        <section class="pqrs-form-section">
            <h2>Formulario de Solicitud</h2>
            <p class="form-description">Para que tu manifestación sea atendida debes diligenciar todos los campos. Los campos marcados con (*) son obligatorios.</p>

            <form>
                <div class="pqrs-form-grid">
                    <div class="form-group">
                        <label for="tipoSolicitud">Cuéntanos cuál es el tipo de solicitud que deseas realizar*</label>
                        <select id="tipoSolicitud">
                            <option value="">Tipo de solicitud</option>
                            <option value="peticion">Petición</option>
                            <option value="queja">Queja</option>
                            <option value="reclamo">Reclamo</option>
                            <option value="sugerencia">Sugerencia</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nombreCompleto">Nombre completo*</label>
                        <input type="text" id="nombreCompleto" placeholder="Escribe tus nombres y apellidos">
                    </div>
                    <div class="form-group">
                        <label for="tipoDocumento">Tipo de documento*</label>
                        <select id="tipoDocumento">
                            <option value="">Tipo de documento</option>
                            <option value="cc">Cédula de Ciudadanía</option>
                            <option value="ce">Cédula de Extranjería</option>
                            <option value="pasaporte">Pasaporte</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="numeroDocumento">Número de documento*</label>
                        <input type="text" id="numeroDocumento" placeholder="Escribe tu número de identificación">
                    </div>
                    <div class="form-group">
                        <label for="tipoPersona">Tipo de persona*</label>
                        <select id="tipoPersona">
                            <option value="">Seleccione el tipo de persona</option>
                            <option value="natural">Natural</option>
                            <option value="juridica">Jurídica</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="sexo">Sexo</label>
                        <select id="sexo">
                            <option value="">Selecciona una opción</option>
                            <option value="masculino">Masculino</option>
                            <option value="femenino">Femenino</option>
                            <option value="otro">Otro</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="comunidadLGBTI">Comunidad LGBTI</label>
                        <select id="comunidadLGBTI">
                            <option value="">Selecciona una opción</option>
                            <option value="si">Sí</option>
                            <option value="no">No</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="condicionEspecial">Condición especial</label>
                        <select id="condicionEspecial">
                            <option value="">Selecciona una condición</option>
                            <option value="discapacidad">Discapacidad</option>
                            <option value="victima">Víctima del conflicto armado</option>
                            <option value="ninguna">Ninguna</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="pais">País*</label>
                        <select id="pais">
                            <option value="">Selecciona tu país</option>
                            <option value="colombia">Colombia</option>
                            <option value="otro">Otro</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="departamento">Departamento*</label>
                        <select id="departamento">
                            <option value="">Selecciona tu departamento</option>
                            <option value="antioquia">Antioquia</option>
                            <option value="cundinamarca">Cundinamarca</option>
                            <!-- Add more departments as needed -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="ciudad">Ciudad*</label>
                        <select id="ciudad">
                            <option value="">Selecciona tu ciudad</option>
                            <option value="medellin">Medellín</option>
                            <option value="bogota">Bogotá</option>
                            <!-- Add more cities as needed -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="direccion">Dirección*</label>
                        <input type="text" id="direccion" placeholder="Escribe tu dirección">
                    </div>
                    <div class="form-group">
                        <label for="email">Email*</label>
                        <input type="email" id="email" placeholder="Escribe tu email">
                    </div>
                    <div class="form-group">
                        <label for="telefonoFijo">Teléfono fijo</label>
                        <input type="tel" id="telefonoFijo" placeholder="Escribe tu teléfono fijo">
                    </div>
                    <div class="form-group">
                        <label for="telefonoCelular">Teléfono celular*</label>
                        <input type="tel" id="telefonoCelular" placeholder="Escribe tu teléfono celular">
                    </div>
                    <div class="form-group">
                        <label for="productoServicio">Producto o Servicio*</label>
                        <select id="productoServicio">
                            <option value="">Selecciona el producto o servicio</option>
                            <option value="credito">Crédito</option>
                            <option value="ahorro">Ahorro</option>
                            <option value="tarjeta">Tarjeta de Crédito</option>
                            <option value="seguro">Seguro</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="canalAtencion">Canal de atención*</label>
                        <select id="canalAtencion">
                            <option value="">Selecciona el canal de atención</option>
                            <option value="oficina">Oficina</option>
                            <option value="telefono">Teléfono</option>
                            <option value="web">Web</option>
                        </select>
                    </div>
                    <div class="form-group full-width">
                        <label for="descripcion">Descripción de la solicitud*</label>
                        <textarea id="descripcion" placeholder="Describe tu solicitud en detalle"></textarea>
                    </div>
                </div>

                <div class="checkbox-group">
                    <label>
                        <input type="checkbox" required>
                        Declaro que actuando en nombre propio, como titular de la información y siendo la persona que esta diligenciando este formulario, autorizo libre, expresa e inequívocamente al Banco W para ser contactado (a) mediante visita, llamada telefónica, mensaje de texto, mensaje de datos, correo electrónico, cualquier red social de integración o mensajería instantánea y/u otra mensajería, acepto de manera previa, expresa e informada la autorización de Tratamiento de Datos.
                    </label>
                    <label>
                        <input type="checkbox" required>
                        Para conocer la autorización de tratamiento de datos da <a href="#">Clic aquí</a>
                    </label>
                    <label>
                        <input type="checkbox" required>
                        Autorizo expresamente al Banco W, para que de Conformidad con lo establecido en la Ley Estatutaria 1266 de 2008 Habeas Data o cualquiera que la sustituya, modifique o complemente, informe reporte, procese, solicite, consulte, suministre y divulgue a las entidades públicas o privadas que administren o manejen bases de datos de información pública y/o semi privada de carácter financiero y crediticio de actividad comercial o de servicios; el nacimiento, modificación, comportamiento, hábitos de pago y extinción de obligaciones contraídas, así como de las prórrogas y/o reestructuraciones que sobre las mismas llegaré a contraer con el Banco W.
                    </label>
                </div>

                <button type="submit" class="btn-send-pqrs">Enviar</button>
            </form>
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
