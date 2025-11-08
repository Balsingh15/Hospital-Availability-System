<%@page import="com.database.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id=request.getParameter("id");
try{
  Connection con=Dbconnection.getcon();
  Statement st=con.createStatement();
int r=st.executeUpdate("delete from medicine where id='"+id+"'");
if(r>0)
{
 response.sendRedirect("ViewMedicine.jsp?msg=Deleted Successfully");   
}else{
 response.sendRedirect("ViewMedicine.jsp?msg=delete Failed");   
}
}catch(Exception e){
    out.println(e);
}
%>