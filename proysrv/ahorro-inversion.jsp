<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Productos de Ahorro e Inversión - Banco W</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tarjeta_style.css">
    <style>
        .hero-productos-ahorro {
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(to right, #ff8c00, #8a2be2);
            padding: 80px 20px;
            position: relative;
            overflow: hidden;
            min-height: 450px;
            padding-bottom: 100px;
        }

        .hero-productos-ahorro-content {
            display: flex;
            align-items: center;
            justify-content: space-around;
            max-width: 1200px;
            width: 100%;
            position: relative;
            z-index: 1;
            flex-wrap: wrap;
        }

        .hero-image-overlay {
            flex: 1;
            display: flex;
            justify-content: flex-end;
            min-width: 300px;
        }

        .hero-image-overlay img {
            max-width: 100%;
            height: auto;
            display: block;
            position: relative;
            margin-right: -50px;
            padding-top: 20px;
        }

        .hero-text {
            flex: 1;
            color: white;
            text-align: right;
            padding-right: 20px;
            min-width: 400px;
        }

        .hero-text h1 {
            font-size: 40px;
            margin-bottom: 15px;
            color: white;
        }

        .hero-text p {
            font-size: 18px;
            line-height: 1.6;
            color: white;
        }

        .hero-buttons-container {
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            display: flex;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 10px;
            z-index: 10;
            flex-wrap: nowrap;
            align-items: stretch;
        }

        .hero-button {
            background-color: transparent;
            border: none;
            padding: 15px 30px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            color: #8a2be2;
            border-radius: 8px;
            transition: background-color 0.3s ease, color 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 5px;
            min-width: 120px;
            justify-content: center;
        }

        .hero-button.active {
            background-color: #8a2be2;
            color: white;
        }

        .hero-button:hover:not(.active) {
            background-color: #f0f0f0;
        }

        .hero-button .tab-icon {
            width: 24px; 
            height: 24px;
            color: currentColor;
        }

        .products-grid-section {
            padding: 80px 20px 40px;
            background-color: #f9f9f9;
        }

        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            max-width: 1200px;
            margin: 0 auto;
            padding-top: 50px;
            justify-items: center;
            justify-content: center;
        }

        .product-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            width: 280px;
            max-width: 100%;
        }

        .product-card-image {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .product-card h3 {
            margin-top: 0;
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .product-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
            flex-grow: 1;
        }

        .product-card .btn-conoce-mas {
            background-color: #8a2be2;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: auto;
        }

        .product-card .btn-conoce-mas:hover {
            background-color: #6a0dad;
        }

        @media (max-width: 768px) {
            .hero-productos-ahorro-content {
                flex-direction: column;
                text-align: center;
            }

            .hero-image-overlay {
                justify-content: center;
                margin-right: 0;
            }

            .hero-image-overlay img {
                max-width: 80%;
                margin-bottom: 20px;
            }

            .hero-text {
                text-align: center;
                padding-right: 0;
            }

            .hero-text h1 {
                font-size: 32px;
            }

            .hero-text p {
                font-size: 16px;
            }

            .hero-buttons-container {
                position: static;
                transform: none;
                margin-top: 40px;
                flex-wrap: wrap;
                justify-content: center;
            }

            .hero-button {
                flex: 1 1 100%;
                margin: 5px 0;
            }

            .products-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

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
                <li class="dropdown active"> <a href="#">Productos y servicios <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/proysrv/creditos.jsp">Créditos</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/tarjeta_credito.jsp">Tarjeta de crédito</a></li>
                        <li class="active"><a href="#">Productos de ahorro e inversión</a></li> 
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

<main>
        <section class="hero-productos-ahorro">
            <div class="hero-productos-ahorro-content">
                <div class="hero-image-overlay">
                    <img src="${pageContext.request.contextPath}/images/savings.png" alt="Mujer joven sonriendo con una alcancía">
                </div>
                <div class="hero-text">
                    <h1>Productos de ahorro e inversion</h1>
                    <p>Para ti que eres una persona que encuentra en el ahorro una forma de cumplir tus sueños, tenemos la rentabilidad y la seguridad que necesitas para que puedas lograrla.</p>
                </div>
            </div>
            <div class="hero-buttons-container">
                <button class="hero-button active" data-filter="todos">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
                    Todos
                </button>
                <button class="hero-button" data-filter="ahorro">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect><path d="M16 21V5a2 2 0 0 0-2-2H6a2 2 0 0 0-2 2v16"></path></svg>
                    Ahorro
                </button>
                <button class="hero-button" data-filter="inversion">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><polyline points="22 12 16 12 14 15 10 15 8 12 2 12"></polyline><path d="M5.45 5.11L2 12v6a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2v-6l-3.45-6.89A2 2 0 0 0 16.76 4H7.24a2 2 0 0 0-1.79 1.11z"></path></svg>
                    Inversión
                </button>
            </div>
        </section>

        <section class="products-grid-section">
            <div class="products-grid">
                <div class="product-card" data-category="ahorro">
                    <img src="${pageContext.request.contextPath}/images/savings-card-1.png" alt="Alcancía en manos" class="product-card-image">
                    <h3>Cuenta de ahorro</h3>
                    <p>Ahorra fácil y seguro para que cumplas tus propósitos y tus proyectos personales como familiares.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="ahorro">
                    <img src="${pageContext.request.contextPath}/images/savings-card-2.png" alt="Celular y alcancía digital" class="product-card-image">
                    <h3>Depósito de bajo monto</h3>
                    <p>Sin salir de casa puedes abrir tu cuenta, solo necesitas tu documento de identidad y en pocos minutos.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="inversion">
                    <img src="${pageContext.request.contextPath}/images/savings-card-3.png" alt="Hombre trabajando en laptop" class="product-card-image">
                    <h3>CDT</h3>
                    <p>Haz tu inversión de manera segura a través de nuestros CDT's.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="ahorro">
                    <img src="${pageContext.request.contextPath}/images/savings-card-4.png" alt="Mujer con café trabajando" class="product-card-image">
                    <h3>Ahorranza</h3>
                    <p>Ahorros a las empresas para que sus empleados puedan empezar a ahorrar su salario.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="ahorro">
                    <img src="${pageContext.request.contextPath}/images/savings-card-5.png" alt="Alcancía con monedas" class="product-card-image">
                    <h3>Cuenta de ahorro programado</h3>
                    <p>Ahorros a las empresas para que sus empleados puedan empezar a ahorrar su salario.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>
            </div>
        </section>
    </main>

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
            const heroButtons = document.querySelectorAll('.hero-button');
            const productCards = document.querySelectorAll('.product-card');

            const filterProducts = (category) => {
                productCards.forEach(card => {
                    if (category === 'todos' || card.dataset.category === category) {
                        card.style.display = 'block';
                    } else {
                        card.style.display = 'none';
                    }
                });
            };

            heroButtons.forEach(button => {
                button.addEventListener('click', () => {
                    heroButtons.forEach(btn => btn.classList.remove('active'));
                    button.classList.add('active');
                    const filterValue = button.dataset.filter;
                    filterProducts(filterValue);
                });
            });
            filterProducts('todos');
        });

    </script>
</body>
</html>