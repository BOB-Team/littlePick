<%@page import="com.littlePick.domain.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리</title>
<link rel="stylesheet" href="resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/style_0729.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
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
 
 <%@ include file="header.jsp" %>



	<!-- ================ category section start ================= -->		  
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
       <!-- 사이드바 시작 -->
         <div class="col-xl-3 col-lg-4 col-md-5">
          <!-- 상단 필터 시작-->
          <form name=speedfilter action="productSearch.do" method="get" id="cateform" name="cateform">
          <div class="catebtn">
         <input type="submit" value="필터링" id="catebtn">
         </div>
        
        
        <c:set var='name' value='${name}'/> 
		<c:if test="${name != null}">
         <a>검색어 : </a><input type="text" id="product_name" name="product_name" value="${name}"><hr>
        </c:if>
        
        
         <div class="sidebar-categories">
            <div class="head">소포장</div>
            <ul class="main-categories">
              <li class="common-filter">
                
                  <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="allpack" name="smallpack" value="0" checked><label for="allpack">전체</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="smallpack" name="smallpack" value="1"><label for="smallpack">소포장</label></li>     
              	 </ul>
            
              </li>
            </ul>
          </div>
          <br>
          <!-- 상단필터 끝 -->
          <!-- 상단필터 2 시작 -->
   			<div class="sidebar-categories">
            <div class="head">배송 필터</div>
            <ul class="main-categories">
              <li class="common-filter">
             
                  <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="3" name="delivery_num" value="3" checked><label for="3">전체</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="2" name="delivery_num" value="2"><label for="2">샛별배송</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="1" name="delivery_num" value="1"><label for="1">일반배송</label></li>        
               	</ul>
      
              </li>
            </ul>
          </div>
          <!-- 상단필터 2 끝 -->
           <!-- 상단 필터 끝-->
          
         
          </form>
</div>
          <!-- 카테고리필터 끝 -->

          <!-- 사이드바 끝 -->
          <div class="col-xl-9 col-lg-8 col-md-7">
          
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">
            <!-- 동적으로 상품리스트 만들기 -->
            <c:forEach items="${list}" var="p">
				<div class="col-md-6 col-lg-4">
                <div class="card text-center card-product">
                  <div class="card-product__img">
                    <a href="product.do?product_num=${p.product_num }">
                    <img class="card-img" src="resources/img/product/${p.product_image }" alt="상품이미지"></a>                   
                    <ul class="card-product__imgOverlay">
                      <!-- <li><button><i class="ti-search"></i></button></li> -->
                     <li><a id="carticon" href="cartInsert.do?product_num=${p.product_num}&product_count=1&delivery_num=${p.delivery_num}">
									<button><i class="ti-shopping-cart"></i></button></a></li>
                      <!-- <li><button><i class="ti-heart"></i></button></li> -->
                    </ul>
                  </div>
                  <div class="card-body">
                    <p>
                    <c:choose>
				                   <c:when test="${p.delivery_num==1}">일반 배송</c:when>
				                   <c:when test="${p.delivery_num==2}">샛별 배송</c:when>
				                   <c:when test="${p.delivery_num==3}">일반/샛별 배송</c:when>
				                </c:choose>
	                </p>   
                    <h4 class="card-product__title"><a href="product.do?product_num=${p.product_num }">${p.product_name }</a></h4>
                    <p class="card-product__price">${p.sale_price}원</p>
                  </div>
                </div>
              </div>
			</c:forEach>
			
			<!-- 상품리스트 끝 -->

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
 
 	
	<script src="resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="resources/vendors/skrollr.min.js"></script>
	<script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="resources/vendors/mail-script.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</body>
</html>