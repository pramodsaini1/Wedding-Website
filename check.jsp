<%-- 
    Document   : check
    Created on : 25 Feb, 2023, 8:48:56 AM
    Author     : Genius
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
if(request.getParameter("email").length()==0||request.getParameter("pass").length()==0){
    response.sendRedirect("login.jsp?empty=1");
}
else{
    String email = request.getParameter("email");
    String pass  = request.getParameter("pass");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery("select * from register where email='"+email+"'");
        if(rs.next()){
            if(rs.getString("password").equals(pass)){
                Cookie c = new Cookie("login",email);
                c.setMaxAge(3600);
                response.addCookie(c);
                response.sendRedirect("Profile.jsp");
            }
            else{
                response.sendRedirect("login.jsp?invalid_pass=1");
            }
        }
        else{
            response.sendRedirect("login.jsp?invalid=1");
        }
        
    }
    catch(Exception er){
        out.println(er.getMessage());
    }
}
    
    
    
    
    
%>