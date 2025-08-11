<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>오늘도쉴개</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css" />
</head>
<body>
    <%@ include file="../link.jsp" %>

    <div class="container">
        <h2>내 예약 확인하기</h2>
		<div align="right">예약자: ${ name } 님</div><br/>
        <!-- 게시글 리스트 -->
        <table style="width:100%; border-collapse: collapse; margin-bottom: 20px;">
            <thead>
                <tr style="background-color: #f4e1c6; color: #5a3e2b;">
                    <th style="padding: 10px; border: 1px solid #d2b48c;">예약번호</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">펫 이름</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">체크인 날짜</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">체크아웃 날짜</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">예약 날짜</th>
                </tr>
            </thead>
            <tbody>
	            <c:choose>
				    <c:when test="${ empty myReservations }"> 
				        <tr>
				            <td colspan="5" align="center">
				                <br/>예약 내역이 없습니다^^*
				            </td>
				        </tr>
				    </c:when> 
				    <c:otherwise> 
				        <c:forEach items="${ myReservations }" var="row" varStatus="loop">
				         <tr align="center">
		                    <td style="padding: 10px; border: 1px solid #d2b48c; text-align:center;">${ row.reservation_id }</td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c;">${ row.pet_name }</td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c;">${ row.check_in_date }</td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c; text-align:center;">${ row.check_out_date }</td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c; text-align:center;">${ row.memo }</td>
		                </tr>
		               </c:forEach>        
				    </c:otherwise>    
				</c:choose>
            </tbody>
        </table>

        <!-- 글쓰기 버튼 -->
        <div style="text-align: right;">
            <a href="/reserve" 
               style="background-color: #d2b48c; color: white; padding: 10px 20px; border-radius: 8px; text-decoration: none; font-weight: bold;">
                예약하기
            </a>
        </div>
    </div>
 	<%@ include file="../footer.jsp" %>

</body>
</html>
