<%-- 
    Document   : logout
    Created on : 25 Feb, 2023, 1:41:22 PM
    Author     : Genius
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 Cookie c = new Cookie("login",null);
 c.setMaxAge(0);
 response.addCookie(c);
 response.sendRedirect("login.jsp");
    
    
    
%>
