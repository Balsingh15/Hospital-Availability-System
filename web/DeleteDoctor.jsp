<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id=request.getParameter("id");
try{
  Connection con=Dbconnection.getcon();
  Statement st=con.createStatement();
int r=st.executeUpdate("delete from doctor where id='"+id+"'");
if(r>0)
{
 response.sendRedirect("ViewDoctors.jsp?msg=Deleted Successfully");   
}else{
 response.sendRedirect("ViewDoctors.jsp?msg=delete Failed");   
}
}catch(Exception e){
    out.println(e);
}
%>