<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        /* Initial font size setting */
        h1 {
            font-size: 24px;
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

        // Click event handler
        document.getElementById('header').addEventListener('click', function() {
            // Generate a random font size (e.g., between 16px and 48px)
            var randomSize = getRandomFontSize(16, 48);
            
            // Apply the font size
            this.style.fontSize = randomSize + 'px';
        });
    </script>
</body>
</html>
