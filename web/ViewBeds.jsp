

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>UserHome</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="table.css" type="text/css" />
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
      <li><a href="HospitalHome.jsp"><strong><font color="lightgreen">Home</font></strong></a></li>
      <li><a href="AddDoctors.jsp"><strong><font color="lightgreen">Add Doctors</font></strong></a></li>
      <li><a href="ViewDoctors.jsp"><strong><font color="lightgreen">View Doctors</font></strong></a></li>
       <li><a href="AddMedicine.jsp"><strong><font color="lightgreen">Add Medicine</font></strong></a></li>
      <li><a href="ViewMedicine.jsp"><strong><font color="lightgreen">View Medicine</font></strong></a></li>
     <li><a href="AddBeds.jsp"><strong><font color="lightgreen">Add Beds</font></strong></a></li>
     <li class="active"><a href="ViewBeds.jsp"><strong><font color="lightgreen">View Beds</font></strong></a></li>    
     <li><a href="Hospital.jsp"><strong><font color="lightgreen">LOGOUT</font></strong></a></li>
          
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
 <div id="homepage" class="clear" style="width:500px;">
       <center>
           
            <h1 style="color:red;"> All Beds Details </h1>
            <table>
                <tr>
                    <th>Hospital Name</th><th>Total Beds</th><th>Available Beds</th> <th>Update</th><th>Delete</th>
                </tr>
            <%
                String hsp_name=(String)session.getAttribute("hsp_name");
            try{
            ResultSet r=Queries.getExecuteQuery("select * from beds where hspname='"+hsp_name+"'");
            while(r.next()){
                String hhname=r.getString("hspname");
                String medicine=r.getString("total_beds");
             
                String availability=r.getString("availabile");
             %>
             <tr>
                 <td>
                     <%=hhname%>
                 </td>
                 <td>
                     <%=medicine%>
                 </td>
                 <td>
                     <%=availability%>
                 </td>
                
                 
                     <td><a href="UpdateBeds.jsp?id=<%=r.getString("id")%>">Update</a></td>
                     <td><a href="DeleteBeds.jsp?id=<%=r.getString("id")%>">Delete</a></td>
           </tr>
             
             <%
            }
            
            }catch(Exception e){
                out.println();
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