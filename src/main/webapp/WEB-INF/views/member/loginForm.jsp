
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<link rel="stylesheet" href="/css/loginForm.css" />

<body>

<section>

    <article>
        <form method="post" action="login" name="loginForm" >
            <h2>LogIn</h2>
            <div class="field">
                <label>User ID</label><input name="id" type="text"/>
            </div>
            <div class="field">
                <label>Password</label><input name="pwd" type="password" >
            </div>
            <div class="btn">
                <input type="submit" value="LOGIN">
                <input type="button" value="JOIN"  onclick="location.href='joinform'" >
                <input type="button" value="FIND ID"  onclick="" >
            </div>
            <div class="btn">
                <button type="button" class="kakao-login"
                        onClick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=f67ebc2de23039bbce25c7d2583abd81&redirect_uri=http://localhost:8070/kakaoLogin&response_type=code'">
                    카카오톡 로그인
                </button>
                <input type="button" value="Naver" style="background: green" onclick="" >
                <input type="button" value="Google" style="background: red" onclick="" >

            </div>
            <div style="font-size:80%; font-weight:bold">${message} </div>

        </form>
    </article>

</section>


</body>
</html>
