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
<link rel="icon" href="/littlePick/resources/img/Fevicon.png" type="/littlePick/resources/image/png">
<link rel="stylesheet" href="/littlePick/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="/littlePick/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="/littlePick/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="/littlePick/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="/littlePick/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="/littlePick/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="/littlePick/resources/css/style.css">
<script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script>
$(function(){

	$('#carticon').click(function(){
		var sess = <%= session.getAttribute("user_num") %>;
		if(sess == null){
		  	alert("로그인 후 이용하실 수 있습니다.");
		  	//window.location.href="1_login.do";
		  	//window.replace.href="1_login.do";
		  }
	})

})
</script>
</head>


<body>
  <section>
      <div class="container">
	<%@ include file="header.jsp"%> 
	<main class="site-main">

		<!--================ Hero banner start =================-->
		<section>
			<div id="banner_wrap">
				<div id="banner_wrap">
					<a href="#"><img alt="" src="resources/img/banner/banner4.png" width="1110px"></a>
			</div>
			</div>
		</section>
		<!-- ================ 베스트 ================= -->
 		<section class="section-margin calc-60px">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>꾸준히 찾는 상품</p>
					<h2>
						리틀픽 <span class="section-intro__style">유저픽</span>
					</h2>
				</div>
				<div class="row">
					<c:forEach items="${mainList3 }" var="p3" begin="0" end="15" step="1">
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<a href="product.do?product_num=${p3.product_num }">
								<img class="card-img" src="resources/img/product/${p3.product_image }" alt="" width="255px" height="255px"></a>
								<ul class="card-product__imgOverlay">
									<!-- <li><button><i class="ti-search"></i></button></li> -->
									<li><a id="carticon" href="cartInsert.do?product_num=${p3.product_num}&product_count=1&delivery_num=${p3.delivery_num}">
									<button><i class="ti-shopping-cart"></i></button></a></li>
									<!-- <li><button><i class="ti-heart"></i></button></li> -->
								</ul>
							</div>
							<div class="card-body">
								<p>
								<c:choose>
				                   <c:when test="${p3.delivery_num==1}">일반 배송</c:when>
				                   <c:when test="${p3.delivery_num==2}">샛별 배송</c:when>
				                   <c:when test="${p3.delivery_num==3}">일반/샛별 배송</c:when>
				                   
				                </c:choose>
								</p>
								<h4 class="card-product__title">
									<a href="product.do?product_num=${p3.product_num }">${p3.product_name }</a>
								</h4>
								<p class="card-product__price">${p3.sale_price}원</p>
							</div>
						</div>
					</div>
					</c:forEach>
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