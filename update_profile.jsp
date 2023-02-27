<%-- 
    Document   : update_profile
    Created on : 25 Feb, 2023, 5:26:10 PM
    Author     : Genius
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String email=null ;
Cookie c[] = request.getCookies();
for(int i=0;i<c.length;i++){
    if(c[i].getName().equals("login")){
        email=c[i].getValue();
        break;
    }
}
if(email==null){
    response.sendRedirect("login.jsp");
}
else{
    if(request.getParameter("fname").length()==0||request.getParameter("lname").length()==0||request.getParameter("dob").length()==0||request.getParameter("gender").length()==0||request.getParameter("caste").length()==0||request.getParameter("religion").length()==0||request.getParameter("state").length()==0||request.getParameter("country").length()==0){
        response.sendRedirect("Profile.jsp?empty=1");
    }
    else{
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String caste = request.getParameter("caste");
        String religion = request.getParameter("religion");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
            PreparedStatement ps = cn.prepareStatement("update register set fname=?,lname=?,dob=?,gender=?,caste=?,religion=?,state=?,country=? where email=?");
            ps.setString(1,fname);
            ps.setString(2,lname);
            ps.setString(3,dob);
            ps.setString(4,gender);
            ps.setString(5,caste);
            ps.setString(6,religion);
            ps.setString(7,state);
            ps.setString(8,country);
            ps.setString(9,email);
            
            if(ps.executeUpdate()>0){
                response.sendRedirect("Profile.jsp?success=1");
            }
            else{
                response.sendRedirect("Profile.jsp?again=1");
            }
            
        }
        catch(Exception er){
            out.print(er.getMessage());
        }
    }
}
    
    
%>