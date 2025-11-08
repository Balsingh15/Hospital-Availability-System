
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   String id=request.getParameter("id");
    String hsp=request.getParameter("hsp");
    String special=request.getParameter("special");
      String name=request.getParameter("name");
    String Experience=request.getParameter("Experience");
      String days=request.getParameter("days");
    String time=request.getParameter("time");
      String contact=request.getParameter("contact");
      String availability=request.getParameter("availability");
   
  
   
    String query="update doctor set speciality='"+special+"',name='"+name+"',experience='"+Experience+"',days='"+days+"',time='"+time+"',contact='"+contact+"',availability='"+availability+"' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="ViewDoctors.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="ViewDoctors.jsp";
      </script>
      <%
}

}catch(Exception e){
    out.println(e);
}



%>