
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pass");
    
    
    
    String query="select * from hsp where uname='"+uname+"'and pass='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    String status=null;
    if(i.next()){
     
           status=i.getString("status");
         
    
    if(status.equals("waiting")){
       
        
%>
      <script type='text/javascript'>
          window.alert("Admin Need to Authorize You...!!");
          window.location="Hospital.jsp";
      </script>
      <%

    }else{
    session.setAttribute("id",i.getString("id"));
       session.setAttribute("name",i.getString("uname"));
 session.setAttribute("hsp_name",i.getString("hsp_name"));
%>
      <script type='text/javascript'>
          window.alert("Login Successful..!!");
          window.location="HospitalHome.jsp";
      </script>
      <%
}
}else{
%>
      <script type='text/javascript'>
          window.alert("Login Failed..!!");
          window.location="Hospital.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>