<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>header</title>
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
		<div class="top_menu_container">
			<ul class="top_menu_list">
				<li class="top_menu_item"><a class="top_menu_anchor" href="register.do">회원가입</a></li>
				<li class="top_menu_item"><a class="top_menu_anchor" href="login.do">로그인</a></li>
				<li class="top_menu_item"><a class="top_menu_anchor" href="#">고객센터</a></li>		
			</ul>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="top_container">
					<div class="logo_container">
						<a class="navbar-brand logo_h" href="index.html"><img src="resources/img/logo.png" alt=""></a>
						<button class="navbar-toggler" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-bars"></i> 전체 카테고리</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="#">신선식품 </a></li>
									<li class="nav-item"><a class="nav-link" href="#">간편식</a></li>
									<li class="nav-item"><a class="nav-link" href="#">생필품 </a></li>
								</ul>
							</li>
							
							<li class="nav-item submenu dropdown"><a class="nav-link" href="index.html">신상품</a></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">베스트</a>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">특가/혜택</a>
							</li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">커뮤니티</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="#">요리 </a></li>
									<li class="nav-item"><a class="nav-link" href="#">생활</a></li>
									<li class="nav-item"><a class="nav-link" href="#">건강</a></li>
									<li class="nav-item"><a class="nav-link" href="#">번개팅</a></li>
								</ul>
							</li>
						</ul>

						<ul class="nav-shop">
							<li class="nav-item"><input id="search_input_box" type="text" placeholder="search"><button><i class="ti-search"></i></button></li>
							<li class="nav-item"><button><i class="fas fa-shipping-fast"></i></button></li>
							<li class="nav-item"><button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button></li>
							<!-- <li class="nav-item"><a class="button button-header" href="#">Buy Now</a></li> -->
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	
	<!--================ End Header Menu Area =================-->


	<script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="resources/vendors/skrollr.min.js"></script>
	<script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="resources/vendors/mail-script.js"></script>
	<script src="resources/js/main.js"></script>
</body>
</html>