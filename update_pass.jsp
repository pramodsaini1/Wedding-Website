<%-- 
    Document   : update_pass
    Created on : 26 Feb, 2023, 7:56:45 AM
    Author     : Genius
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String email=null;
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
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery("select * from register where email='"+email+"'");
        if(rs.next()){
            if(request.getParameter("cp").length()==0||request.getParameter("rp").length()==0||request.getParameter("np").length()==0){
                response.sendRedirect("change_pass.jsp?empty=1");
            }
            else{
                String cp = request.getParameter("cp");
                String rp = request.getParameter("rp");
                String np = request.getParameter("np");
                if(rs.getString("password").equals(cp)){
                    if(cp.equals(rp)){
                        PreparedStatement ps = cn.prepareStatement("update register set password=? where email=?");
                        ps.setString(1,np);
                        ps.setString(2,email);
                        
                        if(ps.executeUpdate()>0){
                            response.sendRedirect("change_pass.jsp?success=1");
                        }
                        else{
                            response.sendRedirect("change_pass.jsp?again=1");
                        }
                                
                    }
                    else{
                        response.sendRedirect("change_pass.jsp?mismatch=1");
                    }
                }
                else{
                    response.sendRedirect("change_pass.jsp?invalid=1");
                }
            }
        }
    }
    catch(Exception er){
        out.print(er.getMessage());
    }
}
    
    
%>