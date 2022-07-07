<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>abc : ${abc }</h1>
	
<hr>
	eq(==), ne(!=), lt(<), gt(>), le(<=), ge(>=), and(&&), or(||)<br> <!-- 문자,기호 동일한 문법이므로 선택하여 사용 -->
	${ 5 / 3 } == ${ 5 div 3 }<br> <!-- 나누기연산자 - 실수의 값까지 다 표현을 해줌 -->
	${ 5 % 2 } == ${ 5 mod 2 }<br> <!-- %연산자 -->
<hr>
	<%= "안녕하세요" %><br>
	${ "안녕하세요" } <!-- EL -->
</body>
</html>