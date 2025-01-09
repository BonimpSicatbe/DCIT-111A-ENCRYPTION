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

// Card
document.addEventListener('DOMContentLoaded', function() {
    // Select the image element by its ID
    const imageElement = document.getElementById('sampleImage');

    // Store the original and hover image sources in variables
    const originalSrc = imageElement.src;
    const hoverSrc = imageElement.getAttribute('data-hover');

    // Add event listeners for mouseover and mouseout events
    imageElement.addEventListener('mouseover', function() {
        // Change the image source on hover
        imageElement.src = hoverSrc;
    });

    imageElement.addEventListener('mouseout', function() {
        // Revert back to the original image source when not hovering
        imageElement.src = originalSrc;
    });
});
