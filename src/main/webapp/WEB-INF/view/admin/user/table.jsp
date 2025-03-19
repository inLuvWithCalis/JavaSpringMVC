<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create users</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container mt-3">
    <div class="row">
        <div class="col-12 mx-auto">
            <div class="d-flex justify-content-between">
                <h3>Table users</h3>
                <a href="/admin/user/create" class="btn btn-primary">Create</a>
            </div>
            <hr>
            <table class="table table-striped table-hover">
                <thead>
                <tr class="text-center">
                    <th scope="col">Id</th>
                    <th scope="col">Email</th>
                    <th scope="col">FullName</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="u" items="${userList}">
                    <tr class="text-center">
                        <th scope="row">${u.id}</th>
                        <td>${u.email}</td>
                        <td>${u.fullName}</td>
                        <td class="text-center">
                            <a class="btn btn-success" href="/admin/user/edit">View</a>
                            <a class="btn btn-warning" href="/admin/user/edit?id=${u.id}">Update</a>
                            <a class="btn btn-danger" href="/admin/user/delete?id=${u.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>