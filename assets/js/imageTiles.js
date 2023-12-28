let currentSlide = 1;
function updateSlide() {
    currentSlide++;
    if (currentSlide > 5) {
        currentSlide = 1;
    }
    //update CSS properties of carousel elements here
    //e.g. document.querySelector('.item').style.transform = `rotateY(-${currentSlide * 10}deg)`;
}
setInterval(updateSlide, 3000); //3000 ms = 3 sec
// Add touchstart event to the carousel element
document.getElementById('carousel').addEventListener('touchstart', handleTouchStart, false);

// Add touchmove event to the carousel element
document.getElementById('carousel').addEventListener('touchmove', handleTouchMove, false);

// Add touchend event to the carousel element
document.getElementById('carousel').addEventListener('touchend', handleTouchEnd, false);
