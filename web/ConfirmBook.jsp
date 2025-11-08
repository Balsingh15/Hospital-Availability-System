
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String username=(String)session.getAttribute("username");

   
    String did=request.getParameter("did");
    String days=request.getParameter("days");
    String time=request.getParameter("time");
  String timeslot=request.getParameter("timeslot");
  
  
    String query="insert into bookslot values(null,'"+username+"','"+did+"','"+days+"','"+time+"','"+timeslot+"',now())";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successfully Booked...!!");
          window.location="SearchHospital.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed to Book Slot..!!");
          window.location="SearchHospital.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>