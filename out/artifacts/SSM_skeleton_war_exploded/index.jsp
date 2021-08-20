<%--
  Created by IntelliJ IDEA.
  User: YHR
  Date: 2021/8/18
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>首页</title>
    <style>
      a{
        text-decoration: none;
        color: brown;
        font-size: 18px;
      }
    </style>
  </head>
  <body>
  <h1>Main page</h1>
  <a href="${pageContext.request.contextPath}/student/list">list all students</a>
  </body>
</html>
