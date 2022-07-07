<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>get_user.jsp<br>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<jsp:useBean id="dao" class="day06.TestDAO" />
	<c:set var="dto" value="${dao.getUser(param.id) }" />
	이름 : ${dto.name }<br> <!-- getter 생략 가능 - 변수 이름만 사용 -->
	아이디 : ${dto.getId() }<br>
	비밀번호 : ${dto.pwd }
	
</body>
</html>