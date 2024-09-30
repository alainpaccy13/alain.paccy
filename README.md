<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Gallery</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .gallery {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 15px;
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }
        .gallery-item {
            background: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .gallery-item:hover {
            transform: scale(1.05);
        }
        .gallery-item img {
            width: 100%;
            height: auto;
            display: block;
        }
        .gallery-item p {
            padding: 10px;
            text-align: center;
            color: #666;
        }
    </style>
</head>
<body>

<h2>Image Gallery</h2>
<div class="gallery">
    <div class="gallery-item">
        <img src="assets/images/1.png" alt="Image 1">
        <p>Image Description 1</p>
    </div>
    <div class="gallery-item">
        <img src="https://via.placeholder.com/300" alt="Image 2">
        <p>Image Description 2</p>
    </div>
    <div class="gallery-item">
        <img src="https://via.placeholder.com/300" alt="Image 3">
        <p>Image Description 3</p>
    </div>
    <div class="gallery-item">
        <img src="https://via.placeholder.com/300" alt="Image 4">
        <p>Image Description 4</p>
    </div>
    <div class="gallery-item">
        <img src="https://via.placeholder.com/300" alt="Image 5">
        <p>Image Description 5</p>
    </div>
    <div class="gallery-item">
        <img src="https://via.placeholder.com/300" alt="Image 6">
        <p>Image Description 6</p>
    </div>
</div>

</body>
</html>
