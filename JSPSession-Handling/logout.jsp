
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>Logout</title>

</head>

<body>

<%
    session.setAttribute("username",null);
    session.invalidate();
    %>

<p>You have been successfully logout</p>
<form action="index.jsp" method="post">
    <input type="submit" value="login again">
</form>
</body>

</html>
