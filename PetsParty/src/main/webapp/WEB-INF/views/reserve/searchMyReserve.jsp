<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>오늘도쉴개</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
	</head>
	<body>
		<%@ include file="../link.jsp" %>
		<%@ include file="sub-bar.jsp" %>
		<div class="container">
		    <h2>내 예약 확인</h2>
		    <form action="viewMyReservation" method="post">
		        <label for="name">이름</label>
		        <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
		
		        <label for="phone">전화번호</label>
		        <input type="tel" id="phone" name="phone" placeholder="01012345678" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />

		        <button type="submit">내 예약 확인하기</button>
		    </form>
		</div>
		<%@ include file="../footer.jsp" %>
	</body>
</html>