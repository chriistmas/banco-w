<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Microcrédito - Banco W</title>
    <link rel="stylesheet" href="../../css/microcredito_style.css">
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
                <li class="active"><a href="../../index.jsp">Inicio</a></li>
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

    <main class="main-content">
    <!-- Hero -->
        <section class="microcredito-hero">
            <div class="microcredito-text">
                <h1>Microcrédito</h1>
                <p>Créditos Flexibles para Pequeños Empresarios y Emprendedores que te permitirán fortalecer y hacer crecer tu negocio.</p>
                <a href="#" class="btn-simulador">Simulador de crédito</a>
            </div>
            <div class="microcredito-img">
                <img src="../../images/microcredito.png" alt="Microcrédito">
            </div>
        </section>

        <!-- Tabs -->
        <div class="tabs">
            <div class="tab active" data-tab="caracteristicas">Características</div>
            <div class="tab" data-tab="requisitos">Requisitos</div>
            <div class="tab" data-tab="tramites">Trámites</div>
            <div class="tab" data-tab="solicitud">Solicitud de Crédito</div>
        </div>

        <!-- Contenidos -->
        <section class="tab-content">
            <div class="tab-pane active" id="caracteristicas">
                <ul>
                    <li>Crédito para surtir, comprar maquinaria, equipos o inmuebles nuevos o usados y gastos de operación del negocio.</li>
                    <li>El plazo será dado de acuerdo al monto y al tipo de cliente.</li>
                    <li>Puedes adquirir de manera opcional: Soy previsión exequial, Soy Vida, Soy Protección familiar, Soy patrimonio seguro.</li>
                    <li>Monto: desde 1 SMMLV hasta 120 SMMLV.</li>
                    <li>Tienes la opción de ahorrar mientras pagas tu crédito con nuestro Pagahorro.</li>
                    <li>Seguros obligatorios: Seguros deudores.</li>
                    <li>Tasa fija durante toda la vigencia del préstamo.</li>
                    <li>Se otorga a clientes nuevos, renovación y preferenciales.</li>
                    <li>Asegúrate de estar informado con nuestro nuevo portal de seguros.</li>
                </ul>
            </div>

            <div class="tab-pane" id="requisitos">
                <ul>
                    <li>Ser mayor de edad.</li>
                    <li>Tener actividad económica comprobable.</li>
                    <li>Presentar documento de identidad.</li>
                    <li>No estar reportado negativamente en centrales de riesgo.</li>
                    <li>Demostrar capacidad de pago.</li>
                </ul>
            </div>

            <div class="tab-pane" id="tramites">
                <ul>
                    <li>Acércate a una oficina del Banco W con tus documentos.</li>
                    <li>Un asesor te ayudará con el formulario de solicitud.</li>
                    <li>Espera la evaluación y aprobación del crédito.</li>
                    <li>Una vez aprobado, se desembolsará el dinero a tu cuenta.</li>
                </ul>
            </div>

            <div class="tab-pane" id="solicitud">
                <ul>
                    <li>Haz clic en el botón de solicitud y completa el formulario en línea.</li>
                    <li>Adjunta los documentos requeridos.</li>
                    <li>Te notificaremos por correo o teléfono sobre el estado de tu solicitud.</li>
                </ul>
            </div>
        </section>

        <!-- Imagen intermedia: Pagahorro -->
        <section class="pago-section">
            <img src="../../images/banner-micro-credito-boton.png" alt="Pagahorro">
        </section>

        <!-- Botones finales -->
        <div class="info-buttons">
            <a href="#" class="btn">TASAS Y TARIFAS VIGENTES</a>
            <a href="#" class="btn">Contratos y reglamentos de productos</a>
            <a href="#" class="btn">Simulador VTU</a>
        </div>
</main>
<script>
    const tabs = document.querySelectorAll('.tab');
    const panes = document.querySelectorAll('.tab-pane');

    tabs.forEach(tab => {
        tab.addEventListener('click', () => {
            tabs.forEach(t => t.classList.remove('active'));
            panes.forEach(p => p.classList.remove('active'));

            tab.classList.add('active');
            const targetId = tab.getAttribute('data-tab');
            const targetPane = document.getElementById(targetId);
            if (targetPane) {
                targetPane.classList.add('active');
            }
        });
    });
</script>
</body>
</html>
