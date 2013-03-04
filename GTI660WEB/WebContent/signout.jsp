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
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
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
		  <li ><a href="./?action=search">Search</a></li>
		  <li><a href="./?action=config">DB Configuration & Status</a></li>
		  <li><a href="./?action=profile">Profile</a></li>
		  <li class="current_page_item"><a href="./?action=signout">Sign Out</a></li>
		
	  </ul>
  </div>
  <!-- end #menu -->

	

	
	 

   <div class="page">
     <h1 class="title"><a href="">Se déconnecter</a></h1>
		  <h2 class="title">Merci de votre de visite</h2>
		   <form  action="./" autocomplete="on" method="post"> 
		   
			<input type="submit" value="Déconnexion"/> 
		    <input type="hidden" name="action"  value="peaceOut" />
		    </form>
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
