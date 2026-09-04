<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chitti Vastram | Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #fff7f1;
            color: #333;
        }

        /* NAVBAR */
        header {
            background: #5a2a27;
            padding: 15px 40px;
        }

        header nav {
            display: flex;
            justify-content: flex-end;
        }

        header a {
            color: white;
            margin-left: 20px;
            text-decoration: none;
            font-weight: bold;
        }
.hero {
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;

    background-image:url("images/Background.jpeg");

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}
.hero img {
    width: 280px;
    max-width: 80%;
    height: auto;
    margin-bottom: 10px;   /* ⬅ reduced */
}

.hero h1 {
    margin-top: 0;         /* ⬅ remove default gap */
    margin-bottom: 8px;    /* ⬅ small space */
}

.hero p {
    margin-top: 0;         /* ⬅ remove gap */
}

        .hero h1 {
            font-size: 52px;
            color: #5a2a27;
            margin: 10px 0;
        }

        .hero p {
            font-size: 18px;
            color: #333;
        }

        .btn {
            background: #5a2a27;
            color: white;
            padding: 12px 30px;
            text-decoration: none;
            border-radius: 6px;
        }

        /* GALLERY */
        .gallery {
            padding: 60px 40px;
            background: #fff;
        }

        .gallery h2 {
            text-align: center;
            margin-bottom: 40px;
            color: #5a2a27;
        }

        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 25px;
        }

        .gallery-grid img {
            width: 100%;
            height: 320px;
            object-fit: cover;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
            transition: transform 0.3s;
        }

        .gallery-grid img:hover {
            transform: scale(1.05);
        }

        footer {
            background: #5a2a27;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
<body>

<header>
    <nav>
        <a href="index.html">Home</a>
        <a href="shop.html">Shop</a>
        <a href="orders.html">Orders</a>
    </nav>
</header>

<section class="hero">
    <img src="images/logo.png" alt="Chitti Vastram Logo">
    <h1>Chitti Vastram</h1>
    <p>Hand-Painted Clothing with Love 🎨</p>
    <a href="shop.html" class="btn">Explore Collection</a>
</section>

<!-- SCROLL DOWN GALLERY -->
<section class="gallery">
    <h2>My Hand-Painted Creations</h2>

    <div class="gallery-grid">
        <img src="images/Elephant.jpeg" alt="Hand painted dress">
        <img src="images/Namam.jpeg" alt="Hand painted kurti">
        <img src="images/Venkateswara.jpeg" alt="Hand painted saree">
        <img src="images/Cockshirtboy.jpeg" alt="Hand painted fabric">
        <img src="images/Brothersister.jpeg" alt="Hand painted design">
        <img src="images/Ox.jpeg" alt="Hand painted art">
        <img src="images/Durga.jpeg" alt="Hand painted art">
        <img src="images/Chaithu.jpeg" alt="Hand painted art">
        <img src="images/dattu.jpeg" alt="Hand painted art">
        <img src="images/krishnahands.jpeg" alt="Hand painted art">
    </div>
</section>

<footer>
    <p>Instagram: @chitti_vastram</p>
    <p>© 2026 Chitti Vastram</p>
</footer>

</body>
</html>
