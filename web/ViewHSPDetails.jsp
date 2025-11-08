<%-- 
    Document   : Admin
    Created on : 9 Feb, 2021, 10:18:25 PM
    Author     : KishanVenky
--%>

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Admin Home</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />

<link rel="stylesheet" href="tablestyle.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:10000 
	});
});
</script>
<!-- / Featured Slider -->
</head>
<body id="top">
<div class="wrapper row1">
  <div id="topnav">
    <ul>
      <li><a href="AdminHome.jsp"><strong><font color="lightgreen">Home</font></strong></a></li>
      <li><a href="ViewUserDetails.jsp"><strong><font color="lightgreen">View Users Details</font></strong></a></li>
       <li class="active"><a href="ViewUserDetails.jsp"><strong><font color="lightgreen">View Hospital Details</font></strong></a></li>
       <li><a href="Admin.jsp"><strong><font color="lightgreen">LOGOUT</font></strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
        <h1><a href="#" ><font color="lightgreen">ANALYSIS ON MEDICINE AND DOCTOR AVAILABILITY IN GOVERNMENT HOSPITAL</font></a></h1>
      
    </div>
    
  </div>
</div>
<center>
 <div id="homepage1" class="clear1" style="width:1000px;height:500px;border:none;">
      
        <center>
            <h1 style="color:red;">View All Registered Hospital Details</h1>
            <table>
                <tr>
                    <th>Hospital Name</th>
                   
                        <th>Mobile</th>
                          <th>Location</th>
                           <th>Description</th>
                            <th>UserName</th>
                            <th>Status</th>
                          
                </tr>
                <%
                try{
                    ResultSet r=Queries.getExecuteQuery("select * from hsp");
                    while(r.next()){
                        String s=r.getString("status");
                        %>
                        <tr>
                            <td><%=r.getString("hsp_name")%></td>
                           
                            <td><%=r.getString("mobile")%></td>
                            <td><%=r.getString("location")%></td>
                            <td><textarea cols="30" rows="5"><%=r.getString("description")%></textarea></td>
                            <td><%=r.getString("uname")%></td>
                            <%if(s.equals("waiting")){%>
                            <td><a href="AuthorizeHsp.jsp?id=<%=r.getString("id")%>">waiting</a></td>
                                <%}else{%>
                                <td><%=r.getString("status")%></td>
                                <%}%>
                        </tr>
                        
                        <%
                    }
                    
                }catch(Exception e){
                   out.println(e); 
                }
                
                %>
            </table>
            </center>
        
    </div>
</center>
       </div>
</div>

 
        
</body>
</html>