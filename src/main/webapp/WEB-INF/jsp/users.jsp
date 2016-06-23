<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>List of Users</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<div class="container">
<h1 class="text-center">List of Users</h1>

<table class="table table-striped">
    <thead>
    <tr>
        <th>E-mail</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>

    <c:forEach items="${users}" var="user">
        <tr>
            <td><a href="/user/${user.id}">${user.email}</a></td>
            <td>${user.role}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>
</div>
</body>
</html>