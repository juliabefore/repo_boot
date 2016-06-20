<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Home page</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/common.css" rel="stylesheet">
</head>
<body>
<div class="container">
<h2 class="text-center">Hello</h2>

<c:if test="${currentUser.id != null}">
<p class="text-center"><a href="/user/${currentUser.id}">View myself</a></p>
</c:if>

<br/>

<c:if test="${currentUser.role == 'ADMIN'}">
    <spring:url value="/users" var="users" />
    <p class="text-center"><a href="${users}" title="users">List of users</a></p>
</c:if>

<c:if test="${currentUser.id != null}">
    <form id="logoutForm" method="POST" action="/logout" class="form-signin">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-lg btn-primary btn-block">Log out</button>
    </form>

    <br/>
    <sec:authorize access="isAuthenticated()">
    <h2>Welcome ${currentUser.user.email}</h2>
    </sec:authorize>

    <spring:url value="/user/${currentUser.id}/update" var="update" />
    <p class="text-center"><a href="${update}" title="update">Update</a></p>

    <spring:url value="/user/${currentUser.id}/delete" var="delete" />
    <p class="text-center"><a href="${delete}" title="delete">Remove</a></p>
</c:if>

<br />
<br />
<c:if test="${currentUser.id == null}">
<spring:url value="/login" var="signIn" />
<p class="text-center"><a href="${signIn}" title="signIn" >SignIn</a></p>

<spring:url value="/user/create" var="signUp" />
<p class="text-center"><a href="${signUp}" title="signUp">SignUp</a></p>

</c:if>
</div>
</body>
</html>