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
        <h2>공지사항 게시판</h2>

        <!-- 게시글 리스트 -->
        <table style="width:100%; border-collapse: collapse; margin-bottom: 20px;">
            <thead>
                <tr style="background-color: #f4e1c6; color: #5a3e2b;">
                    <th style="padding: 10px; border: 1px solid #d2b48c;">번호</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">제목</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">작성자</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">작성일</th>
                    <th style="padding: 10px; border: 1px solid #d2b48c;">조회수</th>
                </tr>
            </thead>
            <tbody>
                <%-- 예시 데이터 --%>
                <c:choose>
				    <c:when test="${ empty notices }"> 
				        <tr>
				            <td colspan="5" align="center">
				                <br/>예약 내역이 없습니다^^*
				            </td>
				        </tr>
				    </c:when> 
				    <c:otherwise> 
				        <c:forEach items="${ notices }" var="row" varStatus="loop">
				         <tr align="center">
		                    <td style="padding: 10px; border: 1px solid #d2b48c;"> 
				            <c:set var="vNum" value="${ maps.totalCount - 
				                (((maps.pageNum-1) * maps.pageSize)	+ loop.index)}" />
				            	${vNum}
				            </td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c;"><a href="./noticeView?board_id=${row.board_id}">${ row.title }</a></td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c;">${ row.writer }</td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c; text-align:center;">${ row.created_date }</td>
		                    <td style="padding: 10px; border: 1px solid #d2b48c; text-align:center;">${ row.view_count }</td>
		                </tr>
		               </c:forEach>        
				    </c:otherwise>    
				</c:choose>
            </tbody>
        </table>
        <div align="center">
			${ pagingImg }	            
        </div>
        <!-- 글쓰기 버튼 -->
        <div style="text-align: right;">
            <a href="noticeWrite" 
               style="background-color: #d2b48c; color: white; padding: 10px 20px; border-radius: 8px; text-decoration: none; font-weight: bold;">
                글쓰기
            </a>
        </div>
    </div>
 	<%@ include file="../footer.jsp" %>

</body>
</html>
