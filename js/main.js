// JavaScript para la funcionalidad de la página Banco W

document.addEventListener('DOMContentLoaded', function() {
    // Referencias a elementos del DOM
    const welcomeModal = document.getElementById('welcomeModal');
    const cookieManager = document.getElementById('cookieManager');
    const welcomeForm = document.getElementById('welcomeForm');
    const cancelBtn = document.getElementById('cancelBtn');
    const acceptCookies = document.getElementById('acceptCookies');
    const rejectCookies = document.getElementById('rejectCookies');
    const userNameDisplay = document.getElementById('user-name-display');

    // Función para verificar si las cookies fueron aceptadas/rechazadas
    function checkCookieConsent() {
        return sessionStorage.getItem('cookieConsent') !== null;
    }

    // Función para verificar si el usuario ya ingresó su nombre
    function checkUserName() {
        return sessionStorage.getItem('userName') !== null;
    }

    // Función para mostrar el modal de bienvenida
    function showWelcomeModal() {
        if (!checkUserName()) {
            welcomeModal.classList.add('show');
            welcomeModal.style.display = 'flex';
        }
    }

    // Función para mostrar el gestor de cookies
    function showCookieManager() {
        if (!checkCookieConsent()) {
            setTimeout(() => {
                cookieManager.classList.add('show');
            }, 1000); // Mostrar después de 1 segundo
        }
    }

    // Función para cerrar el modal de bienvenida
    function closeWelcomeModal() {
        welcomeModal.classList.remove('show');
        setTimeout(() => {
            welcomeModal.style.display = 'none';
        }, 300);
    }

    // Función para cerrar el gestor de cookies
    function closeCookieManager() {
        cookieManager.classList.remove('show');
    }

    // Función para personalizar el saludo
    function personalizeGreeting(name) {
        if (name && name.trim() !== '') {
            userNameDisplay.textContent = ', ' + name.trim();
        } else {
            userNameDisplay.textContent = '';
        }
    }

    // Función para cargar el nombre guardado
    function loadSavedName() {
        const savedName = sessionStorage.getItem('userName');
        if (savedName) {
            personalizeGreeting(savedName);
        }
    }

    // Manejador del formulario de bienvenida
    welcomeForm.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const userName = document.getElementById('userName').value;
        
        if (userName && userName.trim() !== '') {
            // Guardar el nombre en sessionStorage
            sessionStorage.setItem('userName', userName.trim());
            // Personalizar el saludo
            personalizeGreeting(userName.trim());
        }
        
        // Cerrar el modal
        closeWelcomeModal();
    });

    // Manejador del botón cancelar
    cancelBtn.addEventListener('click', function() {
        closeWelcomeModal();
    });

    // Manejador para aceptar cookies
    acceptCookies.addEventListener('click', function() {
        sessionStorage.setItem('cookieConsent', 'accepted');
        closeCookieManager();
        
        // Simular funcionalidad de cookies aceptadas
        console.log('Cookies aceptadas - Funcionalidad analítica habilitada');
    });

    // Manejador para rechazar cookies
    rejectCookies.addEventListener('click', function() {
        sessionStorage.setItem('cookieConsent', 'rejected');
        closeCookieManager();
        
        // Simular funcionalidad de cookies rechazadas
        console.log('Cookies rechazadas - Solo cookies esenciales');
    });

    // Cerrar modal al hacer clic fuera de él
    welcomeModal.addEventListener('click', function(e) {
        if (e.target === welcomeModal) {
            closeWelcomeModal();
        }
    });

    // Funcionalidad de navegación suave
    function smoothScroll() {
        const links = document.querySelectorAll('a[href^="#"]');
        
        links.forEach(link => {
            link.addEventListener('click', function(e) {
                e.preventDefault();
                
                const targetId = this.getAttribute('href').substring(1);
                const targetElement = document.getElementById(targetId);
                
                if (targetElement) {
                    targetElement.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
    }

    // Funcionalidad de animación al hacer scroll
    function animateOnScroll() {
        const animatedElements = document.querySelectorAll('.article-card, .product-item, .unique-item');
        
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        });

        animatedElements.forEach(element => {
            element.style.opacity = '0';
            element.style.transform = 'translateY(30px)';
            element.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
            observer.observe(element);
        });
    }

    // Funcionalidad de hover para tarjetas de productos
    function addProductHoverEffects() {
        const productItems = document.querySelectorAll('.product-item');
        
        productItems.forEach(item => {
            item.addEventListener('mouseenter', function() {
                this.style.transform = 'translateX(10px) scale(1.02)';
            });
            
            item.addEventListener('mouseleave', function() {
                this.style.transform = 'translateX(0) scale(1)';
            });
        });
    }

    // Funcionalidad de contador animado para el Club del Ahorro
    function animateCounter() {
        const prizeAmount = document.querySelector('.prize-amount');
        if (prizeAmount) {
            const finalAmount = 1500000;
            let currentAmount = 0;
            const increment = finalAmount / 100;
            const duration = 2000; // 2 segundos
            const stepTime = duration / 100;

            const counter = setInterval(() => {
                currentAmount += increment;
                if (currentAmount >= finalAmount) {
                    currentAmount = finalAmount;
                    clearInterval(counter);
                }
                prizeAmount.textContent = '$' + Math.floor(currentAmount).toLocaleString('es-CO');
            }, stepTime);
        }
    }

    // Función para manejar el resize de la ventana
    function handleResize() {
        window.addEventListener('resize', function() {
            // Ajustar el modal en dispositivos móviles
            if (window.innerWidth <= 768) {
                const modalContent = document.querySelector('.modal-content');
                if (modalContent) {
                    modalContent.style.width = 'calc(100% - 2rem)';
                    modalContent.style.margin = '1rem';
                }
            }
        });
    }

    // Función para precargar imágenes importantes
    function preloadImages() {
        const imageUrls = [
            'images/banco-w-logo.svg',
            'images/hero-people.png',
            'images/insurance-couple.webp',
            'images/billetera-woman.webp'
        ];

        imageUrls.forEach(url => {
            const img = new Image();
            img.src = url;
        });
    }

    // Función para simular carga de datos dinámicos
    function loadDynamicContent() {
        // Simular carga de artículos destacados
        setTimeout(() => {
            const articles = document.querySelectorAll('.article-card');
            articles.forEach((article, index) => {
                article.style.animationDelay = `${index * 0.2}s`;
                article.classList.add('fade-in');
            });
        }, 500);
    }

    // Función para manejar errores de imágenes
    function handleImageErrors() {
        const images = document.querySelectorAll('img');
        images.forEach(img => {
            img.addEventListener('error', function() {
                // Crear un placeholder simple si la imagen no carga
                this.style.background = 'linear-gradient(45deg, #f0f0f0, #ddd)';
                this.style.color = '#666';
                this.style.display = 'flex';
                this.style.alignItems = 'center';
                this.style.justifyContent = 'center';
                this.style.fontSize = '14px';
                this.alt = 'Imagen no disponible';
            });
        });
    }

    // Función para agregar efectos de carga
    function addLoadingEffects() {
        // Agregar clase de carga completa al body
        setTimeout(() => {
            document.body.classList.add('loaded');
        }, 100);
    }

    // Función principal de inicialización
    function init() {
        // Cargar nombre guardado
        loadSavedName();
        
        // Mostrar modal de bienvenida si es necesario
        showWelcomeModal();
        
        // Mostrar gestor de cookies si es necesario
        showCookieManager();
        
        // Inicializar funcionalidades
        smoothScroll();
        animateOnScroll();
        addProductHoverEffects();
        handleResize();
        preloadImages();
        loadDynamicContent();
        handleImageErrors();
        addLoadingEffects();
        
        // Animar contador después de un tiempo
        setTimeout(animateCounter, 2000);
        
        console.log('Banco W - Página inicializada correctamente');
    }

    // Inicializar la aplicación
    init();
});

// Función para debugging (solo en desarrollo)
if (window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1') {
    window.BancoWDebug = {
        resetWelcome: function() {
            sessionStorage.removeItem('userName');
            sessionStorage.removeItem('cookieConsent');
            location.reload();
        },
        showWelcome: function() {
            document.getElementById('welcomeModal').classList.add('show');
            document.getElementById('welcomeModal').style.display = 'flex';
        },
        showCookies: function() {
            document.getElementById('cookieManager').classList.add('show');
        }
    };
    console.log('Banco W Debug mode - Use BancoWDebug.resetWelcome() to reset');
}
