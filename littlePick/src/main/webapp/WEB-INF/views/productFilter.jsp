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
          <form name=speedfilter action="productFilter.do" method="get" id="cateform" name="cateform">
          <div class="catebtn">
         <input type="submit" value="필터링" id="catebtn">
         </div>
       
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
          
          <!-- 카테고리필터 시작-->
          <div class="sidebar-filter">
            <div class="top-filter-head">카테고리 필터</div>
            <div class="common-filter">


			<c:set var='num' value='${num}'/>
			<c:if test="${num == 1 or num == 11 or num == 12 or num == 13 or num == 14}">
              <div class="head">신선식품</div>
          		<ul>
          		  <li class="filter-list"><input class="pixel-radio" type="radio" id="1" name="category_num" value="1" checked><label for="1">전체</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="11" name="category_num" value="11"><label for="11">채소</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="12" name="category_num" value="12"><label for="12">과일</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="13" name="category_num"value="13"><label for="13">수산</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="14" name="category_num"value="14"><label for="14">정육</label></li>
             	</ul>

          	</c:if>
          	
          	
          	
     <c:if test="${num == 2 or num == 21 or num == 22 or num == 23 or num == 24}">
	

              	<div class="head">간편식</div>
              <ul>
              	  <li class="filter-list"><input class="pixel-radio" type="radio" id="2" name="category_num"value="2" checked><label for="2">전체</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="21" name="category_num"value="21"><label for="21">밀키트</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="22" name="category_num"value="22"><label for="22">도시락/샐러드</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="23" name="category_num"value="23"><label for="23">포장식품</label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="24" name="category_num"value="24"><label for="24">양념</label></li>     
        	</ul>
       	
       		</c:if>
 
      <c:if test="${num == 3 or num == 31 or num == 32 or num == 33 or num == 34}">
       
              <div class="head">생필품</div>
          		<ul>
          		<li class="filter-list">
                  	<input class="pixel-radio" type="radio" id="3" name="category_num"value="3" checked>
                  	<label for="3">전체</label>
                  </li>
                  <li class="filter-list">
                  	<input class="pixel-radio" type="radio" id="31" name="category_num"value="31">
                  	<label for="31">생수/음료</label>
                  </li>
                  <li class="filter-list">
                  	<input class="pixel-radio" type="radio" id="32" name="category_num"value="32">
                  		<label for="32">세제/청소용품</label>
                  </li>
                  <li class="filter-list">
                  	<input class="pixel-radio" type="radio" id="33" name="category_num"value="33">
                  		<label for="33">건강식품</label>
                  </li>
                  <li class="filter-list">
                  	<input class="pixel-radio" type="radio" id="34" name="category_num"value="34">
                  	<label for="34">기타</label>
                  </li>
                </ul>
            
            </c:if>    
            </div>
          </div>
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
            <div>
            

           <%--  <!-- 페이지 번호 출력 시작 -->
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
			<!-- 페이지 번호 출력 끛 -->--%>
            </div>
          </section>
          <!-- end Best Seller -->
          
          
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