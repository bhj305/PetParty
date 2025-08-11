<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>오늘도쉴개</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style>
        
        
    </style>
</head>
<body>
    <%@ include file="link.jsp" %>

    <header>
        <h1>Pets Party</h1>
        <nav>
            <a href="${pageContext.request.contextPath}/">Home</a>
            <a href="aboutUs">About</a>
        </nav>
    </header>

    <main>
        <h2>Welcome to Pets Party!</h2>
        <img src="${pageContext.request.contextPath}/images/petsimages.png" alt="Cute Pets">
        <p>당신의 소중한 반려동물을 위한 특별한 공간입니다.<br>다양한 이벤트와 커뮤니티 활동을 즐겨보세요!</p>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>
