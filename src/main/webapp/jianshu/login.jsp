<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: 王洪博
  Date: 2017/6/7
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");

    new Driver();
    Connection connection = DriverManager.getConnection("jdbc:mysql:///?user=root&password=system");
    String sql = "SELECT * FROM db_javaee.user WHERE mobile=? AND password=?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, mobile);
    statement.setString(2, password);
    ResultSet resultSet = statement.executeQuery();
    if (resultSet.next()) {
        // success
        response.sendRedirect("home.jsp");
    } else {
        // failed
//        response.sendRedirect("index.jsp");

    }
%>
</body>
</html>
