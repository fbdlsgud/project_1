<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/css/header_footer.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <link rel="stylesheet" href="/css/category.css" />

    <script src="/script/jquery-3.7.1.min.js"></script>
    <script src="/script/header.js"></script>

</head>
<body>
<div id="wrap">
    <header>
        <nav id="top_menu">
            <div id="logo">
                <a href="/">
                    <img src="http://placehold.co/180x100">
                </a>
            </div>

            <div class="search-bar">
                <form action="searchResult.jsp" method="get">
                    <input type="text" name="query" placeholder="검색어를 입력하세요" required>
                    <button type="submit">
                        <img src="images/search.png" alt="검색">
                    </button>
                </form>
            </div>

           <div class="gnb">
                <c:choose>
                    <c:when test="${empty loginUser}">
                        <a href="loginForm"><img src="http://placehold.co/40x40"></a>
                    </c:when>
                    <c:otherwise>
                        <a href="#">${loginUser.name}(${loginUser.id})</a>
                        <a href="logout"><img src="http://placehold.co/40x40"></a>
                    </c:otherwise>
                </c:choose>
                <a href="cartList"><img src="http://placehold.co/40x40"></a>
                <a href="mypage"><img src="http://placehold.co/40x40"></a>
                <a href="customer">고객센터</a>
			</div>
        </nav>

    </header>

