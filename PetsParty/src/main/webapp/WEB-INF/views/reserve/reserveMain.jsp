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
		    <h2>예약 신청</h2>
		    <form action="reserveProc" method="post">
		        <label for="name">이름</label>
		        <input type="text" id="name" name="name" placeholder="이름을 입력하세요" required>
		
		        <label for="phone">전화번호</label>
		        <input type="text" id="phone" name="phone" placeholder="01012345678" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" />
		
		        <label for="pet_name">반려동물 이름</label>
		        <input type="text" id="pet_name" name="pet_name" placeholder="반려동물 이름을 입력하세요" required>
		
		        <label for="pet_type">반려동물 종류</label>
		        <select id="pet_type" name="pet_type" required>
		            <option value="">선택하세요</option>
		            <option value="dog">강아지</option>
		            <option value="cat">고양이</option>
		            <option value="hamster">햄스터</option>
		            <option value="etc">기타</option>
		        </select>
		
		        <label for="check_in_date">체크인 날짜</label>
		        <input type="date" name="check_in_date" required>
		
		        <label for="check_out_date">체크아웃 날짜</label>
		        <input type="date" name="check_out_date" required>
		
		        <label for="memo">추가 요청사항</label>
		        <textarea id="memo" name="memo" rows="4" placeholder="특별한 요구사항이 있다면 적어주세요"></textarea>
		
		        <button type="submit">예약하기</button>
		    </form>
		</div>
		<%@ include file="../footer.jsp" %>
	</body>
</html>