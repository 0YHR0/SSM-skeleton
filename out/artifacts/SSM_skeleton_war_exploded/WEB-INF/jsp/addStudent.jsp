<%--
  Created by IntelliJ IDEA.
  User: YHR
  Date: 2021/8/19
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Add student</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Add student</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/student/addStudentAction" method="post">
        <div class="form-group">
            <label for="studentName">Student name:</label>
            <input type="text" class="form-control" id="studentName" placeholder="name" name="name"required>
        </div>
        <div class="form-group">
            <label for="studentEmail">Student email address:</label>
            <input type="email" class="form-control" id="studentEmail" placeholder="e-mail" name="email" required>
        </div>
        <div class="form-group">
            <label for="studentAge">Student Age:</label>
            <input type="number" class="form-control" id="studentAge" placeholder="age" name="age" required>
        </div>
        <button type="submit" class="btn btn-default">Add!</button>
    </form>
</div>
