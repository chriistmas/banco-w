<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tasas y Tarifas - Banco W</title>
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

        /* Specific styles for Tasas y Tarifas page */
        .main-content-tasas {
            background-color: white; /* Main content background is white */
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
        }

        /* Hero Section */
        .tasas-hero {
            width: 100%;
            background-color: #2596be; /* Blue background */
            padding: 60px 20px;
            text-align: center;
            color: white;
            position: relative;
            overflow: hidden;
        }

        .tasas-hero h1 {
            font-size: 2.5em;
            margin-bottom: 15px;
        }

        .tasas-hero p {
            font-size: 1.1em;
            max-width: 800px;
            margin: 0 auto 30px;
        }

        .tasas-hero select {
            width: 100%;
            max-width: 400px;
            padding: 12px 15px;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
            -webkit-appearance: none; /* Remove default arrow */
            -moz-appearance: none;
            appearance: none;
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23000000%22%20d%3D%22M287%2C197.3L159.3%2C69.6c-3.6-3.6-8.6-5.6-13.7-5.6s-10.1%2C2-13.7%2C5.6L5.4%2C197.3c-7.3%2C7.3-7.3%2C19.1%2C0%2C26.4c3.6%2C3.6%2C8.6%2C5.6%2C13.7%2C5.6s10.1%2C2%2C13.7%2C5.6L145.6%2C106.8l127.7%2C127.7c3.6%2C3.6%2C8.6%2C5.6%2C13.7%2C5.6s10.1%2C2%2C13.7%2C5.6c7.3-7.3%2C7.3-19.1%2C0-26.4L287%2C197.3z%22%2F%3E%3C%2Fsvg%3E'); /* Custom arrow */
            background-repeat: no-repeat;
            background-position: right 15px top 50%;
            background-size: 12px auto;
            cursor: pointer;
        }

        /* Products Grid Section */
        .products-grid-section {
            width: 100%;
            max-width: 1200px;
            padding: 40px 20px;
            background-color: white;
            margin-top: 20px; /* Space below hero section */
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            justify-content: center;
        }

        .product-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden; /* Ensures rounded corners apply to children */
            display: flex;
            flex-direction: column;
            justify-content: flex-start; /* Align content to the top */
            min-height: 250px; /* Ensure cards have a minimum height */
        }

        .product-card-top-section { /* Renamed from product-card-image-placeholder */
            width: 100%;
            height: 120px; /* Fixed height for the colored top part */
            background-color: #2596be; /* Blue background for the top */
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 0.9em;
            color: #666; /* Text color for placeholder, though no text here now */
            text-align: center;
        }

        .product-card-content { /* New class for the text content below the colored top */
            padding: 20px;
            text-align: center;
            flex-grow: 1; /* Allows content to take remaining space */
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Pushes paragraph down if needed */
        }

        .product-card-content h3 {
            margin-top: 0;
            font-size: 1.1em;
            color: #333;
            margin-bottom: 10px;
            font-weight: bold; /* Make title bold */
        }

        .product-card-content p {
            font-size: 0.9em;
            color: #666;
            margin-bottom: 0; /* Remove bottom margin if flex handles spacing */
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

            .tasas-hero {
                padding: 40px 20px;
            }

            .tasas-hero h1 {
                font-size: 2em;
            }

            .tasas-hero p {
                font-size: 1em;
            }

            .tasas-hero select {
                max-width: 100%;
            }

            .products-grid-section {
                padding: 20px;
            }

            .products-grid {
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
                <li class="dropdown active">
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

                <li class="dropdown active">
                    <a href="#">Atención al inversionista <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Documentación societaria</a></li>
                        <li><a href="#">Accionistas</a></li>
                        <li><a href="#">Junta directiva y alta gerencia</a></li>
                        <li><a href="#">Información relevante</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/inversionista/tasas-tarifas.jsp">Información financiera</a></li>
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
    <main class="main-content-tasas">
        <section class="tasas-hero">
            <h1>Tasas y Tarifas</h1>
            <p>Conoce las tasas y tarifas vigentes de los diferentes productos y servicios que tenemos en el Banco W, de acuerdo con las definiciones adoptadas por la Superintendencia Financiera de Colombia.</p>
            <select>
                <option value="">Selecciona</option>
                <option value="microcredito">Microcrédito</option>
                <option value="libranza">Libranza</option>
                <option value="cuentas-ahorro">Cuentas de ahorro y Depósito de bajo monto</option>
                <option value="cdt">CDT</option>
                <option value="banca-telefonica">Banca Telefónica</option>
                <option value="vehiculo-seguro">Vehículo y Seguro</option>
                <option value="credito-rotativo">Crédito Rotativo</option>
                <option value="fondo-nacional">Fondo Nacional de Garantías</option>
                <option value="micropyme">Micropyme-Tasa Fija y variable</option>
                <option value="convenios-recaudo">Convenios de recaudo</option>
                <option value="pagos-internacionales">Pagos Internacionales</option>
                <option value="tarjeta-credito">Tarjeta de Crédito</option>
                <option value="corresponsales">Corresponsales bancarios propios y en alianza</option>
                <option value="inmueble-productivo">Inmueble productivo</option>
                <option value="empresas-cobranza">Empresas de cobranza</option>
            </select>
        </section>

        <section class="products-grid-section">
            <div class="products-grid">
                <!-- Product Card 1: Microcrédito y Seguros -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Microcrédito y Seguros</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 2: Libranza -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Libranza</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 3: Cuentas de ahorro y Depósito de bajo monto -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Cuentas de ahorro y Depósito de bajo monto</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 4: CDT -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>CDT</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 5: Banca Telefónica -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Banca Telefónica</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 6: Vehículo y Seguro -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Vehículo y Seguro</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 7: Crédito Rotativo -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Crédito Rotativo</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 8: Fondo Nacional de Garantías -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Fondo Nacional de Garantías</h3>
                        <p>Conoce más información</p>
                    </div>
                </div>

                <!-- Product Card 9: Micropyme-Tasa Fija y variable -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Micropyme-Tasa Fija y variable</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 10: Convenios de recaudo -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Convenios de recaudo</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 11: Pagos Internacionales -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Pagos Internacionales</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 12: Tarjeta de Crédito -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Tarjeta de Crédito</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 13: Corresponsales bancarios propios y en alianza -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Corresponsales bancarios propios y en alianza</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 14: Inmueble productivo -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Inmueble productivo</h3>
                        <p>Tasas y tarifas vigentes</p>
                    </div>
                </div>

                <!-- Product Card 15: Empresas de cobranza -->
                <div class="product-card">
                    <div class="product-card-top-section"></div>
                    <div class="product-card-content">
                        <h3>Empresas de cobranza</h3>
                        <p>Tasas y tarifas vigentes</p>
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

    <script src="js/main.js"></script>
</body>
</html>
