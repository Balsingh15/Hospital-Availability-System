

<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Admin Home</title>

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
      <li class="active"><a href="ViewMedicine.jsp"><strong><font color="lightgreen">View Medicine</font></strong></a></li>
     <li><a href="AddBeds.jsp"><strong><font color="lightgreen">Add Beds</font></strong></a></li>
     <li><a href="ViewBeds.jsp"><strong><font color="lightgreen">View Beds</font></strong></a></li>    
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
 <div id="homepage" class="clear" style="width:600px;">
       <center>
        
             <%String id=request.getParameter("id");
         String hspname=(String)session.getAttribute("hsp_name");
         %>
         
            
            <h1 style="color:red;">Add Medicines Here</h1>
          
               <form action="MedicineUpdateAction.jsp" method="post">
                   <%try{
                     ResultSet r=Queries.getExecuteQuery("select * from medicine where id='"+id+"'");
                     if(r.next()){
                   %>
                <table>
                  
                  
                 <tr><th>Medicine ID</th><td><input type="text" name="mid" value="<%=id%>" readonly=""></td></tr>
                 <tr><th>Hospital Name</th><td><input type="text" name="hspname" value="<%=hspname%>" readonly=""></td></tr>
                  <tr><th>Medicine Name</th><td><input type="text" name="mname" value="<%=r.getString("medicine")%>" required=""></td></tr>
                    <tr><th>No.of Availability</th><td><input type="text" name="availability"   value="<%=r.getString("availability")%>"  required=""></td></tr>
                       <tr><th></th><td><input type="submit" value="Update Medicine" required=""></td></tr>
                   
                </table>
            <%}
}catch(Exception e){
System.out.println(e);
}%>
            </form>  
           
            
         
            
        </center>
        
        
        
    </div>
</center>
       </div>
</div>


</body>
</html>