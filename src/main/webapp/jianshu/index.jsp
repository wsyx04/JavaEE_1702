<%--
  Created by IntelliJ IDEA.
  User: 王洪博
  Date: 2017/6/7
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
</head>
<body>
<h1>index page</h1>
<form action="login.jsp">
    <input type="text" name="mobile" placeholder="手机号"><br>
    <input type="password" name="password" placeholder="密码"><br>
    <input type="submit" value="登录">
</form>
<p><%=request.getAttribute("message")%></p>
<a href="signup.jsp">注册</a>
</body>
</html>
