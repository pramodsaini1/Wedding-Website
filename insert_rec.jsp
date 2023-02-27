<%-- 
    Document   : insert_rec
    Created on : 24 Feb, 2023, 10:30:40 AM
    Author     : Genius
--%>

<%@page contentType="text/html"import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>
<%
if(request.getParameter("fname").length()==0||request.getParameter("lname").length()==0||request.getParameter("email").length()==0||request.getParameter("pass").length()==0||request.getParameter("gender").length()==0||request.getParameter("caste").length()==0||request.getParameter("religion").length()==0||request.getParameter("state").length()==0||request.getParameter("country").length()==0||request.getParameter("dob").length()==0){
    response.sendRedirect("register.jsp?empty=1");
}
else{
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String gender = request.getParameter("gender");
    String caste = request.getParameter("caste");
    String religion = request.getParameter("religion");
    String state = request.getParameter("state");
    String country = request.getParameter("country");
    String dob = request.getParameter("dob");
    int sn=0;
    String code="";
    try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                Statement st = cn.createStatement();
                ResultSet rs = st.executeQuery("select MAX(sn) from register");
                if(rs.next()){
                    sn = rs.getInt(1);
                }
                sn= sn+1;
                LinkedList l = new LinkedList();
                for(char c='0';c<='9';c++){
                    l.add(c);
                }
                for(char c='A';c<='Z';c++){
                    l.add(c);
                }
                for(char c='a';c<='z';c++){
                    l.add(c);
                }
                Collections.shuffle(l);
                for(int i=0;i<6;i++){
                    code = code+l.get(i);
                }
                code = code+"_"+sn;
                
                PreparedStatement ps = cn.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setInt(1,sn);
                ps.setString(2,code);
                ps.setString(3,email);
                ps.setString(4,pass);
                ps.setString(5,fname);
                ps.setString(6,lname);
                ps.setString(7,gender);
                ps.setString(8,caste);
                ps.setString(9,religion);
                ps.setString(10,state);
                ps.setString(11,country);
                ps.setString(12,dob);
                
                if(ps.executeUpdate()>0){
                    response.sendRedirect("image_upload.jsp?code="+code+"&success=1");
                }
                else{
                    response.sendRedirect("register.jsp?again=1");
                }
    }
    catch(Exception er){
        out.println(er.getMessage());
    }
     
    
}
    
    
    
    
%>