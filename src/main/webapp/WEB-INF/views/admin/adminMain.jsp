
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="/css/adminMain.css" />

    <script src="/script/jquery-3.7.1.min.js"></script>

    <script>
        function loadContent(type) {
            $.ajax({
                url: "/" + type,
                method: "GET",
                success: function (data) {
                    $("#content").html(data); // 서버로부터 받은 데이터를 content 영역에 표시
                },
                error: function (xhr, status, error) {
                    console.error("Error loading content: ", error);
                    $("#content").html("<p>콘텐츠를 불러오는 데 실패했습니다.</p>");
                }
            });
        }
    </script>
</head>
<body>

<header>
    <div class="header-container">
        <h1>어드민 메인 페이지</h1>
        <button id="logoutBtn">로그아웃</button>
    </div>
</header>
<section>
    <div class="admin-info">
        <h2>환영합니다,  <span>(<c:out value="${loginAdmin.aid}"/>)</span> 관리자님 </h2>
    </div>
    <div class="tab-menu">
        <button onclick="loadContent('qnaManagement')">QNA 관리</button>
        <button onclick="loadContent('memberManagement')">회원 관리</button>
        <button onclick="loadContent('businessManagement')">사업자 관리</button>
    </div>
    <div id="content" class="content-box">
        <!-- 여기에서 AJAX로 불러온 내용이 표시됩니다 -->
        <p>원하는 관리를 선택하세요.</p>
    </div>
</section>


</body>
</html>
