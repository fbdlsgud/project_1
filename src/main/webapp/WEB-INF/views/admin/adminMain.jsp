
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="/css/adminMain.css" />

    <script src="/script/jquery-3.7.1.min.js"></script>
    <script src="/script/adminMainContent.js"></script>




</head>
<body>

<header>
    <div class="header-container">
        <h1>어드민 메인 페이지</h1>
        <button id="logoutBtn" onclick="location.href='/'">로그아웃</button>
    </div>
</header>
<section>
    <div class="admin-info">
        <h2>환영합니다,  <span>(<c:out value="${loginAdmin.aid}"/>)</span> 관리자님 </h2>
    </div>
    <div class="tab-menu">
        <button>QNA 관리</button>
        <button>회원 관리</button>
        <button>사업자 관리</button>
        <button>배너 관리</button>
        <button>공지사항 관리</button>
    </div>
    <div id="content" class="content-box">


        <p>원하는 관리를 선택하세요.</p>
    </div>
</section>


</body>
</html>
