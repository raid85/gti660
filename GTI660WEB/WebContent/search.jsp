<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : NaturalPrime 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120325

-->
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>GTI660 BD Multimedia</title>
<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<style type="text/css">
@import "gallery.css";
</style>
</head>
<body>
<div id="header">
	<div id="logo">
		<h1><a href="#">Multimedia DB Web Application</a></h1>
    </div>
  </div>
  <!-- end #header -->
  <div id="menu">
	  <ul>
		  <li><a href="./?action=home">Home</a></li>
		  <li class="current_page_item"><a href="">Search</a></li>
		  <li><a href="./?action=config">DB Configuration & Status</a></li>
		  <li><a href="./?action=profile">Profile</a></li>
		  <li><a href="./?action=signout">Sign Out</a></li>
		
	  </ul>
  </div>
  <!-- end #menu -->
 <div id="page">
<h2>Type de recherche (Descripteur MPEG7)</a></h2>
<div id="four-columns">
<form  action="./" autocomplete="on" method="post">	
		<div id="column1">
			<h2>Search by "Motion"</h2>
								<input type="radio" id="radiobutton" name="radiobutton" disabled/>
      							<labelDis>Camera Motion</labelDis>
      							<br>
      							<br>								
								<input type="radio" id="radiobutton" name="radiobutton" disabled />
      							<labelDis>Motion Trajectory</labelDis>
								<br>
								<br>											
								<input type="radio" id="radiobutton" name="radiobutton" disabled/>
      							<labelDis>Parametric Motion</labelDis>
								<br>
								<br>			
								<input type="radio" id="radiobutton" name="radiobutton" disabled />
      							<labelDis>Motion Activity</labelDis>															
		</div>
		<div id="column2">
			<h2>Search by "Color"</h2>	
								<input type="radio" id="radiobutton" name="radiobutton" disabled />
      							<labelDis >Color space</labelDis>
      							<br>	
      							<br>								
								<input type="radio" value="color" name="test_radio_group"/>
      							<label>Dominant color(s)</label>
								<br>	
								<br>									
								<input type="radio" id="radiobutton" name="radiobutton" disabled />
      							<labelDis>Color Histogram</labelDis>
								<br>	
								<br>	
								<input type="radio" id="radiobutton" name="radiobutton" disabled />
      							<labelDis>Color-Structure</labelDis>
								<br>	
								<br>	
								<input type="radio" id="radiobutton" name="radiobutton" disabled />
      							<labelDis>Histogram</labelDis>									
		</div>
		<div id="column3">
			<h2>Search by "Shape"</h2>
			<input type="radio" id="radiobutton" name="radiobutton" disabled/>
      							<labelDis>Object Bounding Box</labelDis>
      							<br>	
      							<br>								
								<input type="radio" id="radiobutton" name="radiobutton" disabled/>
      							<labelDis>Region-Based Shape Descriptor</labelDis>
								<br>	
								<br>									
								<input type="radio" name="test_radio_group" value = "shape"/>
      							<label>Contour-Based Shape Descriptor</label>			
		</div>
		<div id="column4">
			<h2>Search by "Texture"</h2>
			<input type="radio" id="radiobutton" name="radiobutton" disabled/>
      							<labelDis>Homogeneous Texture</labelDis>
      							<br>	
      							<br>								
								<input type="radio" id="radiobutton" name="radiobutton" disabled/>
      							<labelDis>Texture Browsing</labelDis>
								<br>	
								<br>									
								<input type="radio" id="radiobutton" name="radiobutton" disabled />
      							<labelDis> Edge Histogram</labelDis>
		</div>                           
				
		<input class="button" type="submit" value="Suivant"/> 
     <input type="hidden" name="action" id="action" value="showParams" />				
			
		</form>	
	</div>		
	 
	 <jsp:include page="SearchParam.jsp" />
  </div>
  
  


  <!-- end #page --> 
<div id="footer">
 <%if(request.getSession().getAttribute("dbUP")=="true"){%>
	 <p><img width="25px" height="25px"  class="picture" src="images/dbonline.png"%> Statut de la connexion à la bd : Ouverte</p>
	  <%}%>
	  <%if(request.getSession().getAttribute("dbUP")=="false"){%>
	 <p><img width="25px" height="25px"  class="picture" src="images/dboffline.png"%> Statut de la connexion à la bd : Fermée</p>
	  <%}%>
  <p>Copyright (c) 2013 Riad Chebli . All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>
