<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 상세페이지</title>
<link rel="icon" href="resources/img/Fevicon.png" type="resources/image/png">
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/style_0729.css">
<script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
<script>
$(function(){

	$('#cart-int').click(function(){
		var sess = <%= session.getAttribute("user_num") %>;
		if(sess == null){
		  	alert("로그인 후 이용하실 수 있습니다.");

		  }
	})

})
</script>
</head>
<body>
<%@ include file="header.jsp" %>

<!-- ================ start banner area ================= -->	
<!-- 	<section class="blog-banner-area" id="category">
		<div class="container product-banner">
			<div class="product-banner">
				<div class="text-category">
					<h5>상품</h5>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">상품 상세</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section> -->
	<!-- ================ end banner area ================= -->


  <!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="owl-carousel owl-theme s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="resources/img/product/${product.product_image }" alt="">
						</div>
						<!-- <div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div> -->
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
				
					<div class="s_product_text">
					<div class="product-tag">
				<a class="button" href="community_search.do?searchCondition=content_title&searchKeyword=${product.product_tag}">#${product.product_tag}</a>
				</div>
					<form id="cart-int"action="cartInsert.do" method="get">
						<h3>${product.product_name }</h3>	
						<br/>
						<h2><span id="price">${product.sale_price }</span>원</h2>
						<br/>
						<p>${product.product_info }</p>
						<div class="product_count">
							
		              		<label for="qty"><h5>수량:</h5></label>    
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
		               				class="reduced items-count" type="button"><i class="far fa-minus-square"></i></button>
		               		<input type="hidden" name="product_num" value=${product.product_num }>
		               		<input type="text" name="product_count" id="sst" size="2" maxlength="12" value="1" title="Quantity:" class="input-text qty">
		               		<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
									class="increase items-count" type="button"><i class="far fa-plus-square"></i></button>
							
		               		<br/><br/>          
						</div>
						<div class="product_total_area">
						<div><label><h5>총 상품 금액:&nbsp;&nbsp;</h5></label><label><h2><span id="product_total">${product.sale_price }</span>원</h2></label><br/></div>
						<!-- <div><h5>로그인 후, 회원할인가와 적립혜택 제공</h5></div> -->
						</div>
						<div class="stock_cart_area">
						<a class="button stock-alarm-btn" href="#">재고알림</a><a class="button primary-btn" onclick="document.getElementById('cart-int').submit();">장바구니 담기</a>     
						</div>
<!-- 					<div class="card_area d-flex align-items-center">
							<a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
							<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
						</div> 
-->					
					</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
		
			<!-- 탭부분 -->
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">상세정보</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">리뷰</a>
				</li>
	
			</ul>
			
			
			
			<!-- 중간부분 -->
			<div class="tab-content" id="myTabContent">

				<!-- 상세정보 -->
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<h3>${product.product_name}</h3>
						<div class="pd-img">
						<img src="resources/img/product/${product.product_image}" width="600px">
						<p>${product.product_info }</p>
						</div>
					</div>
				</div>
				
				
				<!-- 리뷰 -->
				<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-12">
						
						<!-- 별점 -->
						<div class="star">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>별점</h5>
										<h4>${avgstar}</h4>
										<h6>리뷰 ${count}</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<ul class="list">
											<li>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<a>--  ${star5}개</a></li>
											<li>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<a>-------  ${star4}개</a></li>
											<li>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<a>------------  ${star3}개</a></li>
											
											<li>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<a>-----------------  ${star2}개</a></li>
											<li>
											<i class="fa fa-star"></i>
											<a>----------------------  ${star1}개</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
							
							
							<!-- 리뷰리스트 -->
							<div class="review_list">
						
							<!-- 반복시작 -->
							<c:forEach items="${reviewList}" var="review">
							<div class="review-area">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<a href ="mypage_userpage.do?user_num=${review.user_num}"><img src="resources/upload/user/${review.user_image}" alt="" width=30px; height="30px"></a>
										</div>
										<div class="media-body">
											<a href ="mypage_userpage.do?user_num=${review.user_num}">${review.user_nickname}</a>
											<c:forEach var="star" begin="1" end="${review.review_star}" step="1">
											<i class="fa fa-star"></i>
											</c:forEach>
										</div>
									</div>

									<div class="review_img">
									<img src="resources/upload/review/${review.review_image}" alt="" width="100px" height="100px">
									</div>
									<div class="review_content">
									<p>${review.review_content}</p>
									</div>
								</div>
								</div>
								</c:forEach>
								<!-- 반복끝 -->
							</div>
							</div>
						</div>
					</div>
				
				
			</div>
			
			<!-- 중간부분 끝 -->
		</div>
	</section>
	<!--================End Product Description Area =================-->

	



<%@ include file="footer.jsp" %>

	<script src="resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="resources/vendors/skrollr.min.js"></script>
	<script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="resources/vendors/mail-script.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/product.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</body>
</html>