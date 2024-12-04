<%--
  Created by IntelliJ IDEA.
  User: fbdls
  Date: 24. 12. 3.
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>카카오 로그인 가입</title>
</head>
<body>
<form method="post" action="/kakaoJoin">
    <input type="hidden" name="kakaoId" value="${kakaoId}">
    <input type="hidden" name="email" value="${email}">
    <input type="hidden" name="name" value="${name}">
    <div>
        <label>비밀번호:</label>
        <input type="password" name="pwd" required>
    </div>
    <div>
        <button type="submit">가입</button>
    </div>
</form>
</body>
</html>

