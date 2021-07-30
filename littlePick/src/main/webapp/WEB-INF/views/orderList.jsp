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
	<div class="order_body">
		<div class="order_title">
			<h2>
				<span class="section-intro__style">주문목록</span>
			</h2>
		</div>

		<div>
			<table class="order_table">

				<tbody>
					<tr>
						<th colspan="4">주문내역</th>
					</tr>
<%-- 					<c:forEach items="${map.list }" var="c">
						<tr>
							<td ></td>
							<td>${c.product_name }</td>
							<td width="100">${c.product_count }</td>
							<td class="price_align" width="200">${c.single_price}원</td>
						</tr>
					</c:forEach> --%>
					<tr></tr>

				</tbody>
			</table>
		</div>
	</div>



	<%@ include file="footer.jsp"%>
</body>
</html>