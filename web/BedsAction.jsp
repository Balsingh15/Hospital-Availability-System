

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String hsp=request.getParameter("hsp");
    String tbeds=request.getParameter("tbeds");
    String abeds=request.getParameter("abeds");
    int cc=Integer.parseInt(abeds);
   ResultSet r=Queries.getExecuteQuery("select count(*) from beds where hspname='"+hsp+"'");
   int c=0;
   while(r.next()){
       c=r.getInt(1);
   }
   if(c==0){
    String query="insert into beds values(null,'"+hsp+"','"+tbeds+"','"+abeds+"')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="AddBeds.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="AddBeds.jsp";
      </script>
      <%
}
}else{
ResultSet r1=Queries.getExecuteQuery("select * from beds where hspname='"+hsp+"'");
int avail=0;

while(r1.next()){
avail=Integer.parseInt(r1.getString("availabile"));
}

int t=cc+avail;
String query="update beds set availabile='"+t+"' where hspname='"+hsp+"'";
  int i=Queries.getExecuteUpdate(query); 
if(i>0){
%>
      <script type='text/javascript'>
          window.alert("Successful...!!");
          window.location="AddBeds.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Failed..!!");
          window.location="AddBeds.jsp";
      </script>
      <%
}    

}
}catch(Exception e){
    out.println(e);
}



%>