<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(session.getAttribute("username")!=null){
        String name = (String) session.getAttribute("username");
        Date date = new Date();
        out.println("Welcome "+name+" to this page on "+date);
    }
    else
        response.sendRedirect("index.jsp");

%>
<head>
<script>
    history.forward();
</script>
</head>
<form action="logout.jsp" method="post">
    <input type="submit" name="logout" value="logout">
</form>