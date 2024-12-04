
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <link rel="stylesheet" href="/css/loginForm.css" />
</head>
<body>



<section>
    <article>
        <form method="post" action="adminLogin" name="loginForm">
            <h2>로그인</h2>
            <div class="field">
                <label>Admin ID</label><input name="aid" type="text"/>
            </div>
            <div class="field">
                <label>Password</label><input name="pwd" type="password"/>
            </div>
            <div class="btn">
                <input type="submit" value="LOGIN"/>
            </div>
            <div style="font-size:80%; font-weight:bold">${message}</div>
        </form>
    </article>
</section>


</body>
</html>
