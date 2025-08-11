<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>오늘도쉴개</title>
		<link rel="stylesheet" href="../css/styles.css" />
	</head>
	<body>
		<%@ include file="../link.jsp" %>
		<div class="notice-container">
	        <table class="notice-table">
	            <tr>
	                <th>제목</th>
	                <td>${board.title}</td>
	            </tr>
	            <tr>
	                <th>작성자</th>
	                <td>${board.writer}</td>
	            </tr>
	            <tr>
	                <th>작성일</th>
	                <td>${board.created_date}</td>
	            </tr>
	        </table>
	
	        <div class="notice-content">${board.content}</div>
	    </div>
		<%@ include file="../footer.jsp" %>
	</body>
</html>