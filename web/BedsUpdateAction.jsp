

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String hsp=request.getParameter("hsp");
    String tbeds=request.getParameter("tbeds");
    String abeds=request.getParameter("abeds");
  
String query="update beds set availabile='"+abeds+"',total_beds='"+tbeds+"' where hspname='"+hsp+"'";
  int i=Queries.getExecuteUpdate(query); 
if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="ViewBeds.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="ViewBeds.jsp";
      </script>
      <%
}    

}catch(Exception e){
    out.println(e);
}



%>