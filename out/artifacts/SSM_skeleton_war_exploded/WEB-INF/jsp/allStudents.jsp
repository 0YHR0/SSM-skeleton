<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: YHR
  Date: 2021/8/18
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All students</title>
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>STUDENT —— SHOW ALL STUDENT</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/student/addStudent">Add new Student</a>
        </div>
        <div class="col-md-4 column"/>
        <div class="col-md-12 column">
           <form action="${pageContext.request.contextPath}/student/queryStudentByName" method="post" style="float:right" class="form-inline">
               <input type="text" name="name" class="form-control"placeholder="Name of the student">
               <input type="submit" value="Find!" class="btn btn-primary">
           </form>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>STU-ID</th>
                    <th>STU-NAME</th>
                    <th>STU-EMAIL</th>
                    <th>STU-AGE</th>
                    <th>operation</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="student" items="${pageInfo.list}">
                    <tr>
                        <td>${student.getId()}</td>
                        <td>${student.getName()}</td>
                        <td>${student.getEmail()}</td>
                        <td>${student.getAge()}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/student/editStudent?id=${student.getId()}">Edit</a> |
                            <a href="${pageContext.request.contextPath}/student/deleteStudent/${student.getId()}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
<%--        kk--%>
        <div class="row">
            <div class="col-md-3">
                第${pageInfo.pageNum}页，共${pageInfo.pages}页，共${pageInfo.total}条记录
            </div>
            <div class="col-md-9 offset-md-2">
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagination-sm">
                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/student/list?page=1">首页</a></li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <li class="page-item"><a class="page-link"
                                                     href="${pageContext.request.contextPath}/student/list?page=${pageInfo.pageNum-1}">上一页</a></li>
                        </c:if>
                        <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                            <c:if test="${page==pageInfo.pageNum}">
                                <li class="page-item active"><a class="page-link" href="#">${page}</a></li>
                            </c:if>
                            <c:if test="${page!=pageInfo.pageNum}">
                                <li class="page-item"><a class="page-link"
                                                         href="${pageContext.request.contextPath}/student/list?page=${page}">${page}</a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${pageInfo.hasNextPage}">
                            <li class="page-item"><a class="page-link"
                                                     href="${pageContext.request.contextPath}/student/list?page=${pageInfo.pageNum+1}">下一页</a></li>
                        </c:if>
                        <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/student/list?page=${pageInfo.pages}">末页</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>


    </div>
</div>



</body>
</html>
