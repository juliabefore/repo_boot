<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>User details</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">User details</h1>
    <table width="90%">
        <tr>
            <td valign="top" align="left" width="15%">
                <nav role="navigation">
                    <ul>
                        <li><a href="/">Home</a></li>
                    </ul>
                </nav>
            </td>

            <td valign="top" align="center" width="80%">
                <p class="text-center">E-mail: ${user.email}</p>

                <p class="text-center">Role: ${user.role}</p>
            </td>

            <td valign="top" align="right" width="15%">
                Here will be smth
            </td>
        </tr>
        </table>
</div>

<!-- /container -->
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>--%>
<%--<script src="static/js/bootstrap.min.js"></script>--%>
</body>
</html>