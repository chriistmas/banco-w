<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Accionistas - Banco W</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        .accionistas-section {
            padding: 4rem 2rem;
            max-width: 1000px;
            margin: 0 auto;
        }
        .accionistas-section h2 {
            font-size: 2.5rem;
            color: #ff6b35;
            text-align: center;
            margin-bottom: 2rem;
        }
        .accionista-card {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            padding: 1.5rem 2rem;
            margin-bottom: 1.5rem;
            display: flex;
            flex-direction: column;
        }
        .accionista-card h3 {
            color: #333;
            margin-bottom: 0.5rem;
        }
        .accionista-card p {
            color: #555;
            font-size: 0.95rem;
        }
        .back-button {
            display: block;
            text-align: center;
            margin: 3rem auto 2rem;
        }
        .back-button a {
            background-color: #ff6b35;
            color: white;
            padding: 1rem 2rem;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
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
            <li><a href="${pageContext.request.contextPath}/inversionista/documentacion.jsp">Documentación societaria</a></li>
            <li><a href="${pageContext.request.contextPath}/inversionista/accionistas.jsp">Accionistas</a></li>
            <li><a href="${pageContext.request.contextPath}/inversionista/junta.jsp">Junta directiva y alta gerencia</a></li>
            <li><a href="${pageContext.request.contextPath}/inversionista/relevante.jsp">Información relevante</a></li>
            <li><a href="${pageContext.request.contextPath}/inversionista/financiera.jsp">Información financiera</a></li>
            <li><a href="${pageContext.request.contextPath}/inversionista/gobierno.jsp">Documentación de gobierno corporativo</a></li>
            </ul>
        </li>

        <li class="dropdown">
            <a href="#">Canales de atención <span class="dropdown-arrow">▼</span></a>
            <ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/canales/presenciales.jsp">Canales presenciales</a></li>
            <li><a href="${pageContext.request.contextPath}/canales/nopresenciales.jsp">Canales no presenciales</a></li>
            </ul>
        </li>
            </ul>
        </nav>
    </header>

    
<div class="main-content">
    <section class="hero">
        <div class="hero-content">
            <div class="hero-text">
                <h1>Accionistas</h1>
                <p>Estos son los principales accionistas que respaldan el crecimiento del Banco W.</p>
            </div>
            <div class="hero-image">
                <img src="img/accionistas.png" class="hero-img" alt="Accionistas">
            </div>
        </div>
    </section>

    <section class="accionistas-section">
        <h2>Listado de Accionistas</h2>

        <div class="accionista-card">
            <h3>María López</h3>
            <p><strong>Sector:</strong> Tecnología Financiera</p>
        </div>

        <div class="accionista-card">
            <h3>Carlos Pérez</h3>
            <p><strong>Sector:</strong> Energía e Infraestructura</p>
        </div>

        <div class="accionista-card">
            <h3>Grupo Inversor Andino S.A.</h3>
            <p><strong>Sector:</strong> Banca e Inversiones</p>
        </div>

        <div class="accionista-card">
            <h3>Patricia Torres</h3>
            <p><strong>Sector:</strong> Telecomunicaciones</p>
        </div>

        <div class="accionista-card">
            <h3>Inversiones del Pacífico</h3>
            <p><strong>Sector:</strong> Bienes raíces y desarrollo urbano</p>
        </div>

    </section>
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
</div>
</body>
</html>
