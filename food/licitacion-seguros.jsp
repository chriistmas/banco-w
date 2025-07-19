<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Banco W - Página Principal</title>
    <link rel="stylesheet" href="../css/licitacion-seguros.css">
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
                <li class="active"><a href="#inicio">Inicio</a></li>
                <li class="dropdown">
                    <a href="#">Acerca de Nosotros <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../food/quienes-somos.jsp">Quiénes somos</a></li>
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
                        <li><a href="proysrv/creditos.jsp">Créditos</a></li>
                        <li><a href="proysrv/tarjeta_credito.jsp">Tarjeta de crédito</a></li>
                        <li><a href="proysrv/ahorro-inversion.jsp">Productos de ahorro e inversión</a></li>
                        <li><a href="proysrv/giros-internacionales.jsp">Giros internacionales</a></li>
                        <li><a href="proysrv/seguros.jsp">Seguros</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#">Consumidor Financiero <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="consumidor-financiero/atencion.jsp">Atención</a></li>
                        <li><a href="consumidor-financiero/informacion.jsp">Información</a></li>
                        <li><a href="consumidor-financiero/educacion-financiera.jsp">Educación financiera</a></li>
                    </ul>
                        </li>	
                <li class="dropdown">
                    <a href="#">Comunidad W <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="comunidad/refiere-gana.jsp">Refiere y gana</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#">Atención al inversionista <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
			<li><a href="inversionista/documentacion.jsp">Documentación societaria</a></li>
			<li><a href="inversionista/accionistas.jsp">Accionistas</a></li>
			<li><a href="inversionista/junta.jsp">Junta directiva y alta gerencia</a></li>
			<li><a href="inversionista/relevante.jsp">Información relevante</a></li>
			<li><a href="inversionista/financiera.jsp">Información financiera</a></li>
			<li><a href="inversionista/gobierno.jsp">Documentación de gobierno corporativo</a></li>
                    </ul>
                </li>

                <li class="dropdown">
                    <a href="#">Canales de atención <span class="dropdown-arrow">▼</span></a>
                    <ul class="dropdown-menu">
			<li><a href="canales/presenciales.jsp">Canales presenciales</a></li>
			<li><a href="canales/nopresenciales.jsp">Canales no presenciales</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>


    <!-- Enhanced Hero Section -->
    <main class="main-content">
	<!-- Page Header -->
	<div class="page-header">
	    <h1>Licitación Seguros</h1>
	</div>

	<!-- Listings Container -->
	<div class="listings-container">
	    <!-- Public Listings (Teal/Cyan) -->
	    <div class="listing-item public" onclick="openListing('271')">
		<div class="listing-content">
		    Licitación pública No. 271 Seguro de Vida Grupo Deudor asociado a microcrédito y/o mipyme
		</div>
	    </div>
	    
	    <div class="listing-item public" onclick="openListing('272')">
		<div class="listing-content">
		    Licitación pública No. 272 Seguro de vida grupo deudor asociados a créditos y microcréditos con garantía hipotecaria
		</div>
	    </div>
	    
	    <div class="listing-item public" onclick="openListing('288')">
		<div class="listing-content">
		    Licitación pública No. 288 Seguros de vida grupo deudores asociados a créditos y Microcréditos con garantía hipotecaria
		</div>
	    </div>
	    
	    <div class="listing-item public" onclick="openListing('315')">
		<div class="listing-content">
		    Licitación pública No. 315 Seguros asociados a créditos y microcréditos con garantía hipotecaria
		</div>
	    </div>
	    
	    <div class="listing-item public" onclick="openListing('322')">
		<div class="listing-content">
		    Licitación pública No. 322 Seguros asociados a créditos y microcréditos con garantía hipotecaria
		</div>
	    </div>
	    
	    <div class="listing-item public" onclick="openListing('331')">
		<div class="listing-content">
		    Licitación pública No. 331 Seguro de vida grupo deudor asociados a créditos y microcréditos con garantía hipotecaria
		</div>
	    </div>
	    
	    <!-- Private Listings (Orange) -->
	    <div class="listing-item private" onclick="openListing('101')">
		<div class="listing-content">
		    Convocatoria privada No. 101 Manejo de las Pólizas Todo Riesgo y Vida Deudores del producto Inmueble Productivo
		</div>
	    </div>
	    
	    <div class="listing-item private" onclick="openListing('118')">
		<div class="listing-content">
		    Convocatoria privada No. 118 Póliza Incendio Clientes Deudores
		</div>
	    </div>
	    
	    <div class="listing-item private" onclick="openListing('142')">
		<div class="listing-content">
		    Convocatoria privada No. 142 Manejo de las Pólizas Todo Riesgo y Vida Deudores del producto Inmueble Productivo
		</div>
	    </div>
	    
	    <div class="listing-item private" onclick="openListing('198')">
		<div class="listing-content">
		    Convocatoria pública No. 198 de Seguros asociados a créditos y microcréditos con garantía Hipotecaria
		</div>
	    </div>
	    
	    <div class="listing-item private" onclick="openListing('214')">
		<div class="listing-content">
		    Convocatoria pública No. 214 de Seguros asociados a créditos y microcréditos con garantía Hipotecaria (Cobertura Póliza Incendio y Terremoto)
		</div>
	    </div>
	    
	    <div class="listing-item private" onclick="openListing('217')">
		<div class="listing-content">
		    Convocatoria No. 217 Selección y Contratación de Corredor de Seguros Clientes
		</div>
	    </div>
	</div>

	<script>
	    function openListing(listingNumber) {
		// Simulate opening a specific listing
		alert('Abriendo licitación/convocatoria No. ' + listingNumber);
		
		// In a real application, this would redirect to a detailed view
		// window.location.href = 'licitacion-detalle.jsp?id=' + listingNumber;
		
		// Or make an AJAX call to load listing details
		// loadListingDetails(listingNumber);
	    }
	    
	    // Optional: Add keyboard navigation
	    document.addEventListener('keydown', function(e) {
		if (e.key === 'Enter' && document.activeElement.classList.contains('listing-item')) {
		    document.activeElement.click();
		}
	    });
	    
	    // Make listing items focusable for accessibility
	    document.querySelectorAll('.listing-item').forEach(function(item, index) {
		item.setAttribute('tabindex', '0');
		item.setAttribute('role', 'button');
		item.setAttribute('aria-label', 'Licitación número ' + (index + 1));
	    });
	</script>
    </main>
    
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-grid">
                <div class="footer-section">
                    <h4>Nosotros</h4>
                    <ul>
                        <li><a href="food/quienes-somos.jsp">Quiénes somos</a></li>
                        <li><a href="food/proveedores.jsp">Proveedores</a></li>
                        <li><a href="#">Educación financiera</a></li>
                        <li><a href="food/trabaja-con-nosotros.jsp">Trabaja con nosotros</a></li>
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

    <!-- Welcome Modal -->
    <div id="welcomeModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <img src="images/banco-w-logo.svg" alt="Banco W" class="modal-logo">
            </div>
            <div class="modal-body">
                <h2>Bienvenido a la nueva experiencia Banco W</h2>
                <p>Hemos renovado nuestro sitio para ti. Estás en la página oficial, segura y confiable de siempre.</p>
                <p class="modal-subtitle">Antes de continuar, cuéntanos tu nombre para personalizar tu visita.</p>
                <form id="welcomeForm">
                    <div class="form-group">
                        <label for="userName">Nombre usuario</label>
                        <input type="text" id="userName" name="userName" placeholder="Ingresa tu nombre">
                    </div>
                    <button type="submit" class="btn btn-primary btn-full">Continuar</button>
                    <button type="button" class="btn btn-secondary btn-full" id="cancelBtn">Cancelar</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Cookie Manager -->
    <div id="cookieManager" class="cookie-manager">
        <div class="cookie-content">
            <div class="cookie-icon">🍪</div>
            <div class="cookie-text">
                <h3>Gestor de cookies</h3>
                <p>Este sitio web utiliza cookies propias y de terceros para analizar el tráfico, personalizar tu experiencia de navegación y mostrarte contenido relevante. Puedes aceptar todas las cookies o rechazarlas. Al continuar navegando, entendemos que aceptas su uso.</p>
                <a href="#" class="cookie-link">Más detalle aquí</a>
            </div>
            <div class="cookie-actions">
                <button class="btn btn-accept" id="acceptCookies">Aceptar</button>
                <button class="btn btn-reject" id="rejectCookies">Rechazar</button>
            </div>
        </div>
    </div>

    <script src="js/main.js"></script>
</body>
</html>
