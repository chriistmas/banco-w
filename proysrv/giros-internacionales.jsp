<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Giros Internacionales - Banco W</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tarjeta_style.css">
    <style>
        /* Estilos generales ya definidos en iteraciones anteriores para el main */
        /* Hero Section para Productos de Ahorro/Giros Internacionales */
        .hero-productos-ahorro { /* Se reutiliza la misma clase general de hero */
            display: flex;
            align-items: center;
            justify-content: center;
            /* Degradado de la imagen de Giros Internacionales */
            background: linear-gradient(to right, #8a2be2, #FFFFFF); /* Naranja a Púrpura */
            padding: 80px 20px;
            position: relative;
            overflow: hidden;
            min-height: 450px;
            padding-bottom: 100px; /* Suficiente espacio para los botones flotantes */
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
            justify-content: flex-start; /* Alinea la imagen a la izquierda para esta página */
            min-width: 300px;
            padding-left: 20px; /* Ajuste para la imagen */
        }

        .hero-image-overlay img {
            max-width: 100%;
            height: auto;
            display: block;
            position: relative;
            margin-left: -50px; /* Desplaza la imagen un poco a la izquierda si es necesario */
            padding-top: 20px;
        }

        .hero-text {
            flex: 1;
            color: white;
            text-align: left; /* Alinea el texto a la izquierda para esta página */
            padding-left: 20px; /* Ajuste para el texto */
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
            z-index: 10; /* Z-index alto para que esté encima */
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
            min-width: 120px; /* Ancho mínimo para cada botón */
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

        /* Sección de Grid de Productos/Giros */
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

        .product-card { /* Esta clase ahora aplica a giros también */
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center; /* Puede cambiar si el contenido de la tarjeta lo requiere */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            width: 280px; /* Mantiene el tamaño fijo */
            max-width: 100%;
            text-align: left; /* Alinear texto a la izquierda como en las imágenes de giros */
        }

        /* Estilos específicos para las tarjetas de Giros si el layout es diferente */
        .product-card ul {
            list-style: none; /* Quitar viñetas por defecto */
            padding: 0;
            margin: 10px 0;
        }

        .product-card ul li {
            margin-bottom: 5px;
            font-size: 14px;
            color: #555;
        }

        .product-card ul li:before {
            content: "• "; /* Añadir una viñeta personalizada si se desea */
            color: #8a2be2; /* Color de la viñeta */
            font-weight: bold;
            display: inline-block;
            width: 1em;
            margin-left: -1em;
        }

        .product-card h3 {
            margin-top: 0;
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
            text-align: left; /* Títulos a la izquierda */
        }

        .product-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
            flex-grow: 1;
            text-align: left; /* Párrafos a la izquierda */
        }

        .product-card-image {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
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

        /* Responsive adjustments (ya definidos) */
        @media (max-width: 768px) {
            .hero-productos-ahorro-content {
                flex-direction: column;
                text-align: center;
            }

            .hero-image-overlay {
                justify-content: center;
                margin-left: 0;
                padding-left: 0;
            }

            .hero-image-overlay img {
                max-width: 80%;
                margin-bottom: 20px;
            }

            .hero-text {
                text-align: center;
                padding-left: 0;
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

            .product-card {
                text-align: center; /* Alinea el texto en el centro para móviles */
            }

            .product-card h3,
            .product-card p,
            .product-card ul li {
                text-align: center; /* Alinea el texto de las tarjetas en el centro para móviles */
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
                        <li><a href="${pageContext.request.contextPath}/proysrv/ahorro-inversion.jsp">Productos de ahorro e inversión</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/proysrv/giros-internacionales.jsp">Giros internacionales</a></li> 
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
        <section class="hero-productos-ahorro"> <div class="hero-productos-ahorro-content">
                <div class="hero-image-overlay">
                    <img src="${pageContext.request.contextPath}/images/wire-transfers.png" alt="Mujer joven sonriendo con celular">
                </div>
                <div class="hero-text">
                    <h1>Giros Internacionales</h1>
                    <p>Recibe tu dinero desde cualquier parte del mundo. La distancia no existe cuando nos une el amor.</p>
                </div>
            </div>
            <div class="hero-buttons-container">
                <button class="hero-button active" data-filter="todos">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
                    Todos
                </button>
                <button class="hero-button" data-filter="recibir">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><path d="M4 12v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-8"></path><polyline points="16 6 12 2 8 6"></polyline><line x1="12" y1="2" x2="12" y2="15"></line></svg>
                    Recibir Giros
                </button>
                <button class="hero-button" data-filter="enviar">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><path d="M22 2L11 13"></path><path d="M22 2l-7 20-4-9-9-4 20-7z"></path></svg>
                    Enviar Giros
                </button>
            </div>
        </section>

        <section class="products-grid-section">
            <div class="products-grid">
                <div class="product-card" data-category="recibir">
                    <img src="${pageContext.request.contextPath}/images/wire-transfers-card-1.png" alt="Anciano recibiendo ayuda" class="product-card-image">
                    <h3>Recibe giros</h3>
                    <p>En cuenta bancaria o en billetera digital / en efectivo</p>
                    <ul>
                        <li>Persona Natural</li>
                    </ul>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="enviar">
                    <img src="${pageContext.request.contextPath}/images/envia-giros.png" alt="Manos entregando dinero" class="product-card-image">
                    <h3>Envía giros</h3>
                    <p>Acércate a nuestras oficinas del Banco W</p>
                    <ul>
                        <li>Persona Natural</li>
                    </ul>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="enviar">
                    <img src="${pageContext.request.contextPath}/images/pagos-internacionales.png" alt="Hombre con celular haciendo pago" class="product-card-image">
                    <h3>Pagos internacionales</h3>
                    <p>Seas profesionales</p>
                    <ul>
                        <li>Persona Natural</li>
                        <li>Persona Jurídica</li>
                    </ul>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="enviar">
                    <img src="${pageContext.request.contextPath}/images/exportaciones.png" alt="Mujer trabajando en laptop con mapa mundial" class="product-card-image">
                    <h3>Exportaciones</h3>
                    <p>Pymes no tradicionales</p>
                    <ul>
                        <li>Persona Jurídica</li>
                    </ul>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="todos"> 
                    <img src="${pageContext.request.contextPath}/images/Image (1).jpg" alt="Guía o Instructivo" class="product-card-image">
                    <h3>Guías o Instructivos</h3>
                    <p>¿Tienes dudas o necesitas más información del servicio de Giros Internacionales? Descarga nuestros guías!</p>
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
        // Tus funciones JavaScript existentes (scrollCarousel y switchTab, si las mantienes)
        function scrollCarousel(direction) {
            const carousel = document.querySelector('.beneficios-carousel');
            if (carousel) { // Asegura que el carrusel exista en esta página
                const scrollAmount = 220;
                carousel.scrollBy({ left: scrollAmount * direction, behavior: 'smooth' });
            }
        }

        // Función switchTab para pestañas de contenido general (si aún la usas en otro lugar)
        function switchTab(evt, tabId) {
            document.querySelectorAll('.tab-content').forEach(tab => {
                tab.classList.remove('active');
            });
            document.querySelectorAll('.tab').forEach(button => {
                button.classList.remove('active');
            });
            document.getElementById(tabId).classList.add('active');
            evt.currentTarget.classList.add('active');
        }

        // Script para la sección Hero de Giros Internacionales (filtrado de tarjetas)
        document.addEventListener('DOMContentLoaded', () => {
            const heroButtons = document.querySelectorAll('.hero-button');
            const productCards = document.querySelectorAll('.product-card');

            const filterProducts = (category) => {
                productCards.forEach(card => {
                    const cardCategory = card.dataset.category;
                    if (category === 'todos' || cardCategory === category || (category === 'recibir' && cardCategory === 'recibir') || (category === 'enviar' && cardCategory === 'enviar')) {
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

            // Mostrar todos los productos al cargar la página
            filterProducts('todos');
        });

    </script>
</body>
</html>