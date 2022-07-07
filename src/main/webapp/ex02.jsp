<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- jstl문법을 c라는 이름으로 기능을 가져다 씀 --> <!-- 변수를 만들거나 반복문,if문을 제공 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>ex02.jsp<br>
	<%-- request.setCharacterEncoding("utf-8"); --%> <!-- post방식으로 넘어온 한글값 처리 -->
	<fmt:requestEncoding value="utf-8" /> <!-- jstl라이브러리를 통한 한글값 처리 -->
	
	<!-- if - else -->
	<c:choose>
		<c:when test="${2 == 1 }">
			<h1>1111같다</h1>
		</c:when>
		<c:when test="${3 == 2 }">
			<h1>2222</h1>
		</c:when>
		<c:otherwise>
			<h1>else 문장 실행</h1>
		</c:otherwise>
	</c:choose>
	
	<hr>
	<c:set var="abc" value="안녕" scope="session" /> <!-- scope범위지정을 통해 세션범위로 세션값을 저장함 -->
	<c:remove var="abc" scope="session"/> <!-- 해당변수, 범위지정 값 삭제 -->
	<a href="ex01.jsp">ex01이동</a>
	
	<%--@ include file="/day06/test/test.jsp" --%> <!-- 절대경로로 사용불가능하다 -->
<hr>
	<%-- 
	<c:redirect url="ex01.jsp"/> <!-- 해당 페이지로 바로 보내줌 -->
	<c:import url="test/test.jsp" /> <!-- 해당페이지 값을 가져옴 --> <!-- 절대경로가 문제발생을 줄일 수 있다 -->
	--%>
	
<hr>
	${param.id }<br>
	${param.pwd }<br>

<hr>
	<%
		ArrayList<String> arr = new ArrayList<>();
		arr.add("1111"); /* arr에 순차적으로 값이 들어감 */
		arr.add("2222");
		arr.add("3333");
	%>
	<c:set var="array" value="<%= arr %>"/> <!-- arr값 array 변수에 저장 -->
	
	<c:forEach var="ar" items="${array }"> <!-- array의 값을 순차적으로 하나씩 ar에 대입함 -->
		${ar }<br>
	</c:forEach>
	
	<hr>
	<c:forEach begin="10" end="15" step="1" var="n"> <!-- 반복문 (10부터시작해서 1씩 증가 15와같을때까지 동작해서 n에 값을 저장함) -->
		n : ${n }<br>
	</c:forEach>
	
	
	${array[0] }<br>
	${array[1] }<br>
	${array[2] }<br>

<hr>
	<c:set var="t" value="그래" />
	<c:if test="${ t == '그래111' }"> <!-- 단독사용 if문 (test:비교문구) -->
		<script type="text/javascript"> /* 스크립트 문법 */
			alert('${t}' + '같다') /* 변수이름을 쓰면 변수로 인식하기 때문에 ''를 통해 문자로 인식하게 해준다 */
		</script>
	</c:if>
	
<hr>
	<c:set var="num" value="안녕" /> <!-- 변수 생성 (var:변수이름 value:값입력) -->
	${num }
	
<hr>
	<c:out value="안녕하세요" /><br> <!-- jstl문법을 이용하여 출력 -->
	${ "안녕하세요" }

</body>
</html>