

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String hsp=request.getParameter("hsp");
    String mname=request.getParameter("mname");
    String availability=request.getParameter("availability");
    int cc=Integer.parseInt(availability);
  
   ResultSet r=Queries.getExecuteQuery("select count(*) from medicine where hspname='"+hsp+"'and medicine='"+mname+"'");
   int c=0;
   while(r.next()){
       c=r.getInt(1);
   }
   if(c==0){
    String query="insert into medicine values(null,'"+hsp+"','"+mname+"','"+availability+"')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="AddMedicine.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="AddMedicine.jsp";
      </script>
      <%
}
}else{
ResultSet r1=Queries.getExecuteQuery("select * from medicine where hspname='"+hsp+"'and medicine='"+mname+"'");
int avail=0;

while(r1.next()){
avail=Integer.parseInt(r1.getString("availability"));
}

int t=cc+avail;
String query="update medicine set availability='"+t+"' where hspname='"+hsp+"' and medicine='"+mname+"'";
  int i=Queries.getExecuteUpdate(query); 
if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="AddMedicine.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="AddMedicine.jsp";
      </script>
      <%
}    

}
}catch(Exception e){
    out.println(e);
}



%>