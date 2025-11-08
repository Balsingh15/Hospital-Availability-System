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
      <li class="active"><a href="AddDoctors.jsp"><strong><font color="lightgreen">Add Doctors</font></strong></a></li>
      <li><a href="ViewDoctors.jsp"><strong><font color="lightgreen">View Doctors</font></strong></a></li>
        
          <li><a href="AddMedicine.jsp"><strong><font color="lightgreen">Add Medicine</font></strong></a></li>
      <li><a href="ViewMedicine.jsp"><strong><font color="lightgreen">View Medicine</font></strong></a></li>
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
        
          
         
             <%String hspname=(String)session.getAttribute("hsp_name");%>
            <h1 style="color:red;">Add Doctors Here</h1>
          
               <form action="DoctorAction.jsp" method="post">
                <table>
                   <tr><th>Hospital Name</th><td><input type="text" name="hsp" value="<%=hspname%>" readonly=""></td></tr>
                 
                  
                  <tr><th>Select Specialist</th><td><select  name="special" required="">  
                              <option></option>
                              <option value="Allergists">Allergists</option>
                               <option value="Anesthesiologists">Anesthesiologists</option>
                                <option value="Cardiologists">Cardiologists</option>
                                 <option value="Colon and Rectal Surgeons">Colon and Rectal Surgeons</option>
                                 <option value="Critical Care Medicine Specialists">Critical Care Medicine Specialists</option>
                                 <option value="Dermatologists">Dermatologists</option>
                                 <option value="Endocrinologists">Endocrinologists</option>
                                 <option value="Emergency Medicine Specialists">Emergency Medicine Specialists</option>
                                 <option value="Family Physicians">Family Physicians</option>
                                 <option value="Gastroenterologists">Gastroenterologists</option>
                                 <option value="Geriatric Medicine Specialists">Geriatric Medicine Specialists</option>
                                 <option value="Hematologists">Hematologists</option>
                              
                          </select></td></tr>
                  <tr><th>Name</th><td><input type="text" name="name" required=""></td></tr>
                    <tr><th>Experience</th><td><input type="text" name="Experience" required=""></td></tr>
                    <tr><th>Consulting Days</th><td><input type="text" name="days" required=""></td></tr>
                     <tr><th>Consulting Time</th><td><input type="text" name="time" required=""></td></tr>
                     <tr><th>contact</th><td><input type="number" name="contact" required=""></td></tr>
                                 <tr><th>Availability</th><td><select  name="availability" required="">
                                             <option></option>
                                             <option>Leave</option>
                                             <option>Present</option>
                             </select></td></tr>
                      <tr><th></th><td><input type="submit" value="Add Doctor" required=""></td></tr>
                   
                </table>
            
            </form>  
           
            
         
            
        </center>
        
        
        
    </div>
</center>
       </div>
</div>


</body>
</html>