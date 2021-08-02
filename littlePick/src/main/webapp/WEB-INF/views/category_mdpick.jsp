<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>LittlePick - Main</title>
<link rel="icon" href="resources/img/Fevicon.png" type="/littlePick/resources/image/png">
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>


<body>
  <section>
      <div class="container">
	<%@ include file="header.jsp"%> 
	<main class="site-main">

		<!--================ Hero banner start =================-->
<!-- 		<section>
			<div id="banner_wrap">
				<div id="banner_wrap">
					<a href="#"><img alt="" src="resources/img/banner/banner1.png" width="1110px"></a>
			</div>
			</div>
		</section> -->
		<!-- ================ 베스트 ================= -->
 		<section class="section-margin calc-60px">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>직원도 구매하는 꿀템</p>
					<h2>
						<span class="section-intro__style">MD추천</span>
					</h2>
				</div>
				<div class="row">
				
				<!-- 상품 시작 -->
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<a href="product.do?product_num=${p3.product_num }">
								<img class="card-img" src="resources/img/product/${p3.product_image }" alt="" width="255px" height="255px"></a>
							
							</div>
							<div class="card-body">
								<h4 class="card-product__title">
									<a href="product.do?product_num=${p3.product_num }">${p3.product_name }</a>
								</h4>
								<p class="card-product__price">${p3.sale_price}원</p>
							</div>
						</div>
					</div>
				<!-- 상품 끝 -->
				<!-- 상품 시작 -->
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<a href="product.do?product_num=${p3.product_num }">
								<img class="card-img" src="resources/img/product/${p3.product_image }" alt="" width="255px" height="255px"></a>
							
							</div>
							<div class="card-body">
								<h4 class="card-product__title">
									<a href="product.do?product_num=${p3.product_num }">${p3.product_name }</a>
								</h4>
								<p class="card-product__price">${p3.sale_price}원</p>
							</div>
						</div>
					</div>
				<!-- 상품 끝 -->
				<!-- 상품 시작 -->
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<a href="product.do?product_num=${p3.product_num }">
								<img class="card-img" src="resources/img/product/${p3.product_image }" alt="" width="255px" height="255px"></a>
							
							</div>
							<div class="card-body">
								<h4 class="card-product__title">
									<a href="product.do?product_num=${p3.product_num }">${p3.product_name }</a>
								</h4>
								<p class="card-product__price">${p3.sale_price}원</p>
							</div>
						</div>
					</div>
				<!-- 상품 끝 -->
				<!-- 상품 시작 -->
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<a href="product.do?product_num=${p3.product_num }">
								<img class="card-img" src="resources/img/product/${p3.product_image }" alt="" width="255px" height="255px"></a>
							
							</div>
							<div class="card-body">
								<h4 class="card-product__title">
									<a href="product.do?product_num=${p3.product_num }">${p3.product_name }</a>
								</h4>
								<p class="card-product__price">${p3.sale_price}원</p>
							</div>
						</div>
					</div>
				<!-- 상품 끝 -->
				
				</div>
			</div>
		</section> 

		

	</main>
	<%@ include file="footer.jsp"%> 

	<script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="resources/vendors/skrollr.min.js"></script>
	<script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="resources/vendors/mail-script.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
	<script src="resources/js/main.js"></script>
	</div>
	</section>
</body>
</html>