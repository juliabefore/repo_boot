<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Home page</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<div class="container">

<h1 class="text-center">Hello</h1>
<table width="90%">
    <tr>
        <td valign="top" align="left" width="15%">
        <nav role="navigation">
            <ul>
                <c:if test="${currentUser.id != null}">
                <li>
                        <a href="/user/${currentUser.id}">View myself</a>
                </li>
                </c:if>
                <c:if test="${currentUser.role == 'ADMIN'}">
                <li>
                        <spring:url value="/users" var="users" />
                        <a href="${users}" title="users">List of users</a>
                </li>
                </c:if>
                    <c:if test="${currentUser.id != null}">
                <li>
                    <spring:url value="/user/${currentUser.id}/update" var="update" />
                    <a href="${update}" title="update">Update</a>
                </li>
                <li>
                    <spring:url value="/user/${currentUser.id}/delete" var="delete" />
                    <a href="${delete}" title="delete">Remove</a>
                </li>
                    </c:if>
            </ul>
        </nav>
        </td>
        <td valign="top" align="center" width="80%">
            <c:if test="${currentUser.id != null}">
            <div align="center">
                <sec:authorize access="isAuthenticated()">
                    <h4>Welcome ${currentUser.user.email}</h4>
                </sec:authorize>
            </div>
        </td>
        <td valign="top" align="right"  width="15%">
            <div align="right">
                <form id="logoutForm" method="POST" action="/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <button type="submit" class="btn btn-primary btn-sm">Log out</button>
                </form>
            </div>
        </td>
            </c:if>
    </tr>
</table>

    <c:if test="${currentUser.id == null}">
        <spring:url value="/login" var="signIn" />
        <p class="text-center lead"><a href="${signIn}" title="signIn" >SignIn</a></p>

        <spring:url value="/user/create" var="signUp" />
        <p class="text-center lead"><a href="${signUp}" title="signUp">SignUp</a></p>
    </c:if>

</div>
<!-- /container -->
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--<script src="static/js/bootstrap.min.js"></script>--%>
<%--<script src="${contextPath}/resources/js/bootstrap.min.js"></script>--%>
</body>
</html>