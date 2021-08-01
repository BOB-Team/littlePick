<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세 </title>
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
          	  <div class="cart_title">
				<h2><span class="section-intro__style">주문상세</span>	</h2>
			  </div>
              <div class="table-responsive">
                  <table class="order_table" id="cart-table" >
                      <thead>
							<tr>
								<th>상품이름 </th>
								<th>수량 </th>
								<th></th>
							</tr>
                      </thead>
                      <tbody>
                      	<c:forEach items="${orderDetail }" var="o">
							<tr>
								<td width="300">${o.product_name }</td>
								<td width="100" align="center">${o.order_count}</td>
								<td></td>
							</tr>
						</c:forEach>
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