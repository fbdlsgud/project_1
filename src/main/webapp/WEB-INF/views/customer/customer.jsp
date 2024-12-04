<%--
  Created by IntelliJ IDEA.
  User: fbdls
  Date: 24. 12. 4.
  Time: 오전 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="/css/customer_main.css">

    <script src="/script/customer.js"></script>


</head>
<body>

<header>
    <div class="logo">오늘배움 고객센터</div>
    <div class="header-right">
        <a href="/loginForm">로그인</a>
    </div>
</header>
<main>
    <section class="main-banner">
        <h1>오늘배움 고객센터<br>무엇을 도와드릴까요?</h1>
        <div class="search-bar">
            <input type="text" placeholder=" 검색ㄱㄱ">
            <button>검색</button>
        </div>
        <div class="keyword">
            <span>추천 키워드</span>
            <a href="#">비밀번호 변경</a>
            <a href="#">클래스 예약날짜 변경</a>
            <a href="#">환불처리</a>
        </div>
    </section>

    <section class="question">
        <div class="question-bar" onclick="toggleFAQ()">
            <h3>자주 묻는 질문</h3>
            <span class="arrow">▼</span>
        </div>
        <ul class="question-list" id="questionList">
            <li><a href="#">회원 가입은 어떻게 하나요?</a></li>
            <li><a href="#">비밀번호를 잊어버렸어요.</a></li>
            <li><a href="#">계정을 삭제하고 싶어요.</a></li>
            <li><a href="#">예약 날짜를 변경하고 싶어요.</a></li>
        </ul>
    </section>

</main>
</body>
</html>

</body>
</html>
