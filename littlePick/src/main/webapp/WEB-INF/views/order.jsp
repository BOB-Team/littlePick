<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
</head>
<body>

	<%@ include file="header.jsp"%>
	
	
  <section class="cart_area">
      <div class="container">
          <div class="cart_inner">
          	  <div class="cart_title">
				<h2><span class="section-intro__style">주문서</span>	</h2>
			  </div>
              <div class="table-responsive">
		<table class="order_table" >

			<tbody>
				<tr>
					<th colspan="4">주문내역</th>
				</tr>
				<c:if test="${map.countNormal != 0}">
				<tr><td class=delivery_type colspan="4"><i class="fas fa-truck"></i>&nbsp;&nbsp;일반배송</td></tr>
				</c:if>
				<c:forEach items="${map.listNormal }" var="n" >		
						<tr>
							<td width="200"><img src="resources/img/product/${n.product_image }" alt="" width="150"></td>
							<td>${n.product_name }</td>
							<td width="100">${n.product_count }</td>
							<td class="price_align" width="200">${n.single_price}원</td>
						</tr>
				</c:forEach>
				<c:if test="${map.countStar != 0}">
				<tr><td class=delivery_type colspan="4"><i class="fas fa-shipping-fast"></i>&nbsp;&nbsp;샛별배송</td></tr>
				</c:if>
				<c:forEach items="${map.listStar }" var="s" >
						<tr>
							<td width="150"><img src="resources/img/product/${s.product_image }" alt="" width="150"></td>
							<td>${s.product_name }</td>
							<td width="100">${s.product_count }</td>
							<td class="price_align" width="200">${s.single_price}원</td>
						</tr>
				</c:forEach>
				<tr></tr>

			</tbody>

			<tbody>
				<tr>
					<th colspan="4">주문자정보</th>
				</tr>
	
				<tr>
					<td>이름</td>
					<td colspan="3">${map.user_name}</td>
				</tr>
				<tr>
					<td>휴대폰</td>
					<td colspan="3">${map.user_phone}</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td colspan="3">${map.user_email}</td>
				</tr>

				<tr></tr>
			</tbody>

			<tbody>
				<tr>
					<th colspan="4">배송정보</th>
				</tr>
				<tr>
					<td>배송지</td>
					<td id="order_address" colspan="3">${map.user_address} ${map.user_address2} ${map.user_address3}</td>
				</tr>
				<tr></tr>

			</tbody>
			
			<tbody>
				<tr>
					<th colspan="4">결제정보</th>
				</tr>
				<tr>
					<td>주문금액</td>
					<td></td>
					<td></td>
					<td class="price_align" id="user_address">${map.cartTotal}원</td>
				</tr>
				<tr>
					<td>배송비</td>
					<td></td>
					<td></td>
					<td class="price_align" id="delivery_type">${map.fee}원</td>
				</tr>
				<tr>
					<td>최종결제금액</td>
					<td></td>
					<td></td>
					<td class="price_align" id="delivery_type">${map.total_account}원</td>


				</tr>
				<tr></tr>

			</tbody>

			<tbody>
				<tr>
					<th colspan="4">결제수단</th>
				</tr>
				<tr>
					<td>네이버페이 결제</td>
					<td colspan="3"><input type="radio" class="payment" name="pay" id="naverpay"><img src="resources/img/naverpay.jpg" width="50"></td>
				</tr>
				<tr>
					<td>카카오페이 결제</td>
					<td colspan="3"><input type="radio" class="payment" name="pay" id="kakaopay"><img src="resources/img/kakaopay.jpg" width="50"></td>
				</tr>
				<tr>
					<td>일반 결제</td>
					<td colspan="3"><input type="radio" class="payment" name="pay" id="normalpay">신용카드</td>
				</tr>
				<tr>
					<td>휴대폰 결제</td>
					<td colspan="3"><input type="radio" class="payment" name="pay" id="phonepay">휴대폰</td>
				</tr>
				<tr></tr>
			</tbody>

			<tfoot>
				<tr class="btn_area" >
					<td colspan="4">
						<div class="gray-btn">
							<a href="cartList.do">취소하기</a>
						</div>
						<div class="blue-btn">
							<!-- js 클릭이벤트 : 결제 방법 선택  -->
							<a id="payfor">결제하기</a>
						</div>
					</td>
				</tr>
			</tfoot>
		</table>
              </div>
          </div>
      </div>
  </section>
	<%@ include file="footer.jsp"%>
	<script src="resources/js/order.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
</body>
</html>