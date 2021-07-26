<%@page import="com.littlePick.domain.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리-신선식품</title>
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
 
 <%@ include file="header.jsp" %>
 
 <!-- ================ start banner area ================= -->	
<!-- 	<section class="blog-banner-area" id="category">
		<div class="container product-banner">
			<div class="product-banner">
				<div class="text-category">
					<h5>신선식품</h5>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">신선식품</a></li>
              <li class="breadcrumb-item active" aria-current="page">과일/채소</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section> -->	
	<!-- ================ end banner area ================= -->


	<!-- ================ category section start ================= -->		  
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
         <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">빠른 검색</div>
            <ul class="main-categories">
              <li class="common-filter">
                <form name=speedfilter action="filterList.do" method="post">
                  <ul>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="smallPack" name="smallpack" value="true"><label for="smallPack">소포장<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="normalPack" name="normalPack" value="false"><label for="normalPack">일반포장<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="starDelivery" name="delivery_num" value="3"><label for="starDelivery">샛별배송<span> (3600)</span></label></li>
                    <li class="filter-list"><input class="pixel-radio" type="radio" id="normalDelivery" name="delivery_num" value="1"><label for="normalDelivery">일반배송<span> (3600)</span></label></li>
                  </ul>
                </form>
              </li>
            </ul>
          </div>
          <div class="sidebar-filter">
            <div class="top-filter-head">상품 필터</div>
            <div class="common-filter">
              <div class="head">신선식품</div>
              <form action="#">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">채소<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">과일<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">수산<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">정육<span>(19)</span></label></li>
                </ul>
              </form>
            </div>
            <div class="common-filter">
              <div class="head">간편식</div>
              <form action="#">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">밀키트<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">도시락/샐러드<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">포장식품<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">양념<span>(19)</span></label></li>
                </ul>
              </form>
            </div>
            <div class="common-filter">
              <div class="head">생필품</div>
              <form action="#">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">생수/음료<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">세제/청소용품<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">건강식품<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">양념<span>(19)</span></label></li>
                </ul>
              </form>
            </div>
<!--             <div class="common-filter">
              <div class="head">가격</div>
              <div class="price-range-area">
                <div id="price-range"></div>
                <div class="value-wrapper d-flex">
                  <div class="price">Price:</div>
                  <span>$</span>
                  <div id="lower-value"></div>
                  <div class="to">to</div>
                  <span>$</span>
                  <div id="upper-value"></div>
                </div>
              </div>
            </div> -->
          </div>
        </div>
        
        
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
<!--           <div class="filter-bar d-flex flex-wrap align-items-center">
      		 <div class="sorting">
              <select>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
              </select>
            </div>
            <div class="sorting mr-auto">
              <select>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
              </select>
            </div>
            검색 
            <div>
            <form action="productList.do" method="get">
               <div class="input-group filter-bar-search">
                <input type="text" name="product_name"placeholder="Search">
                <div class="input-group-append">
                  <button type="submit"><i class="ti-search"></i></button>
                </div>
              </div>
            </form>
            </div>           
          </div> -->
          <!-- End Filter Bar -->
         
          
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">
            <!-- 동적으로 상품리스트 만들기 -->
            <c:forEach items="${list }" var="p">
				<div class="col-md-6 col-lg-4">
                <div class="card text-center card-product">
                  <div class="card-product__img">
                    <a href="product.do?product_num=${p.product_num }">
                    <img class="card-img" src="resources/img/product/${p.product_image }" alt="상품이미지"></a>                   
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
                    <h4 class="card-product__title"><a href="product.do?product_num=${p.product_num }">${p.product_name }</a></h4>
                    <p class="card-product__price">${p.sale_price}원</p>
                  </div>
                </div>
              </div>
			</c:forEach>

            </div>
            <div>
            <!-- 페이지 번호 출력 시작 -->
            <ul class="btn-group pagination">
			    <c:if test="${pageMaker.prev }">
			    <li>
			        <a href='<c:url value="productList.do?page=${pageMaker.startPage-1 }"/>'><i class="fas fa-angle-left"></i></a>
			    </li>
			    </c:if>
			    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="pageNum">
			    <li>
			        <a href='<c:url value="productList.do?page=${pageNum }"/>'><i class="fa">${pageNum }</i></a>
			    </li>
			    </c:forEach>
			    <c:if test="${pageMaker.next && pageMaker.endPage >0 }">
			    <li>
			        <a href='<c:url value="productList.do?page=${pageMaker.endPage+1 }"/>'><i class="fas fa-angle-right"></i></a>
			    </li>
			    </c:if>
			</ul>
			<!-- 페이지 번호 출력 끛 -->
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->
	
	
	<!-- ================ page section start ================= -->
	


	
	<!-- ================ page section end ================= -->		  

	


 <%@ include file="footer.jsp" %>
 
 	<script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="resources/vendors/skrollr.min.js"></script>
	<script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="resources/vendors/mail-script.js"></script>
	<script src="resources/js/productList.js"></script>
	<script src="resources/js/main.js"></script>


</body>
</html>