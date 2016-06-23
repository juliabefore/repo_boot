<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Update current user</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Update current user</h1>
<table width="90%">
    <tr>
        <td valign="top" align="left" width="15%">
            <nav role="navigation">
                <ul>
                    <li><a href="/">Home</a></li>
                </ul>
            </nav>
        </td>

        <td valign="top" width="80%">
            <br/>
            <c:if test="${error.isPresent()}">
                <font color="red"><c:out value="Smth went wrong"/></font>
            </c:if>
            <br/>

            <form:form method="post" modelAttribute="form" class="form-signin" action="">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <spring:bind path="email">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="email">Email address</label>
                        <form:input path="email" required="true" autofocus="true" class="form-control" type="text" placeholder="Email"></form:input>
                        <form:errors path="email"/>
                    </div>
                </spring:bind>

                <spring:bind path="password">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="password">Password</label>
                        <form:input path="password" required="true" class="form-control" type="password" placeholder="Password"/>
                        <form:errors path="password"/>
                    </div>
                </spring:bind>

                <spring:bind path="passwordRepeated">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="passwordRepeated">Repeat</label>
                        <form:input path="passwordRepeated" required="true" class="form-control" type="password" placeholder="Repeate password"/>
                        <form:errors path="passwordRepeated"/>
                    </div>
                </spring:bind>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Save</button>
            </form:form>
        </td>

        <td valign="top" align="right" width="15%">
            Here will be smth
        </td>

    </tr>
</table>
</div>
</body>
</html>