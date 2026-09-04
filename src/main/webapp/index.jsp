
<!doctype html>
<<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <title>Normal page modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" />
  <style>
    /* ----- minimal reset & variables ----- */
    * { margin:0; padding:0; box-sizing:border-box; }
    :root {
      --bg: #f7f7fa;
      --card: #ffffff;
      --primary: #1b1b2c;
      --primary-light: #2d2d4a;
      --accent: #e26d5c;
      --accent-soft: #f3d2c9;
      --accent-dark: #c14f3e;
      --muted: #6b6b7e;
      --muted-light: #a8a8bb;
      --surface: #edecf0;
      --shadow: 0 10px 30px -8px rgba(0,0,0,0.06);
      --shadow-hover: 0 20px 40px -12px rgba(26,26,46,0.15);
      --radius: 20px;
      --radius-sm: 12px;
      --transition: 0.25s ease;
    }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }
    a { color: inherit; text-decoration: none; }
    img { max-width: 100%; display: block; }
    button { cursor: pointer; font: inherit; border: none; background: none; color: inherit; }
    input { font: inherit; }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- buttons ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      padding: 12px 30px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 2px solid transparent;
      letter-spacing: 0.2px;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 10px 24px -6px rgba(224, 109, 92, 0.4);
    }
    .btn-secondary {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
    }
    .btn-secondary:hover {
      background: var(--primary-light);
      transform: translateY(-2px);
      box-shadow: 0 10px 24px -6px rgba(27,27,44,0.25);
    }
    .btn-outline {
      background: transparent;
      color: var(--primary);
      border-color: rgba(27,27,44,0.12);
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      transform: translateY(-2px);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.12);
      color: #fff;
      border-color: rgba(255,255,255,0.2);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.22);
      transform: translateY(-2px);
    }
    .btn-sm { padding: 8px 18px; font-size: 13px; }

    /* ----- header (friendly, clean) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(255,255,255,0.88);
      backdrop-filter: blur(18px);
      -webkit-backdrop-filter: blur(18px);
      border-bottom: 1px solid rgba(0,0,0,0.03);
    }
    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 12px;
      padding: 10px 0;
      min-height: 64px;
    }
    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.4px;
      color: var(--primary);
    }
    .brand i { font-size: 26px; color: var(--accent); }
    .brand .accent { color: var(--accent); }

    .main-nav ul {
      display: flex;
      gap: 2px;
      list-style: none;
    }
    .main-nav ul li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 16px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
    }
    .main-nav ul li a:hover,
    .main-nav ul li a.active {
      background: var(--surface);
      color: var(--primary);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      display: grid;
      place-items: center;
      border-radius: 60px;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
    }
    .icon-btn:hover {
      background: var(--surface);
      color: var(--primary);
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: #fff;
      font-size: 11px;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 30px;
      display: grid;
      place-items: center;
      border: 2px solid #fff;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 60px;
      padding: 0 12px 0 18px;
      border: 2px solid transparent;
      transition: var(--transition);
      min-width: 190px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: #fff;
      box-shadow: 0 0 0 4px rgba(224,109,92,0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      padding: 10px 0;
      font-size: 14px;
      color: var(--primary);
    }
    .search-wrap input::placeholder { color: var(--muted-light); }
    .search-wrap button {
      padding: 6px 0 6px 8px;
      color: var(--muted);
      font-size: 15px;
      transition: var(--transition);
    }
    .search-wrap button:hover { color: var(--accent); }

    .mobile-toggle {
      display: none;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      font-size: 18px;
      background: var(--surface);
      color: var(--primary);
    }
    #mobileMenu {
      display: none;
      background: #fff;
      border-top: 1px solid rgba(0,0,0,0.02);
      padding: 12px 0 20px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 2px;
    }
    #mobileMenu ul li a {
      display: flex;
      align-items: center;
      gap: 12px;
      padding: 12px 16px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      color: var(--primary);
    }
    #mobileMenu ul li a:hover { background: var(--surface); }

    /* ----- hero (welcoming) ----- */
    .hero {
      position: relative;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 24px 24px 0;
      background: linear-gradient(145deg, #1b1b2c, #2f2f4a);
      min-height: 420px;
      display: flex;
      align-items: center;
      padding: 40px 0;
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.25;
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-block;
      background: rgba(224,109,92,0.2);
      color: var(--accent);
      padding: 4px 16px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      margin-bottom: 14px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 44px;
      font-weight: 700;
      color: #fff;
      line-height: 1.15;
      max-width: 620px;
      margin-bottom: 12px;
    }
    .hero p {
      color: rgba(255,255,255,0.8);
      font-size: 17px;
      max-width: 480px;
      margin-bottom: 24px;
      line-height: 1.6;
    }
    .hero .actions { display: flex; gap: 12px; flex-wrap: wrap; }

    /* ----- sections ----- */
    .section { padding: 50px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 30px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 28px;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header .title-group p {
      color: var(--muted);
      margin-top: 2px;
      font-size: 15px;
    }
    .section-header .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      font-size: 14px;
      transition: var(--transition);
      white-space: nowrap;
    }
    .section-header .view-all:hover { gap: 12px; color: var(--accent-dark); }

    /* ----- categories (friendly cards) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6,1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 22px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 2px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      border-radius: 60px;
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 10px;
      font-size: 24px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap { background: var(--accent); color: #fff; }
    .cat-card h4 { font-size: 15px; font-weight: 600; }
    .cat-card .count { font-size: 13px; color: var(--muted); margin-top: 4px; }

    /* ----- products (clean, airy) ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4,1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 2px solid transparent;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
    }
    .product-card .img-wrap {
      position: relative;
      background: var(--surface);
      aspect-ratio: 1/1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: var(--transition);
    }
    .product-card:hover .img-wrap img { transform: scale(1.04); }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: #fff;
      padding: 3px 12px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 700;
    }
    .product-card .badge.sale { background: #e9b35f; color: var(--primary); }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      width: 34px;
      height: 34px;
      border-radius: 60px;
      background: rgba(255,255,255,0.9);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      backdrop-filter: blur(4px);
    }
    .product-card .wish-btn:hover { background: #fff; color: var(--accent); transform: scale(1.08); }
    .product-card .body {
      padding: 14px 16px 8px;
      flex: 1;
      display: flex;
      flex-direction: column;
      gap: 4px;
    }
    .product-card .body .category-tag {
      font-size: 11px;
      color: var(--muted-light);
      text-transform: uppercase;
      letter-spacing: 0.6px;
      font-weight: 600;
    }
    .product-card .body h5 {
      font-size: 15px;
      font-weight: 600;
      line-height: 1.3;
      display: -webkit-box;
      -webkit-line-clamp: 2;
      -webkit-box-orient: vertical;
      overflow: hidden;
    }
    .product-card .body .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 2px;
    }
    .product-card .body .price { font-weight: 700; font-size: 18px; }
    .product-card .body .old-price {
      color: var(--muted-light);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .body .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #f5a623;
    }
    .product-card .body .rating span { color: var(--muted); font-weight: 400; }
    .product-card .footer {
      padding: 0 16px 16px;
      display: flex;
      gap: 8px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 10px;
      border-radius: var(--radius-sm);
      background: var(--primary);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .product-card .footer .add-btn:hover { background: var(--accent); transform: scale(1.02); }
    .product-card .footer .add-btn.added { background: #2a9d8f; }

    /* ----- deal (friendly highlight) ----- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 46%;
      background: var(--surface);
      min-height: 270px;
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      flex: 1;
      padding: 36px 40px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      background: #e9b35f;
      color: var(--primary);
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 10px;
    }
    .deal-wrap .deal-content h3 { font-size: 28px; font-weight: 700; margin-bottom: 4px; }
    .deal-wrap .deal-content .desc { color: var(--muted); margin-bottom: 12px; }
    .deal-wrap .deal-content .price-big {
      font-size: 34px;
      font-weight: 800;
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-wrap .deal-content .stock { font-size: 14px; color: var(--muted); margin: 2px 0 12px; }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }

    .timer-grid {
      display: flex;
      gap: 10px;
      margin: 10px 0 16px;
    }
    .timer-box {
      background: var(--primary);
      color: #fff;
      padding: 8px 14px;
      border-radius: var(--radius-sm);
      min-width: 60px;
      text-align: center;
    }
    .timer-box .num { font-size: 24px; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 10px; opacity: 0.7; text-transform: uppercase; }

    /* ----- testimonials (scroll) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 4px 2px 16px;
      scroll-snap-type: x mandatory;
      -webkit-overflow-scrolling: touch;
    }
    .testimonials-scroll::-webkit-scrollbar { height: 4px; }
    .testimonials-scroll::-webkit-scrollbar-thumb { background: var(--accent-soft); border-radius: 20px; }
    .testimonial-card {
      flex: 0 0 320px;
      background: var(--card);
      border-radius: var(--radius);
      padding: 22px 24px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: var(--transition);
    }
    .testimonial-card:hover { box-shadow: var(--shadow-hover); }
    .testimonial-card .stars { color: #f5a623; font-size: 16px; letter-spacing: 1px; margin-bottom: 8px; }
    .testimonial-card blockquote { font-size: 15px; line-height: 1.6; color: var(--primary); font-style: italic; margin-bottom: 12px; }
    .testimonial-card .author { display: flex; align-items: center; gap: 12px; }
    .testimonial-card .author .avatar {
      width: 44px; height: 44px;
      border-radius: 60px;
      object-fit: cover;
      background: var(--surface);
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 14px; }
    .testimonial-card .author .role { font-size: 13px; color: var(--muted); }

    /* ----- newsletter (friendly) ----- */
    .newsletter-wrap {
      background: linear-gradient(135deg, var(--primary), var(--primary-light));
      border-radius: var(--radius);
      padding: 44px 50px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
      flex-wrap: wrap;
    }
    .newsletter-wrap .text h3 { font-size: 26px; font-weight: 700; margin-bottom: 2px; }
    .newsletter-wrap .text p { opacity: 0.75; font-size: 15px; }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 460px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 180px;
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      font-size: 15px;
      background: rgba(255,255,255,0.12);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.5); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.18);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 14px 32px;
    }
    .newsletter-wrap form .btn:hover { background: var(--accent-dark); border-color: var(--accent-dark); }
    #newsletterMsg { margin-top: 10px; font-size: 14px; opacity: 0.9; width: 100%; }

    /* ----- footer (light, airy) ----- */
    footer {
      padding: 44px 0 24px;
      border-top: 1px solid rgba(0,0,0,0.03);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand { font-size: 20px; margin-bottom: 6px; }
    .footer-grid .brand-col p { color: var(--muted); font-size: 14px; max-width: 280px; line-height: 1.6; }
    .footer-grid .brand-col .socials { display: flex; gap: 10px; margin-top: 12px; }
    .footer-grid .brand-col .socials a {
      width: 40px; height: 40px;
      border-radius: 60px;
      background: var(--surface);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
    .footer-grid .col h5 { font-weight: 700; font-size: 14px; margin-bottom: 10px; color: var(--primary); }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 6px; }
    .footer-grid .col ul li a { color: var(--muted); font-size: 14px; transition: var(--transition); }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom { text-align: center; padding-top: 20px; border-top: 1px solid rgba(0,0,0,0.03); color: var(--muted-light); font-size: 13px; }

    /* ----- responsive friendly ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
    }
    @media (max-width: 992px) {
      .hero { margin: 16px 16px 0; min-height: 340px; }
      .hero h1 { font-size: 34px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .deal-wrap .deal-content { padding: 28px 30px; }
      .newsletter-wrap { padding: 30px 28px; flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .search-wrap { min-width: 140px; }
    }
    @media (max-width: 768px) {
      .main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: repeat(2,1fr); gap: 14px; }
      .categories-grid { grid-template-columns: repeat(2,1fr); gap: 12px; }
      .hero h1 { font-size: 28px; }
      .section-header h2 { font-size: 22px; }
      .deal-wrap .deal-content h3 { font-size: 22px; }
      .timer-box { min-width: 52px; padding: 6px 10px; }
      .timer-box .num { font-size: 20px; }
      .footer-grid { grid-template-columns: 1fr; gap: 20px; }
      .brand { font-size: 18px; }
      .search-wrap { min-width: 100px; padding: 0 8px 0 12px; }
      .header-actions .icon-btn { width: 36px; height: 36px; font-size: 15px; }
      .cart-count { width: 18px; height: 18px; font-size: 10px; }
      .testimonial-card { flex: 0 0 260px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 10px 10px 0; min-height: 270px; padding: 24px 0; border-radius: var(--radius-sm); }
      .hero h1 { font-size: 22px; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 18px 16px; }
      .deal-wrap .deal-img { flex: 0 0 160px; }
      .newsletter-wrap { padding: 20px 16px; }
      .newsletter-wrap .text h3 { font-size: 20px; }
      .product-card .body { padding: 10px 10px 6px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .body .price { font-size: 15px; }
      .product-card .footer { padding: 0 10px 10px; }
      .product-card .footer .add-btn { font-size: 12px; padding: 8px; }
      .timer-box { min-width: 42px; padding: 4px 6px; }
      .timer-box .num { font-size: 16px; }
      .timer-box .label { font-size: 8px; }
      .cat-card { padding: 14px 8px; }
      .cat-card .icon-wrap { width: 40px; height: 40px; font-size: 18px; }
      .cat-card h4 { font-size: 13px; }
    }
  </style>
</head>
<body>
  <header>
    <div class="container header-inner">
      <div style="display:flex;align-items:center;gap:10px;">
        <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
        <a class="brand" href="#"><i class="fas fa-store-alt"></i><span>Nexus<span class="accent">Shop</span></span></a>
      </div>
      <nav class="main-nav" aria-label="Main">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>
      <div style="display:flex;align-items:center;gap:8px;">
        <div class="search-wrap">
          <input type="search" id="searchInput" placeholder="Search..." aria-label="Search" />
          <button id="searchBtn"><i class="fas fa-search"></i></button>
        </div>
        <div class="header-actions">
          <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
          <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
          <div class="cart-wrap">
            <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
            <span class="cart-count" id="cartCount">0</span>
          </div>
        </div>
      </div>
    </div>
    <div id="mobileMenu">
      <div class="container">
        <ul>
          <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
          <li><a href="#"><i class="far fa-user"></i> Account</a></li>
        </ul>
      </div>
    </div>
  </header>

  <main>
    <!-- Hero -->
    <section class="hero" aria-label="hero">
      <div class="container">
        <div class="badge"><i class="fas fa-sparkles"></i> New collection 2026</div>
        <h1>Premium essentials <br>for everyday</h1>
        <p>Curated fashion, tech & accessories — free shipping on first order.</p>
        <div class="actions">
          <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop now</button>
          <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore deals</button>
        </div>
      </div>
    </section>

    <!-- Categories -->
    <section class="section" id="categories">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2>Categories</h2><p>Find what you love</p></div>
          <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="categories-grid" id="categoriesGrid"></div>
      </div>
    </section>

    <!-- Products -->
    <section class="section" id="products">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2>Trending now</h2><p>Popular picks from our community</p></div>
          <a href="#" class="view-all">View all <i class="fas fa-arrow-right"></i></a>
        </div>
        <div class="products-grid" id="productsGrid"></div>
      </div>
    </section>

    <!-- Deal -->
    <section class="section" id="deals">
      <div class="container">
        <div class="section-header">
          <div class="title-group"><h2>⚡ Flash deal</h2><p>Limited stock – grab it fast</p></div>
        </div>
        <div class="deal-wrap">
          <div class="deal-img">
            <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air" loading="lazy">
          </div>
          <div class="deal-content">
            <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
            <h3>MacBook Air M2</h3>
            <p class="desc">Thin, light, powerful — the M2 chip redefines speed
