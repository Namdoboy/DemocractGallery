<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Initial font size and color settings */
        h1 {
            font-size: 24px;
            position: relative;
            cursor: pointer;
            transition: font-size 0.5s ease, color 0.5s ease;
        }

        /* Ripple effect style */
        .ripple {
            position: absolute;
            border: 2px solid #3498db;
            border-radius: 50%;
            transform: scale(0);
            animation: rippleEffect 0.5s linear;
        }

        /* Keyframes for ripple animation */
        @keyframes rippleEffect {
            to {
                transform: scale(4);
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <h1 id="header">welcome to my cool page!</h1>

    <script>
        // JavaScript code
        // Function to generate a random font size
        function getRandomFontSize(min, max) {
            return Math.floor(Math.random() * (max - min + 1)) + min;
        }

        // Function to generate a random color
        function getRandomColor() {
            var letters = '0123456789ABCDEF';
            var color = '#';
            for (var i = 0; i < 6; i++) {
                color += letters[Math.floor(Math.random() * 16)];
            }
            return color;
        }

        // Click event handler
        document.getElementById('header').addEventListener('click', function(event) {
            // Generate a random font size (e.g., between 16px and 48px)
            var randomSize = getRandomFontSize(16, 48);

            // Generate a random color
            var randomColor = getRandomColor();

            // Apply the font size and color, and create the ripple effect
            this.style.fontSize = randomSize + 'px';
            this.style.color = randomColor;

            // Create the ripple element and set its position
            var ripple = document.createElement('span');
            ripple.className = 'ripple';
            var x = event.clientX - this.getBoundingClientRect().left;
            var y = event.clientY - this.getBoundingClientRect().top;
            ripple.style.left = x + 'px';
            ripple.style.top = y + 'px';

            // Add the ripple element and remove it after the animation ends
            this.appendChild(ripple);
            ripple.addEventListener('animationend', function() {
                ripple.remove();
            });
        });
    </script>
</body>
</html>
