<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="icon" href="resources/img/Fevicon.png" type="resources/image/png">
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
<%@ include file="header.jsp" %>

 <!--================Cart Area =================-->
 <ul class="top_menu_list">
		<!-- <li class="top_menu_item"><a class="top_menu_anchor" href="orderList.do">주문목록</a></li> -->
			</ul>		
<!--  <a href="orderList.do">주문목록</a> -->
  <section class="cart_area">
      <div class="container">
          <div class="cart_inner">
          	  <div class="cart_title">
				<h2><span class="section-intro__style">장바구니</span>	</h2>
			  </div>
              <div class="table-responsive">
                  <table class="table" id="cart-table" >
                      <thead>
							<tr><th></th></tr>
                      </thead>
                      <tbody>
							<c:if test="${map.countNormal == 0 and map.countStar ==0}">
							<tr>
                      			<th colspan="6">장바구니에 담긴 상품이 없습니다.</th>
                      		</tr>
                      		</c:if>
                      		
                      		<c:if test="${map.countNormal != 0}">
							<tr>
                      			<th colspan="6">일반 배송</th>
                      		</tr>
                      		</c:if>
                      		

		                   <c:forEach items="${map.listNormal }" var="n" >
		                   <tr>
                          	<td><input type="checkbox" id="item_check" name="item_check" value="${n.cart_num}"></td>
                              <td>
                                  <div class="media">
                                      <div class="d-flex">
                                          <a href="product.do?product_num=${n.product_num }">
                                          	<img src="resources/img/product/${n.product_image }" alt="" width="100">
                                          </a>
                                      </div>
                                      <div class="media-body">
                                          <a href="product.do?product_num=${n.product_num }"><p>${n.product_name} </p></a>
                                      </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5><span id="price">${n.sale_price}</span>원</h5>
                              </td>
                              <td>
                                  <div class="product_count">
                                  		<div>
	                                      <input type="text" name="product_count" id="sst" maxlength="12" value="${n.product_count}" title="Quantity:"
	                                          class="input-text qty" style="width:10">
                                       </div>
                                       <div class="cart_qty_btn">
	                                      <button class="increase cart-count" type="button"><i class="fas fa-angle-up"></i></button>
	                                      <button class="reduced cart-count" type="button"><i class="fas fa-angle-down"></i></button>
                                       </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5><span id="product_total">${n.single_price}</span>원</h5>
                              </td>
                              <td><a href="cartDelete.do?cart_num=${n.cart_num}"><i class="fas fa-times"></i></a></td>
                          </tr>
                          </c:forEach>
                          
                         
                      		<c:if test="${map.countStar != 0}">
								<tr>
	                      			<th colspan="6">샛별 배송</th>
	                      		</tr>
                      		</c:if>

		                   <c:forEach items="${map.listStar }" var="s" >
		                   <tr>
                              <td><input type="checkbox" id="item_check" name="item_check" value="${s.cart_num}"></td>
                              <td>
                                  <div class="media">
                                      <div class="d-flex">
                                          <a href="product.do?product_num=${s.product_num }">
                                          	<img src="resources/img/product/${s.product_image }" alt="" width="100">
                                          </a>
                                      </div>
                                      <div class="media-body">
                                          <a href="product.do?product_num=${s.product_num }"><p>${s.product_name} </p></a>
                                      </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5><span id="price">${s.sale_price}</span>원</h5>
                              </td>
                              <td>
                                  <div class="product_count">
                                  		<div>
	                                      <input type="text" name="product_count" id="sst" maxlength="12" value="${s.product_count}" title="Quantity:"
	                                          class="input-text qty" style="width:10">
                                       </div>
                                       <div class="cart_qty_btn">
                                      <button class="increase cart-count" type="button"><i class="fas fa-angle-up"></i></button>
                                      <button class="reduced cart-count" type="button"><i class="fas fa-angle-down"></i></button>
                                       </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5><span id="product_total">${s.single_price}</span>원</h5>
                              </td>
                              <td><a href="cartDelete.do?cart_num=${s.cart_num}"><i class="fas fa-times"></i></a></td>
                          </tr>
                          </c:forEach>
                     
                          <tr class="bottom_button">
                          	  <td><input type="checkbox" id="all_check" name="all_check"></td>
                              <td colspan="2" style="text-align:left">
                                  <div class="gray-btn"><a id="select_del">선택삭제</a></div>
                                  <!-- <a class="button" id="all_del" href="#">전체삭제</a>  -->  
                              </td>
                              <td> </td>
                              <td> </td>
                              <td> </td>
                          </tr>
                          
                          <tr>
                         	 <td></td>
                         	 <td></td>
                         	 <td></td>
                              <td ><h5>상품금액</h5></td>
                              <td class="price_align"><h5><span id="cartTotal">${map.cartTotal }</span>원</h5></td>
                              <td></td>  
                          </tr>
                           <tr>
                          	  <td></td>
                              <td></td>
                              <td></td>
                              <td ><h5>할인금액</h5></td>
                              <td class="price_align"><h5>0원</h5></td>
                              <td></td>  
                          </tr>
                          <tr>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td ><h5>적립금</h5>적립율 5%</td>
                              <td class="price_align"><h5>${map.point}원</h5></td>
                              <td></td>
                          </tr>
                          <tr>
                          	  <td></td>
                              <td></td>
                              <td></td>
                              <td ><h5>배송비</h5>5만원이상 무료배송</td>
                              <td class="price_align"><h5>${map.fee }원</h5></td>
                              <td></td>
                          </tr>

                          <tr>
                          	  <td></td>
                          	  <td></td>
                          	  <td></td>
                              <td ><h4>결제예정금액</h4></td>
                              <td class="price_align"><h4>${map.total_account}원</h4></td>
                              <td></td>
                          </tr>
                          <tr class="out_button_area">
                          	  <td></td>
                          	  <td></td>
                              <td colspan="3">
                                  <div class="gray-btn">
                                      <a href="main.do">쇼핑계속하기</a>
                                  </div>
                                  <div class="blue-btn">
                                      <a id="order-btn">주문하기</a>
                                  </div>
                               </td>
                              <td></td>
                          </tr>
                          
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
  </section>
  <!--================End Cart Area =================-->




<%@ include file="footer.jsp" %>
	<script src="resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="resources/vendors/skrollr.min.js"></script>
	<script src="resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="resources/vendors/mail-script.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	
	<script src="resources/js/main.js"></script>
	<script src="resources/js/cartList.js"></script>
	
	</div>
	</section>



</body>
</html>