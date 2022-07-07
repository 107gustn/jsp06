<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>scope.jsp<br>
	<%
		pageContext.setAttribute("name", "page"); /* 현재 페이지만 유지 */
		request.setAttribute("name", "request"); /* 현재 페이지와 다음 페이지까지 유지 */
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>
	name : ${ name }<br> <!-- 현재페이지에서 범위가 가장 작은 값 -->
	page : ${ pageScope.name }<br>
	request : ${ requestScope.name }<br>
	session : ${ sessionScope.name }<br>
	application : ${ applicationScope.name }<br>
	<a href="re_scope.jsp">이동</a>
	
</body>
</html>