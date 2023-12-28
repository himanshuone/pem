document.addEventListener("DOMContentLoaded", function() {
        const textContainer = document.getElementById("text-container");
        console.log("text-container", textContainer);

        const text = document.getElementById("text");
        console.log("text", text);

        const messages = ["Wedding Planning & Management", "Corporate Events", "Decoration", "Birthday & Anniversary Parties","Kitty Parties", "Catering", "Community Events", "Trade Shows", "Waterproofing", "Carnivals", "Theme Parties", "Religious Events", "Cocktail Parties", "Baby Shower", "Dome Work"];
        let messageIndex = 0;

        function updateText() {
            text.classList.add("flip-out");
            setTimeout(() => {
                text.innerHTML = messages[messageIndex];
                text.classList.remove("flip-out");
                text.classList.add("flip-in");
                messageIndex = (messageIndex + 1) % messages.length;
            }, 1000);
            setTimeout(() => {
                text.classList.remove("flip-in");
            }, 2000);
        }

        setInterval(updateText, 3000);
    });