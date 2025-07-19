<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Seguros - Banco W</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tarjeta_style.css">
    <style>
        /* Estilos generales para el main (se adaptan los colores para Seguros) */
        .hero-productos-ahorro { /* Se reutiliza la misma clase general de hero */
            display: flex;
            align-items: center;
            justify-content: center;
            /* Degradado específico para Seguros: de turquesa a un azul claro/blanco */
            background: linear-gradient(to right, #00BCD4, #E0F7FA); /* Ejemplo: Turquesa a Azul muy claro */
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
            justify-content: center; /* Centra la imagen en su espacio para esta página */
            min-width: 300px;
            /* No margen negativo para esta imagen, parece más centrada */
        }

        .hero-image-overlay img {
            max-width: 100%;
            height: auto;
            display: block;
            position: relative;
            padding-top: 20px;
        }

        .hero-text {
            flex: 1;
            color: #333; /* Color de texto más oscuro para contrastar con fondo claro */
            text-align: left; /* Alinea el texto a la izquierda */
            padding-left: 20px;
            min-width: 400px;
        }

        .hero-text h1 {
            font-size: 40px;
            margin-bottom: 15px;
            color: #333;
        }

        .hero-text p {
            font-size: 18px;
            line-height: 1.6;
            color: #555;
            margin-bottom: 30px; /* Espacio antes del botón */
        }

        .hero-text .btn-hero-action { /* Nuevo estilo para el botón de acción en el hero */
            background-color: white;
            color: #00BCD4; /* Color del turquesa del hero */
            border: 2px solid #00BCD4; /* Borde para el botón */
            padding: 15px 30px;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .hero-text .btn-hero-action:hover {
            background-color: #00BCD4;
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
            color: #00BCD4; /* Color de texto que coincida con el turquesa del degradado */
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
            background-color: #00BCD4; /* Turquesa para el botón activo */
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

        /* Sección de Grid de Productos/Seguros */
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
            text-align: left; /* Alinea texto a la izquierda como en las imágenes */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            width: 280px; /* Mantiene el tamaño fijo */
            max-width: 100%;
        }

        .product-card ul {
            list-style: none;
            padding: 0;
            margin: 10px 0;
        }

        .product-card ul li {
            margin-bottom: 5px;
            font-size: 14px;
            color: #555;
        }

        .product-card ul li:before {
            content: "• ";
            color: #00BCD4; /* Color de la viñeta para Seguros */
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
            text-align: left;
        }

        .product-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
            flex-grow: 1;
            text-align: left;
        }

        .product-card-image {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .product-card .btn-conoce-mas {
            background-color: #00BCD4; /* Color de los botones de tarjetas para Seguros */
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
            background-color: #0097A7; /* Tono más oscuro al pasar el mouse */
        }

        /* Responsive adjustments (ya definidos) */
        @media (max-width: 768px) {
            .hero-productos-ahorro-content {
                flex-direction: column;
                text-align: center;
            }

            .hero-image-overlay {
                justify-content: center;
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
                text-align: center;
            }

            .product-card h3,
            .product-card p,
            .product-card ul li {
                text-align: center;
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
                        <li><a href="${pageContext.request.contextPath}/proysrv/giros-internacionales.jsp">Giros internacionales</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/proysrv/seguros.jsp">Seguros</a></li> </ul>
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
                    <img src="${pageContext.request.contextPath}/images/insurances.png" alt="Hombre feliz con celular">
                </div>
                <div class="hero-text">
                    <h1>Seguros</h1>
                    <p>Protege lo que más importa con los Seguros W. Asegura tu tranquilidad y la de tu familia, tenemos diferentes opciones de cobertura que se ajustan a tu necesidad. ¡Descubre cómo proteger tu futuro hoy!</p>
                    <a href="#" class="btn-hero-action">Preguntas frecuentes</a> </div>
            </div>
            <div class="hero-buttons-container">
                <button class="hero-button active" data-filter="todos">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><polygon points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2"></polygon></svg>
                    Todos
                </button>
                <button class="hero-button" data-filter="voluntarios">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><path d="M22 12h-4l-3 9L9 3l-4 9H2"></path></svg>
                    Seguros voluntarios
                </button>
                <button class="hero-button" data-filter="deudores">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect><path d="M7 11V7a5 5 0 0 1 10 0v4"></path></svg>
                    Seguros deudores
                </button>
                <button class="hero-button" data-filter="rapidas">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="tab-icon"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                    Acciones rápidas
                </button>
            </div>
        </section>

        <section class="products-grid-section">
            <div class="products-grid">
                <div class="product-card" data-category="todos">
                    <img src="${pageContext.request.contextPath}/images/conoce_todos_seguros.jpg" alt="Mujer en laptop sonriendo" class="product-card-image">
                    <h3>Conoce todos nuestros Seguros</h3>
                    <p>Asegúrate, hazlo bien por ti y tu familia.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="voluntarios">
                    <img src="${pageContext.request.contextPath}/images/gotahorro-te-cuida.png" alt="Mujer con estetoscopio" class="product-card-image">
                    <h3>Gotahorro Te Cuida</h3>
                    <p>Porque tu tranquilidad es lo más importante para nosotros, te ofrecemos nuestro Seguro Gotahorro que garantiza el reintegro de...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="voluntarios">
                    <img src="${pageContext.request.contextPath}/images/soy_vida.png" alt="Mujer joven sonriendo al aire libre" class="product-card-image">
                    <h3>"Soy vida"</h3>
                    <p>Porque tu tranquilidad y la de tu familia es lo más importante, te ofrecemos nuestro seguro de vida voluntario, que garantiza el pago de...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="voluntarios">
                    <img src="${pageContext.request.contextPath}/images/soy_patrimonio_seguro.png" alt="Mujer trabajando en laptop" class="product-card-image">
                    <h3>"Soy patrimonio seguro"</h3>
                    <p>Disfruta de una vivienda y negocio sin preocupaciones con nuestro seguro de hogar que protege tu inmueble y tu contenido.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="voluntarios">
                    <img src="${pageContext.request.contextPath}/images/soy_proteccion_familiar.png" alt="Familia feliz" class="product-card-image">
                    <h3>"Soy protección familiar"</h3>
                    <p>Nuestro seguro de accidentes personales te garantiza la protección y la protección económica de tu familia, cónyuge e hijos.</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="voluntarios">
                    <img src="${pageContext.request.contextPath}/images/soy_prevencion_exequial.png" alt="Grupo de personas" class="product-card-image">
                    <h3>"Soy prevención exequial"</h3>
                    <p>Con nuestro producto Exequial podrás contar con los servicios y el acompañamiento necesario para atender de una mejor manera...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="voluntarios">
                    <img src="${pageContext.request.contextPath}/images/soy_prevenido.png" alt="Niña jugando al aire libre" class="product-card-image">
                    <h3>Soy prevenido</h3>
                    <p>Porque tu tranquilidad es lo más importante para nosotros, te ofrecemos nuestro Seguro Soy Prevenido que garantiza el reintegro de...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="voluntarios">
                    <img src="${pageContext.request.contextPath}/images/soy_microempresa_protegida.png" alt="Hombre de negocios trabajando" class="product-card-image">
                    <h3>Soy Microempresa Protegida</h3>
                    <p>Tu tranquilidad nos importa, por eso te ofrecemos nuestro Seguro Voluntario Soy Microempresa Protegida que te protege...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="deudores">
                    <img src="${pageContext.request.contextPath}/images/seguro_vida_deudores_libranza.png" alt="Familia caminando" class="product-card-image">
                    <h3>Seguro de vida deudores libranza</h3>
                    <p>Con el seguro de vida deudor que obtienes al adquirir tu crédito libranza, cuentas con una cobertura frente a riesgos de muerte por...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="deudores">
                    <img src="${pageContext.request.contextPath}/images/poliza_incendio_terremoto.png" alt="Personas mirando planos de casa" class="product-card-image">
                    <h3>Póliza incendio y terremoto créditos asociados a garantía hipotecaria</h3>
                    <p>Te ampara frente a las pérdidas, daños materiales y económicos que puedan sufrir los inmuebles entregados como garantía...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="deudores">
                    <img src="${pageContext.request.contextPath}/images/seguro_vida_deudor_hipoteca.png" alt="Hombre con papeles" class="product-card-image">
                    <h3>Seguro de vida deudor de garantía hipotecaria</h3>
                    <p>Te ampara frente a los riesgos de muerte por cualquier causa o incapacidad total y permanente durante la vigencia del crédito...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="deudores">
                    <img src="${pageContext.request.contextPath}/images/seguro_vida_deudor.png" alt="Amigos abrazándose" class="product-card-image">
                    <h3>Seguro de vida deudor</h3>
                    <p>Con el seguro de vida deudor que obtienes al adquirir tu crédito, cuentas con una cobertura frente a riesgos de muerte por cualquier...</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="rapidas">
                    <img src="${pageContext.request.contextPath}/images/voy_seguro.png" alt="Mujer conduciendo feliz" class="product-card-image">
                    <h3>Voy seguro</h3>
                    <p>La experiencia de vivir se disfruta cuando aseguras lo que quieres. (Sus condiciones aplican si lo adquiriste antes del 01 de Octubre del 2019)</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="rapidas">
                    <img src="${pageContext.request.contextPath}/images/voy_seguro_familia.png" alt="Mujeres riendo" class="product-card-image">
                    <h3>Voy seguro familia</h3>
                    <p>Asegura la vida, la de tu cónyuge e hijos con este seguro. (Sus condiciones aplican si lo adquiriste antes del 01 de Octubre del 2019)</p>
                    <a href="#" class="btn-conoce-mas">Conoce más</a>
                </div>

                <div class="product-card" data-category="rapidas">
                    <img src="${pageContext.request.contextPath}/images/voy_seguro_hogar.png" alt="Casa pintada de colores" class="product-card-image">
                    <h3>Voy seguro hogar</h3>
                    <p>Tienes la oportunidad de proteger voluntariamente tu hogar, tu negocio. (Sus condiciones aplican si lo adquiriste antes del 01 de Octubre del 2019)</p>
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

        // Script para la sección Hero de Seguros (filtrado de tarjetas)
        document.addEventListener('DOMContentLoaded', () => {
            const heroButtons = document.querySelectorAll('.hero-button');
            const productCards = document.querySelectorAll('.product-card');

            const filterProducts = (category) => {
                productCards.forEach(card => {
                    const cardCategory = card.dataset.category;
                    if (category === 'todos' || cardCategory === category) {
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