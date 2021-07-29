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
</head>


<body>
	<%@ include file="header_nosession.jsp"%> 
	<main class="site-main">

		<!--================ Hero banner start =================-->
		<section>
			<div id="banner_wrap">
				<div id="slide_banner">
					<div><a href="#"><img alt="" src="https://img-cf.kurly.com/shop/data/main/1/pc_img_1626322633.jpg"></a></div>
					<div><a href="#"><img alt="" src="https://img-cf.kurly.com/shop/data/main/1/pc_img_1626861870.jpg"></a></div>
					<div><a href="#"><img alt="" src="https://img-cf.kurly.com/shop/data/main/1/pc_img_1627023648.jpg"></a></div>
				</div>
			</div>
		</section>
		<!--================ Hero banner start =================-->

		<!-- ================ trending product section start ================= -->
		<section class="section-margin calc-60px">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>딱! 필요한 만큼만</p>
					<h2>
						<span class="section-intro__style">소포장</span> 제품
					</h2>
				</div>
				<div class="row">
					<c:forEach items="${mainList }" var="p">
					<div class="col-md-6 col-lg-4 col-xl-3">
						<div class="card text-center card-product">
							<div class="card-product__img">
								<a href="product.do?product_num=${p.product_num }">
								<img class="card-img" src="resources/img/product/${p.product_image }" alt=""></a>
								<ul class="card-product__imgOverlay">
									<!-- <li><button><i class="ti-search"></i></button></li> -->
									<li><button><i class="ti-shopping-cart"></i></button></li>
									<!-- <li><button><i class="ti-heart"></i></button></li> -->
								</ul>
							</div>
							<div class="card-body">
								<p>
								<c:choose>
				                   <c:when test="${p.delivery_num==1}">일반 배송</c:when>
				                   <c:when test="${p.delivery_num==2}">일반/샛별 배송</c:when>
				                   <c:otherwise>샛별 배송</c:otherwise>
				                </c:choose>
								</p>
								<h4 class="card-product__title">
									<a href="product.do?product_num=${p.product_num }">${p.product_name }</a>
								</h4>
								<p class="card-product__price">${p.sale_price}원</p>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</section> 
		<!-- ================ trending product section end ================= -->

		<!-- ================ Best Selling item  carousel ================= -->
<!-- 		<section class="section-margin calc-60px">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>Popular Item in the market</p>
					<h2>
						Best <span class="section-intro__style">Sellers</span>
					</h2>
				</div>
				<div class="owl-carousel owl-theme" id="bestSellerCarousel">
					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product1.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Accessories</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Quartz Belt Watch</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product2.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Beauty</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Women Freshwash</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product3.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product4.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product1.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Accessories</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Quartz Belt Watch</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product2.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Beauty</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Women Freshwash</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product3.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>

					<div class="card text-center card-product">
						<div class="card-product__img">
							<img class="img-fluid" src="resources/img/product/product4.png" alt="">
							<ul class="card-product__imgOverlay">
								<li><button>
										<i class="ti-search"></i>
									</button></li>
								<li><button>
										<i class="ti-shopping-cart"></i>
									</button></li>
								<li><button>
										<i class="ti-heart"></i>
									</button></li>
							</ul>
						</div>
						<div class="card-body">
							<p>Decor</p>
							<h4 class="card-product__title">
								<a href="single-product.html">Room Flash Light</a>
							</h4>
							<p class="card-product__price">$150.00</p>
						</div>
					</div>
				</div>
			</div>
		</section> -->
		<!-- ================ Best Selling item  carousel end ================= -->

		<!-- ================ Blog section start ================= -->
		<!-- <section class="blog">
			<div class="container">
				<div class="section-intro pb-60px">
					<p>Popular Item in the market</p>
					<h2>
						Latest <span class="section-intro__style">News</span>
					</h2>
				</div>

				<div class="row">
					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="card card-blog">
							<div class="card-blog__img">
								<img class="card-img rounded-0" src="resources/img/blog/blog1.png" alt="">
							</div>
							<div class="card-body">
								<ul class="card-blog__info">
									<li><a href="#">By Admin</a></li>
									<li><a href="#"><i class="ti-comments-smiley"></i> 2
											Comments</a></li>
								</ul>
								<h4 class="card-blog__title">
									<a href="single-blog.html">The Richland Center Shooping
										News and weekly shooper</a>
								</h4>
								<p>Let one fifth i bring fly to divided face for bearing
									divide unto seed. Winged divided light Forth.</p>
								<a class="card-blog__link" href="#">Read More <i
									class="ti-arrow-right"></i></a>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="card card-blog">
							<div class="card-blog__img">
								<img class="card-img rounded-0" src="resources/img/blog/blog2.png" alt="">
							</div>
							<div class="card-body">
								<ul class="card-blog__info">
									<li><a href="#">By Admin</a></li>
									<li><a href="#"><i class="ti-comments-smiley"></i> 2
											Comments</a></li>
								</ul>
								<h4 class="card-blog__title">
									<a href="single-blog.html">The Shopping News also offers
										top-quality printing services</a>
								</h4>
								<p>Let one fifth i bring fly to divided face for bearing
									divide unto seed. Winged divided light Forth.</p>
								<a class="card-blog__link" href="#">Read More <i
									class="ti-arrow-right"></i></a>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
						<div class="card card-blog">
							<div class="card-blog__img">
								<img class="card-img rounded-0" src="resources/img/blog/blog3.png" alt="">
							</div>
							<div class="card-body">
								<ul class="card-blog__info">
									<li><a href="#">By Admin</a></li>
									<li><a href="#"><i class="ti-comments-smiley"></i> 2
											Comments</a></li>
								</ul>
								<h4 class="card-blog__title">
									<a href="single-blog.html">Professional design staff and
										efficient equipment you’ll find we offer</a>
								</h4>
								<p>Let one fifth i bring fly to divided face for bearing
									divide unto seed. Winged divided light Forth.</p>
								<a class="card-blog__link" href="#">Read More <i
									class="ti-arrow-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section> -->
		<!-- ================ Blog section end ================= -->

		

	</main>
	<%@ include file="footer.jsp"%> 

	<script src="/littlePick/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="/littlePick/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="/littlePick/resources/vendors/skrollr.min.js"></script>
	<script src="/littlePick/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="/littlePick/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="/littlePick/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="/littlePick/resources/vendors/mail-script.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
	<script src="/littlePick/resources/js/main.js"></script>
</body>
</html>