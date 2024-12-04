
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="POST" action="/join">
    <div>
        <label>id</label>    <input type="text" name="id"> <input type="button" value="중복확인">
        <input type="hidden" value ="" name="reid">
    </div>
    <div>
        <label>비밀번호</label>    <input type="password" name="pwd">
    </div>
    <div>
        <label>비밀번호 확인</label>    <input type="password" name="pwdchk">
    </div>
    <div>
        <label>이름</label>    <input type="text" name="name">
    </div>
    <div>
        <label>E-mail</label>    <input type="text" name="email">
    </div>
    <div>
        <label>전화번호</label>   <input type="text" name="phone">
    </div>

    <div>
        <input type="submit" value="가입">
        <input type="button" onclick="location.href='/'" value="되돌아가기">
    </div>
    <div style="font-size:80%; font-weight:bold">${message} </div>
</form>

</body>
</html>
