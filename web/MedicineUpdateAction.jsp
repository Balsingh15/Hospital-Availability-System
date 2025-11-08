
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   String mid=request.getParameter("mid");
    String hspname=request.getParameter("hspname");
    String mname=request.getParameter("mname");
      String availability=request.getParameter("availability");
     
    String query="update medicine set medicine='"+mname+"',availability='"+availability+"' where id='"+mid+"' and hspname='"+hspname+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="ViewMedicine.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="ViewMedicine.jsp";
      </script>
      <%
}

}catch(Exception e){
    out.println(e);
}



%>