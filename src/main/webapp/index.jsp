<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <title>Nexus · elegant e‑commerce</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" crossorigin="anonymous" />
  <style>
    * { margin:0; padding:0; box-sizing:border-box; }
    :root {
      --bg: #f3f0ea;
      --card: rgba(255, 255, 255, 0.75);
      --primary: #1e1e2a;
      --primary-light: #2d2d44;
      --accent: #c47a5a;
      --accent-soft: #edd5c8;
      --accent-dark: #a85f42;
      --muted: #5f5f72;
      --muted-light: #9a9aae;
      --surface: rgba(235, 230, 220, 0.5);
      --shadow: 0 12px 40px -10px rgba(0,0,0,0.08);
      --shadow-hover: 0 24px 56px -16px rgba(30,30,42,0.18);
      --radius: 24px;
      --radius-sm: 14px;
      --transition: 0.3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
    }
    html { scroll-behavior: smooth; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: var(--bg);
      background-image: 
        radial-gradient(circle at 10% 20%, rgba(196, 122, 90, 0.05) 0%, transparent 50%),
        radial-gradient(circle at 90% 80%, rgba(196, 122, 90, 0.06) 0%, transparent 50%),
        repeating-linear-gradient(45deg, rgba(255,255,255,0.02) 0px, rgba(255,255,255,0.02) 2px, transparent 2px, transparent 6px);
      color: var(--primary);
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
      min-height: 100vh;
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

    /* ----- glassmorphism buttons ----- */
    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 14px 34px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      transition: var(--transition);
      border: 1px solid rgba(255,255,255,0.15);
      backdrop-filter: blur(6px);
      -webkit-backdrop-filter: blur(6px);
      letter-spacing: 0.2px;
    }
    .btn-primary {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      box-shadow: 0 6px 20px rgba(196, 122, 90, 0.25);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(196, 122, 90, 0.35);
    }
    .btn-secondary {
      background: rgba(30, 30, 42, 0.6);
      backdrop-filter: blur(8px);
      color: #fff;
      border-color: rgba(255,255,255,0.2);
    }
    .btn-secondary:hover {
      background: rgba(30, 30, 42, 0.8);
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(0,0,0,0.15);
    }
    .btn-outline {
      background: rgba(255,255,255,0.25);
      backdrop-filter: blur(8px);
      color: var(--primary);
      border-color: rgba(30,30,42,0.1);
    }
    .btn-outline:hover {
      background: var(--primary);
      color: #fff;
      border-color: var(--primary);
      transform: translateY(-3px);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(8px);
      color: #fff;
      border-color: rgba(255,255,255,0.15);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.18);
      transform: translateY(-3px);
    }
    .btn-sm { padding: 10px 22px; font-size: 13px; }

    /* ----- header (glass) ----- */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: rgba(243, 240, 234, 0.7);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(255,255,255,0.2);
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
      gap: 10px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.4px;
      color: var(--primary);
    }
    .brand i { font-size: 26px; color: var(--accent); background: rgba(196,122,90,0.1); padding: 6px; border-radius: 14px; }
    .brand .accent { color: var(--accent); }

    .main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    .main-nav ul li a {
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--muted);
      transition: var(--transition);
      background: transparent;
    }
    .main-nav ul li a:hover,
    .main-nav ul li a.active {
      background: rgba(255,255,255,0.5);
      backdrop-filter: blur(4px);
      color: var(--primary);
      box-shadow: 0 4px 12px rgba(0,0,0,0.02);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 2px;
    }
    .icon-btn {
      width: 44px;
      height: 44px;
      display: grid;
      place-items: center;
      border-radius: 60px;
      font-size: 18px;
      color: var(--muted);
      transition: var(--transition);
      position: relative;
      background: rgba(255,255,255,0.2);
      backdrop-filter: blur(4px);
    }
    .icon-btn:hover {
      background: rgba(255,255,255,0.6);
      color: var(--primary);
      transform: scale(1.05);
    }
    .cart-wrap { position: relative; }
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
      border: 2px solid #f3f0ea;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: rgba(255,255,255,0.35);
      backdrop-filter: blur(8px);
      border-radius: 60px;
      padding: 0 12px 0 20px;
      border: 1px solid rgba(255,255,255,0.3);
      transition: var(--transition);
      min-width: 190px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: rgba(255,255,255,0.7);
      box-shadow: 0 0 0 6px rgba(196,122,90,0.06);
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
      width: 44px;
      height: 44px;
      border-radius: 60px;
      font-size: 18px;
      background: rgba(255,255,255,0.3);
      backdrop-filter: blur(4px);
    }
    #mobileMenu {
      display: none;
      background: rgba(255,255,255,0.6);
      backdrop-filter: blur(20px);
      border-top: 1px solid rgba(255,255,255,0.2);
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
    #mobileMenu ul li a:hover { background: rgba(255,255,255,0.5); }

    /* ----- hero (soft gradient + glass) ----- */
    .hero {
      position: relative;
      border-radius: var(--radius);
      overflow: hidden;
      margin: 24px 24px 0;
      background: linear-gradient(145deg, #2b2b3a, #3d3d56);
      min-height: 420px;
      display: flex;
      align-items: center;
      padding: 40px 0;
      box-shadow: 0 20px 60px -20px rgba(0,0,0,0.2);
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.2;
      z-index: 0;
    }
    .hero::after {
      content: '';
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at 70% 30%, rgba(196,122,90,0.15), transparent 70%);
      z-index: 0;
    }
    .hero .container { position: relative; z-index: 1; }
    .hero .badge {
      display: inline-block;
      background: rgba(196,122,90,0.2);
      backdrop-filter: blur(4px);
      color: #f0d5c8;
      padding: 4px 18px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      margin-bottom: 14px;
      border: 1px solid rgba(255,255,255,0.05);
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-size: 48px;
      font-weight: 700;
      color: #fff;
      line-height: 1.1;
      max-width: 620px;
      margin-bottom: 12px;
      text-shadow: 0 4px 30px rgba(0,0,0,0.1);
    }
    .hero p {
      color: rgba(255,255,255,0.8);
      font-size: 17px;
      max-width: 460px;
      margin-bottom: 28px;
      line-height: 1.6;
    }
    .hero .actions { display: flex; gap: 14px; flex-wrap: wrap; }

    /* ----- sections ----- */
    .section { padding: 56px 0; }
    .section-header {
      display: flex;
      align-items: flex-end;
      justify-content: space-between;
      gap: 16px;
      margin-bottom: 32px;
      flex-wrap: wrap;
    }
    .section-header .title-group h2 {
      font-size: 30px;
      font-weight: 700;
      letter-spacing: -0.3px;
      color: var(--primary);
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
      gap: 8px;
      font-size: 14px;
      transition: var(--transition);
      background: rgba(255,255,255,0.3);
      backdrop-filter: blur(4px);
      padding: 8px 18px;
      border-radius: 60px;
      border: 1px solid rgba(255,255,255,0.2);
    }
    .section-header .view-all:hover { gap: 14px; background: rgba(255,255,255,0.5); }

    /* ----- categories (glass) ----- */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6,1fr);
      gap: 18px;
    }
    .cat-card {
      background: var(--card);
      backdrop-filter: blur(8px);
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: pointer;
      border: 1px solid rgba(255,255,255,0.25);
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
      background: rgba(255,255,255,0.85);
    }
    .cat-card .icon-wrap {
      width: 60px;
      height: 60px;
      border-radius: 60px;
      background: var(--accent-soft);
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 26px;
      color: var(--accent);
      transition: var(--transition);
    }
    .cat-card:hover .icon-wrap { background: var(--accent); color: #fff; }
    .cat-card h4 { font-size: 15px; font-weight: 600; }
    .cat-card .count { font-size: 13px; color: var(--muted); margin-top: 4px; }

    /* ----- products (glass) ----- */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4,1fr);
      gap: 22px;
    }
    .product-card {
      background: var(--card);
      backdrop-filter: blur(8px);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(255,255,255,0.2);
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-soft);
      background: rgba(255,255,255,0.85);
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
    .product-card:hover .img-wrap img { transform: scale(1.05); }
    .product-card .badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #fff;
      padding: 4px 14px;
      border-radius: 60px;
      font-size: 11px;
      font-weight: 700;
      backdrop-filter: blur(4px);
    }
    .product-card .badge.sale { background: #d4a373; color: #fff; }
    .product-card .wish-btn {
      position: absolute;
      top: 14px;
      right: 14px;
      width: 36px;
      height: 36px;
      border-radius: 60px;
      background: rgba(255,255,255,0.7);
      backdrop-filter: blur(8px);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
    }
    .product-card .wish-btn:hover { background: #fff; color: var(--accent); transform: scale(1.1); }
    .product-card .body {
      padding: 16px 18px 8px;
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
    .product-card .body .price { font-weight: 700; font-size: 18px; color: var(--primary); }
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
      color: #d4a373;
    }
    .product-card .body .rating span { color: var(--muted); font-weight: 400; }
    .product-card .footer {
      padding: 0 18px 18px;
      display: flex;
      gap: 8px;
    }
    .product-card .footer .add-btn {
      flex: 1;
      padding: 12px;
      border-radius: var(--radius-sm);
      background: rgba(30,30,42,0.8);
      backdrop-filter: blur(4px);
      color: #fff;
      font-weight: 600;
      font-size: 14px;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      border: 1px solid rgba(255,255,255,0.05);
    }
    .product-card .footer .add-btn:hover { background: var(--accent); transform: scale(1.02); }
    .product-card .footer .add-btn.added { background: #2a9d8f; }

    /* ----- deal (glass) ----- */
    .deal-wrap {
      display: flex;
      gap: 0;
      background: var(--card);
      backdrop-filter: blur(8px);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      border: 1px solid rgba(255,255,255,0.2);
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
      padding: 40px 44px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .deal-content .tag {
      background: #d4a373;
      color: #fff;
      padding: 4px 16px;
      border-radius: 60px;
      font-size: 12px;
      font-weight: 700;
      text-transform: uppercase;
      align-self: flex-start;
      margin-bottom: 10px;
      backdrop-filter: blur(4px);
    }
    .deal-wrap .deal-content h3 { font-size: 28px; font-weight: 700; margin-bottom: 4px; }
    .deal-wrap .deal-content .desc { color: var(--muted); margin-bottom: 14px; }
    .deal-wrap .deal-content .price-big {
      font-size: 36px;
      font-weight: 800;
      color: var(--primary);
    }
    .deal-wrap .deal-content .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--muted-light);
      text-decoration: line-through;
      margin-left: 12px;
    }
    .deal-wrap .deal-content .stock { font-size: 14px; color: var(--muted); margin: 4px 0 14px; }
    .deal-wrap .deal-content .stock strong { color: var(--accent); }

    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 12px 0 20px;
    }
    .timer-box {
      background: rgba(30,30,42,0.7);
      backdrop-filter: blur(8px);
      color: #fff;
      padding: 10px 16px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
      border: 1px solid rgba(255,255,255,0.05);
    }
    .timer-box .num { font-size: 26px; font-weight: 700; line-height: 1.2; }
    .timer-box .label { font-size: 10px; opacity: 0.7; text-transform: uppercase; }

    /* ----- testimonials (glass) ----- */
    .testimonials-scroll {
      display: flex;
      gap: 22px;
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
      backdrop-filter: blur(8px);
      border-radius: var(--radius);
      padding: 24px 28px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: var(--transition);
      border: 1px solid rgba(255,255,255,0.2);
    }
    .testimonial-card:hover { box-shadow: var(--shadow-hover); background: rgba(255,255,255,0.85); }
    .testimonial-card .stars { color: #d4a373; font-size: 16px; letter-spacing: 1px; margin-bottom: 10px; }
    .testimonial-card blockquote { font-size: 15px; line-height: 1.6; color: var(--primary); font-style: italic; margin-bottom: 14px; }
    .testimonial-card .author { display: flex; align-items: center; gap: 12px; }
    .testimonial-card .author .avatar {
      width: 44px; height: 44px;
      border-radius: 60px;
      object-fit: cover;
      background: var(--surface);
    }
    .testimonial-card .author .name { font-weight: 600; font-size: 14px; }
    .testimonial-card .author .role { font-size: 13px; color: var(--muted); }

    /* ----- newsletter (glass) ----- */
    .newsletter-wrap {
      background: rgba(30,30,42,0.5);
      backdrop-filter: blur(16px);
      border-radius: var(--radius);
      padding: 48px 56px;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 30px;
      flex-wrap: wrap;
      border: 1px solid rgba(255,255,255,0.08);
    }
    .newsletter-wrap .text h3 { font-size: 28px; font-weight: 700; margin-bottom: 2px; }
    .newsletter-wrap .text p { opacity: 0.75; font-size: 15px; }
    .newsletter-wrap form {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
      flex: 1;
      max-width: 460px;
    }
    .newsletter-wrap form input {
      flex: 1;
      min-width: 180px;
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      font-size: 15px;
      background: rgba(255,255,255,0.08);
      backdrop-filter: blur(4px);
      color: #fff;
      transition: var(--transition);
      outline: 2px solid transparent;
      border: 1px solid rgba(255,255,255,0.05);
    }
    .newsletter-wrap form input::placeholder { color: rgba(255,255,255,0.4); }
    .newsletter-wrap form input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.14);
    }
    .newsletter-wrap form .btn {
      background: var(--accent);
      color: #fff;
      border-color: var(--accent);
      padding: 16px 36px;
    }
    .newsletter-wrap form .btn:hover { background: var(--accent-dark); border-color: var(--accent-dark); }
    #newsletterMsg { margin-top: 12px; font-size: 14px; opacity: 0.9; width: 100%; }

    /* ----- footer (glass) ----- */
    footer {
      padding: 48px 0 28px;
      border-top: 1px solid rgba(255,255,255,0.1);
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 32px;
    }
    .footer-grid .brand-col .brand { font-size: 20px; margin-bottom: 8px; }
    .footer-grid .brand-col p { color: var(--muted); font-size: 14px; max-width: 280px; line-height: 1.6; }
    .footer-grid .brand-col .socials { display: flex; gap: 12px; margin-top: 14px; }
    .footer-grid .brand-col .socials a {
      width: 40px; height: 40px;
      border-radius: 60px;
      background: rgba(255,255,255,0.2);
      backdrop-filter: blur(4px);
      display: grid;
      place-items: center;
      color: var(--muted);
      transition: var(--transition);
      border: 1px solid rgba(255,255,255,0.05);
    }
    .footer-grid .brand-col .socials a:hover { background: var(--accent); color: #fff; }
    .footer-grid .col h5 { font-weight: 700; font-size: 14px; margin-bottom: 12px; color: var(--primary); }
    .footer-grid .col ul { list-style: none; display: flex; flex-direction: column; gap: 8px; }
    .footer-grid .col ul li a { color: var(--muted); font-size: 14px; transition: var(--transition); }
    .footer-grid .col ul li a:hover { color: var(--accent); }
    .footer-bottom { text-align: center; padding-top: 20px; border-top: 1px solid rgba(255,255,255,0.05); color: var(--muted-light); font-size: 13px; }

    /* ----- responsive ----- */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
      .footer-grid { grid-template-columns: 1fr 1fr; gap: 28px; }
    }
    @media (max-width: 992px) {
      .hero { margin: 16px 16px 0; min-height: 340px; }
      .hero h1 { font-size: 36px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 200px; }
      .deal-wrap .deal-content { padding: 28px 30px; }
      .newsletter-wrap { padding: 32px 28px; flex-direction: column; text-align: center; }
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
      .header-actions .icon-btn { width: 38px; height: 38px; font-size: 15px; }
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
      .cat-card .icon-wrap { width: 44px; height: 44px; font-size: 20px; }
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
      </
