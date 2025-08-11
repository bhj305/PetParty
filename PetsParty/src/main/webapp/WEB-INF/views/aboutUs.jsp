<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>오늘도쉴개</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
    <%@ include file="link.jsp" %>

    <div class="container" style="max-width: 700px;">
        <h2>About Pets Party</h2>

        <section style="margin-bottom: 30px;">
            <h3>우리 이야기</h3>
            <p>
                Pets Party는 반려동물을 사랑하는 모든 사람들을 위한 커뮤니티 공간입니다.<br />
                반려동물과 함께하는 즐거운 일상, 유용한 정보 공유, 그리고 다양한 이벤트를 통해<br />
                더 행복한 반려생활을 만들어 가고자 합니다.
            </p>
        </section>

        <section style="margin-bottom: 30px;">
            <h3>미션과 가치</h3>
            <ul>
                <li>반려동물과 사람 모두의 행복 추구</li>
                <li>신뢰와 소통을 기반으로 한 커뮤니티 조성</li>
                <li>지속 가능한 반려동물 문화 발전 기여</li>
            </ul>
        </section>

        <section>
            <h3>연락처</h3>
            <p>이메일: contact@petsparty.com</p>
            <p>전화: 02-1234-5678</p>
            <p>주소: 서울시 Pets Party 빌딩</p>
        </section>
    </div>

    <%@ include file="footer.jsp" %>
</body>
</html>
