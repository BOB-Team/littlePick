<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LittlePick-장바구니</title>
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

<%@ include file="header.jsp" %>

 <!--================Cart Area =================-->
  <section class="cart_area">
      <div class="container">
          <div class="cart_inner">
              <div class="table-responsive">
                  <table class="table" id="cart-table" >
                      <thead>

                      </thead>
                      <tbody>
							<tr>
                      			<th colspan="6">일반 배송</th>
                      		</tr>

		                   <c:forEach items="${map.list }" var="c" >
		                   	<c:if test="${c.delivery_num==1 }">
		                   <tr>
                          	<td><input type="checkbox" id="item_check" name="item_check" value="${c.cart_num}"></td>
                              <td>
                                  <div class="media">
                                      <div class="d-flex">
                                          <img src="resources/img/product/${c.product_image }" alt="" width="100">
                                      </div>
                                      <div class="media-body">
                                          <p>${c.product_name} </p>
                                      </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5>${c.sale_price}원</h5>
                              </td>
                              <td>
                                  <div class="product_count">
                                      <input type="text" name="product_count" id="sst" maxlength="12" value="${c.product_count}" title="Quantity:"
                                          class="input-text qty" style="width:10">
                                       <div class="cart_qty_btn">
                                      <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                          class="increase cart-count" type="button"><i class="fas fa-angle-up"></i></button>
                                      <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                          class="reduced cart-count" type="button"><i class="fas fa-angle-down"></i></button>
                                       </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5>${c.single_price}원</h5>
                              </td>
                              <td><a href="cartDelete.do?cart_num=${c.cart_num}"><i class="fas fa-times"></i></a></td>
                          </tr>
                          </c:if>
                          </c:forEach>
                          <tr>
                      			<th colspan="6">샛별 배송</th>
                      		</tr>

		                   <c:forEach items="${map.list }" var="c" >
		                   	<c:if test="${c.delivery_num==3 or c.delivery_num==2}">
		                   <tr>
                              <td><input type="checkbox" id="item_check" name="item_check" value="${c.cart_num}"></td>
                              <td>
                                  <div class="media">
                                      <div class="d-flex">
                                          <img src="resources/img/product/${c.product_image }" alt="" width="100">
                                      </div>
                                      <div class="media-body">
                                          <p>${c.product_name} </p>
                                      </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5>${c.sale_price}원</h5>
                              </td>
                              <td>
                                  <div class="product_count">
                                      <input type="text" name="product_count" id="sst" maxlength="12" value="${c.product_count}" title="Quantity:"
                                          class="input-text qty" style="width:10">
                                       <div class="cart_qty_btn">
                                      <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
                                          class="increase cart-count" type="button"><i class="fas fa-angle-up"></i></button>
                                      <button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
                                          class="reduced cart-count" type="button"><i class="fas fa-angle-down"></i></button>
                                       </div>
                                  </div>
                              </td>
                              <td class="price_align">
                                  <h5>${c.single_price}원</h5>
                              </td>
                              <td><a href="cartDelete.do?cart_num=${c.cart_num}"><i class="fas fa-times"></i></a></td>
                          </tr>
                          </c:if>
                          </c:forEach>
                     
                          <tr class="bottom_button">
                          	  <td><input type="checkbox" id="all_check" name="all_check"></td>
                              <td colspan="2" style="text-align:left">
                                  <a class="button" id="select_del">선택삭제</a>
                                  <!-- <a class="button" id="all_del" href="#">전체삭제</a>  -->  
                              </td>
                              <td> </td>
                              <td> </td>
                              <td> </td>
                              
<!--                               <td>
                                  <div class="cupon_text d-flex align-items-center">
                                      <input type="text" placeholder="Coupon Code">
                                      <a class="primary-btn" href="#">Apply</a>
                                      <a class="button" href="#">Have a Coupon?</a>
                                  </div>
                              </td> -->
                          </tr>
                          
                          <tr>
                         	 <td></td>
                         	 <td></td>
                         	 <td></td>
                              <td ><h5>상품금액</h5></td>
                              <td class="price_align"><h5>${map.cartTotal }원</h5></td>
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
                              <td ><h5>배송비</h5></td>
                              <td class="price_align"><h5>${map.fee }원</h5></td>
                              <td></td>
                              
                          </tr>
                          <tr>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td ><h5>적립금</h5></td>
                              <td class="price_align"><h5>0원</h5></td>
                              <td></td>
                          </tr>
                          <tr>
                          	  <td></td>
                          	  <td></td>
                          	  <td></td>
                              <td ><h4>결제예정금액</h4></td>
                              <td class="price_align"><h4>${map.allTotal}원</h4></td>
                              <td></td>
                          </tr>
                          <tr class="out_button_area">
                          	  <td></td>
                          	  <td></td>
                              <td colspan="3">
                                  <div class="checkout_btn_inner d-flex align-items-center">
                                      <a class="gray_btn" href="#">쇼핑계속하기</a>
                                      <a class="primary-btn ml-2" href="#">주문하기</a>
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
	
	



</body>
</html>