

<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%try{
       
         String name=request.getParameter("name");  
       
         String mobile=request.getParameter("mobile"); 
         String location=request.getParameter("location"); 
         String description=request.getParameter("description");
         String uname=request.getParameter("uname"); 
         String pass=request.getParameter("pass"); 
          
       
         Connection con=Dbconnection.getcon();
           Statement s=con.createStatement();
           ResultSet r=Queries.getExecuteQuery("select count(*) from hsp where hsp_name='"+name+"' or uname='"+uname+"'");
         int c=0;
         while(r.next())
         {
           c=r.getInt(1);  
         }
         
         if(c==0){
         PreparedStatement pst=con.prepareStatement("insert into hsp values(null,'"+name+"','"+mobile+"','"+location+"','"+description+"','"+uname+"','"+pass+"','waiting')");
         
         int i=pst.executeUpdate();
         if(i>0){%>
         <script type="text/javascript">
             window.alert("Registration Successful...!!");
             window.location="HSPRegister.jsp";
             </script>
         
         <%
             
         }else{
%>
         <script type="text/javascript">
             window.alert("Registration Failed...!!");
             window.location="HSPRegister.jsp";
             </script>
         
         <%
              
         }
         }else{
%>
         <script type="text/javascript">
             window.alert("UserName or Name Already Exist..!!");
             window.location="HSPRegister.jsp";
             </script>
         
         <%
        }
       }catch(Exception e){
        System.out.println(e);
       }
 %>