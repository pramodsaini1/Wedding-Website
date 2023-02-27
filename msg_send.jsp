<%-- 
    Document   : msg_send
    Created on : 26 Feb, 2023, 9:06:04 AM
    Author     : Genius
--%>

<%@page contentType="text/html" import="java.sql.*,java.util.*,java.util.Date" pageEncoding="UTF-8"%>
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
                if(request.getParameter("code")!=null){
                    String t_code = request.getParameter("code");
                    if(request.getParameter("msg").length()==0){
                        response.sendRedirect("msg.jsp?empty=1&code="+t_code);
                    }
                    else{
                        String msg = request.getParameter("msg") ;
                        String f_email = email;
                        String t_email = "";
                        String f_code = "";
                        try{
                            int sn = 0;
                            String code = "";
                            LinkedList l = new LinkedList();
                            for(char ch='A' ; ch<='Z' ; ch++){
                                l.add(ch+"");
                            }
                            for(char ch='a' ; ch<='z' ; ch++){
                                l.add(ch+"");
                            }
                            for(char ch='0'; ch<='9';ch++){
                                l.add(ch+"");
                            }
                            Collections.shuffle(l);
                            for(int i=0 ; i<6 ; i++){
                                code = code+l.get(i);
                            }
                            
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/matrimonial","root","");
                            Statement st = cn.createStatement();
                            ResultSet rs = st.executeQuery("select email from register where code='"+t_code+"'");
                            if(rs.next()){
                                t_email = rs.getString(1);
                            }
                            Statement st1 = cn.createStatement();
                            ResultSet rs1 = st.executeQuery("select code from register where email='"+f_email+"'");
                            if(rs1.next()){
                                f_code = rs1.getString(1);
                            }
                            Statement st2 = cn.createStatement();
                            ResultSet rs2 = st.executeQuery("select MAX(sn) from msg");
                            if(rs2.next()){
                                 sn = rs2.getInt(1);   
                            }
                            sn = sn + 1 ;
                            code = code+"_"+sn;
                           Date date = new Date();
                        String dt = date.toString();
                             PreparedStatement ps = cn.prepareStatement("insert into msg values(?,?,?,?,?,?,?,?)");
                            ps.setInt(1,sn);
                            ps.setString(2,code);
                            ps.setString(3,t_code);
                            ps.setString(4,t_email);
                            ps.setString(5,f_code);
                            ps.setString(6,f_email);
                            ps.setString(7,msg);
                            ps.setString(8,dt);
                            
                            if(ps.executeUpdate()>0){
                                response.sendRedirect("msg.jsp?success=1&code="+t_code);
                            }
                            else{
                               response.sendRedirect("msg.jsp?again=1&code="+t_code);
                            }
                            cn.close();
                        }
                        catch(Exception e){
                            out.println(e.getMessage());
                        }
                    }
                }
                 
            }
    
    
    
%>