<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// 로그인 후 세션으로 등록된 아이디를 가져오는 알고리즘. 
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav class="navbar navbar-expand  navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/JSP_TEST_0106/WebMarket18_SCH/welcome.jsp">Home</a>
			<!-- <a class="navbar-brand" href="/ch18_WebMarket_2/welcome.jsp">Home</a> -->
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/member/loginMember.jsp"/>">로그인 </a></li>
						<li class="nav-item"><a class="nav-link" href='<c:url value="/WebMarket18_SCH/member/addMember.jsp"/>'>회원 가입</a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: white">[<%=sessionId%>님]</li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/member/logoutMember.jsp"/>">로그아웃 </a></li>
						<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/member/updateMember.jsp"/>">회원 수정</a></li>
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/products.jsp"/>">상품 목록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/addProduct.jsp"/>">상품 등록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/editProduct.jsp?edit=update"/>">상품 수정</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/editProduct.jsp?edit=delete"/>">상품 삭제</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/WebMarket18_SCH/BoardListAction.do?pageNum=1"/>">게시판</a></li>
			</ul>
		</div>
	</div>
</nav>
