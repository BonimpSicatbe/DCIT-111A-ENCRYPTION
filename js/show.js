// Carousell
let currentSlide = 0;
        const slides = document.querySelectorAll('.carousel-item');
        const totalSlides = slides.length;
        const nextBtn = document.getElementById('nextBtn');
        const prevBtn = document.getElementById('prevBtn');
        const indicators = document.querySelectorAll('.carousel-indicators button');
        const indicatorsContent = document.querySelector('.carousel-indicators-content');

        function showSlide(index) {
            const carouselInner = document.getElementById('carousel-inner');
            carouselInner.style.transform = `translateX(-${index * 100}%)`;
            indicators.forEach((indicator, i) => {
                indicator.classList.toggle('active', i === index);
            });
            scrollToActiveIndicator();
        }

        function scrollToActiveIndicator() {
            const activeIndicator = document.querySelector('.carousel-indicators-content .active');
            if (activeIndicator) {
                const containerWidth = indicatorsContent.offsetWidth;
                const indicatorWidth = activeIndicator.offsetWidth;
                const indicatorLeft = activeIndicator.offsetLeft;
                const scrollPosition = indicatorLeft - (containerWidth / 2) + (indicatorWidth / 2);
                indicatorsContent.scrollTo({
                    left: scrollPosition,
                    behavior: 'smooth'
                });
            }
        }

        nextBtn.addEventListener('click', () => {
            currentSlide = (currentSlide + 1) % totalSlides;
            showSlide(currentSlide);
        });

        prevBtn.addEventListener('click', () => {
            currentSlide = (currentSlide - 1 + totalSlides) % totalSlides;
            showSlide(currentSlide);
        });

        indicators.forEach((indicator, index) => {
            indicator.addEventListener('click', () => {
                currentSlide = index;
                showSlide(currentSlide);
            });
        });

        // Auto slide
        setInterval(() => {
            currentSlide = (currentSlide + 1) % totalSlides;
            showSlide(currentSlide);
        }, 5000); // Change slide every 5 seconds


document.addEventListener('DOMContentLoaded', function() {
    document.querySelectorAll('.nav-link').forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            console.log("Link clicked:", link);  // Debug output
            if (link.getAttribute('aria-disabled') === 'true') {
                console.log("Link is disabled:", link);  // Debug output
                return;
            }
            document.querySelectorAll('.nav-link').forEach(function(nav) {
                nav.classList.remove('active');
            });
            document.querySelectorAll('.tab-pane').forEach(function(tab) {
                tab.classList.remove('active');
            });
            link.classList.add('active');
            const target = document.querySelector(link.getAttribute('data-target'));
            if (target) {
                console.log("Target found:", target);  // Debug output
                target.classList.add('active');
            } else {
                console.log("Target not found:", link.getAttribute('data-target'));  // Debug output
            }
        });
    });
});