<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>오늘도쉴개</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
		
	</head>
	<body>
		<%@ include file="../link.jsp" %>
		<div class="container">
		    <h2>공지사항 작성</h2>
		    <form action="noticeProc" method="post" enctype="multipart/form-data">
		        <label for="title">제목</label>
		        <input type="text" id="title" name="title" placeholder="제목을 입력하세요" required />
		
		        <label for="writer">작성자</label>
		        <input type="text" id="writer" name="writer" placeholder="작성자명을 입력하세요" required />
				
				<label for="content">내용</label>
				<textarea name="content" style="width:100%;height:100px;" required></textarea>
				
		        <button type="submit">예약하기</button>
		    </form>
		</div>
		<%@ include file="../footer.jsp" %>
	</body>
</html>