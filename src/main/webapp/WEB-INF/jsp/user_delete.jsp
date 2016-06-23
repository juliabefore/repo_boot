<%@ page session="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Remove current user</title>

    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/common.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Remove current user</h1>
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
            <div class="form-group">
            <form role="form" name="form" action="" method="post" class="form-signin">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button type="submit" class="btn btn-lg btn-primary btn-block">Delete current user</button>
            </form>
            </div>
        </td>

        <td valign="top" align="right" width="15%">
            Here will be smth
        </td>
    </tr>
</table>
</div>
</body>
</html>