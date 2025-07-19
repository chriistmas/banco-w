<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Tarjeta de Crédito - Banco W</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/tarjeta_style.css">
</head>
<body>

    <!-- Header -->
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
                <li class="dropdown">
                    <a href="#">Productos y servicios <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/proysrv/creditos.jsp">Créditos</a></li>
                        <li class="active"><a href="${pageContext.request.contextPath}/proysrv/tarjeta_credito.jsp">Tarjeta de crédito</a></li>
                        <li><a href="${pageContext.request.contextPath}/proysrv/ahorro-inversion.jsp">Productos de ahorro e inversión</a></li>
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

    <!-- CONTENIDO PRINCIPAL -->
    <main class="tarjeta-main">
        <section class="tarjeta-hero">
            <div class="hero-left">
                <img src="${pageContext.request.contextPath}/images/personas_tarjeta.png" alt="Personas con tarjeta">
            </div>
            <div class="hero-right">
                <h1>Tarjeta de Crédito Banco W</h1>
                <p>Lleva un sí en tu bolsillo para lo que necesites</p>
                <p><strong>Este es un producto exclusivo para nuestros clientes de microcrédito</strong> en el Banco W</p>
            </div>
        </section>

        <div class="tabs">
            <button class="tab active" onclick="switchTab(event, 'beneficios')">Beneficios</button>
            <button class="tab" onclick="switchTab(event, 'caracteristicas')">Características</button>
            <button class="tab" onclick="switchTab(event, 'seguridad')">Recomendaciones de Seguridad</button>
            <button class="tab" onclick="switchTab(event, 'tips')">Tips de Uso</button>
        </div>

        <div class="tab-content active" id="beneficios">
            <div style="text-align: center; margin-bottom: 10px;">
                <button onclick="scrollCarousel(-1)">◀</button>
                <button onclick="scrollCarousel(1)">▶</button>
            </div>
            <div class="beneficios-carousel">
                <div class="beneficio">
                    <img src="../images/slider-1.png" alt="Win">
                </div>
                <div class="beneficio">
                    <img src="../images/slider-2.png" alt="Exito.com">
                </div>
                <div class="beneficio">
                    <img src="../images/slider-3.png" alt="TV y más">
                </div>
                <div class="beneficio">
                    <img src="../images/slider-4.png" alt="Tostao">
                </div>
                <div class="beneficio">
                    <img src="../images/slider-5.png" alt="Farmatodo">
                </div>
                <div class="beneficio">
                    <img src="../images/slider-6.png" alt="Carulla">
                </div>
                <div class="beneficio">
                    <img src="../images/slider-7.png" alt="MercadO Libre">
                </div>
                <div class="beneficio">
                    <img src="../images/slider-8.png" alt="Cabify">
                </div>
                
            </div>
            <small>*Aplican términos y condiciones</small>
            <ul class="lista-caracteristicas">
                <li>Disponibilidad de avance de dinero en efectivo 24/7 a nivel nacional e internacional</li>
                <li>Todas las compras a una sola cuota no generan intereses</li>
                <li>Beneficios exclusivos de Mastercard: Global Service y Protección de compras</li>
                <li>Pagos en oficina se aplican en línea al instante</li>
                <li>Seguro de vida deudor con beneficios adicionales</li>
            </ul>
        </div>

        
        <div class="tab-content" id="caracteristicas">
            <ul class="lista-caracteristicas">
                <li>Tu tarjeta cuenta con un seguro de vida deudor que ampara: fallecimiento por cualquier causa e incapacidad total y permanente. Para más información consulta aquí</li>
                <li>Tu tarjeta de crédito podrá tener un cupo entre $500.000 hasta 2 SMMLV</li>
                <li>Cuentas con el respaldo de Mastercard como franquicia.</li>
                <li>La categoría de tu tarjeta de crédito es Standard.</li>
                <li>Tu tarjeta de crédito es más segura gracias a la tecnología Contactless que te permite hacer pagos sin contacto.</li>
                <li>Puedes realizar avances de dinero en efectivo hasta por 70% del cupo disponible de tu tarjeta.</li>
                <li>Difiere tus compras nacionales entre 1 y 24 cuotas.</li>
                <li>Tus compras internacionales y avances de efectivo serán diferidos automáticamente a 24 cuotas.</li>
                <li>Elige entre el 05 o el 20 de cada mes para realizar el pago de la cuota de tu tarjeta de crédito.</li>
                <li>Nuestra tarjeta de crédito está hecha en un 85.5% de PVC reciclado.</li>
            </ul>
        </div>
        <div class="tab-content" id="seguridad">
            <ul class="lista-caracteristicas">
                <li>A través de la banca telefónica podrás realizar consultas: de saldos disponible, fecha de pago, valor a pagar movimientos realizados.</li>
                <li>En la banca telefónica podrás asignar o restablecer tu contraseña para avances de dinero en efectivo. Recuerda no compartirla con nadie y cambiarla constantemente, no uses una denominación común.</li>
                <li>Bloquea tu tarjeta en caso de: daño, deterioro, pérdida, robo, notificación de una transacción que no reconozcas.</li>
                <li>Si el Banco identifica una transacción sospechosa nos contactaremos contigo, de no poder hacerlo, te notificaremos el bloqueo preventivo de tu tarjeta.</li>
                <li>Para evitar bloqueos temporales de tu tarjeta de crédito por compras inusuales en el exterior, repórtanos a través de la Banca telefónica que estarás fuera del país.</li>
            </ul>
        </div>
        <div class="tab-content" id="tips">
            <div class="tipos-botones">
                <button class="btn-grande">Inscribete GRATIS en nuestro curso de educacion financiera y maximisa su uso en tus proximas compras</button>
                <button class="btn-grande">Descubre todo lo que la Tarjeta de Credito Banco W tiene para ofrecerte</button>
            </div>
        </div>
        <div class="tipos-botones-fila">
            <button class="btn-fila">TASAS Y TARIFAS</button>
            <button class="btn-fila">CONTRATOS Y REGLAMENTOS DE PRODUCTOS FINANCIEROS</button>
            <button class="btn-fila">SIMULADOR VTU</button>
            <button class="btn-fila">PREGUNTAS FRECUENTES</button>
        </div>
    </main>

    <!-- FOOTER -->
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
        
        function scrollCarousel(direction) {
            const carousel = document.querySelector('.beneficios-carousel');
            const scrollAmount = 220; // Aproximadamente el ancho de un item + gap
            carousel.scrollBy({ left: scrollAmount * direction, behavior: 'smooth' });
        }
        function switchTab(evt, tabId) {
        // Ocultar todos los contenidos
        document.querySelectorAll('.tab-content').forEach(tab => {
            tab.classList.remove('active');
        });

        // Quitar clase activa a todos los tabs
        document.querySelectorAll('.tab').forEach(button => {
            button.classList.remove('active');
        });

        // Activar el tab actual
        document.getElementById(tabId).classList.add('active');
        evt.currentTarget.classList.add('active');
        };

    </script>
</body>
</html>
