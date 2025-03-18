<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create users</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h2 class="mb-4">Create a user</h2>
                <form:form method="POST" action="/admin/user/create" modelAttribute="newUser">
                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <form:input type="email" class="form-control" path="email"/>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password:</label>
                        <form:input type="password" class="form-control" path="password"/>
                    </div>

                    <div class="mb-3">
                        <label for="phone" class="form-label">Phone number:</label>
                        <form:input type="tel" class="form-control" path="phone"/>
                    </div>

                    <div class="mb-3">
                        <label for="fullName" class="form-label">Full name:</label>
                        <form:input type="text" class="form-control" path="fullName"/>
                    </div>

                    <div class="mb-3">
                        <label for="address" class="form-label">Address:</label>
                        <form:input type="text" class="form-control" path="address"/>
                    </div>

                    <button type="submit" class="btn btn-secondary">Create</button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>