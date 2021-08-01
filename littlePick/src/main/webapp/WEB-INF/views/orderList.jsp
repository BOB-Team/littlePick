<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문목록</title>
<link rel="icon" href="resources/img/Fevicon.png" type="resources/image/png">
</head>
<body>
	<%@ include file="header.jsp"%>
  <section class="cart_area">
      <div class="container">
          <div class="cart_inner">
          	  <div class="cart_title">
				<h2><span class="section-intro__style">주문목록</span>	</h2>
			  </div>
              <div class="table-responsive">
			<table class="order_table"  >

				<tbody>
					<tr>
						<th width="100">주문번호</th>
						<th width="200">주문일</th>
						<th>주문내역</th>
						<th width="100">배송타입</th>
						<th width="100">주문금액</th>
					</tr>
					<c:forEach items="${list }" var="o">
						<tr>
							<td>${o.order_num }</td>
							<td>${o.order_date }</td>
							<td>
								<a href="orderDetail.do?order_num=${o.order_num }">
								${o.product_name}
									<c:if test="${o.orderList_count!=1}">  외 ${o.orderList_count-1}건</c:if> 
								</a>
							</td>
							<td>${o.delivery_type}</td>
							<td class="price_align" >${o.now_price }원</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
              </div>
          </div>
      </div>
  </section>


	<%@ include file="footer.jsp"%>
</body>
</html>