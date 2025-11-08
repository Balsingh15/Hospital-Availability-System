
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String id=request.getParameter("id");
try{
    String query="update hsp set status='Authorized' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
        %>
        <script type="text/javascript">
            window.alert("Successfully Authorized");
            window.location="ViewHSPDetails.jsp";
        </script>
        <%
    }else{
 %>
        <script type="text/javascript">
            window.alert("Failed Authorization");
            window.location="ViewHSPDetails.jsp";
        </script>
        <%
}
}catch(Exception e){
 out.println(e);   
}



%>