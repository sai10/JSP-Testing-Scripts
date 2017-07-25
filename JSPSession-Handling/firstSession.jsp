
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    if(name.equals("priyankit") && password.equals("qwerty"))
    {
        session.setAttribute("username",name);
        response.sendRedirect("secondSession.jsp");
    }
    else
    {
         response.sendRedirect("index.jsp");
    }
%>