
<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Hospital Home</title>

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
 <div id="homepage" class="clear" style="width:600px;">
       <center>
        
          
         <%String hsp=(String)session.getAttribute("hsp_name");%>
            
            <h1 style="color:red;">Add Beds Here</h1>
          
               <form action="BedsUpdateAction.jsp" method="post">
                   <%try{
                   ResultSet r=Queries.getExecuteQuery("select * from beds where hspname='"+hsp+"'");
                  while(r.next()){
                   %>
                <table>
                 <tr><th>Hospital Name</th><td><input type="text" name="hsp" value="<%=hsp%>"  readonly=""></td></tr>
                  
                  
                 
                  <tr><th>Total Beds</th><td><input type="text" name="tbeds" value="<%=r.getString("total_beds")%>" required=""></td></tr>
                    <tr><th>Available Beds</th><td><input type="text" name="abeds"  value="<%=r.getString("availabile")%>"  required=""></td></tr>
                       <tr><th></th><td><input type="submit" value="Update Beds" required=""></td></tr>
                   
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