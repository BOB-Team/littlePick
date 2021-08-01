<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>header</title>
</head>
<body>

	<%if(session.getAttribute("user_num")!=null){%>
		<%@ include file="header_session.jsp"%> 
	<%} else{ 
			if(session.getAttribute("admin_id")!=null){ %>
			<%@ include file="header_admin.jsp"%> 
			<%}else{%>
				<%-- <%@ include file="header_nosession.jsp"%> --%>
				<%@ include file="header_nosession.jsp"%> 
				<% }
		} %>
</body>
</html>