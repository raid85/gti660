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

<%
String [] infosC = new String[4];
infosC = (String[])request.getSession().getAttribute("infosConnection");
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>GTI660 BD Multimedia</title>
<link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css" />
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
<link href="styleR.css" rel="stylesheet" type="text/css" media="screen" />
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
		  <li>
		  <li><a href="./?action=home">Home</a></li>
		  <li><a href="./?action=search">Search</a></li>
		  <li class="current_page_item"><a href="">DB Configuration & Status</a></li>
		  <li ><a href="./?action=profile">Profile</a></li>
		  <li><a href="./?action=signout ">Sign Out</a></li>
		
	  </ul>
  </div>
  <!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
											
						<div id="wrapperForm">
						 	<h1>Modification des parametres de connection</h1>
                            <form  action="./" autocomplete="on" method="post"> 
                            <div id="three-columns">
		<div id="column1">
			<p> 
			<label for="serveur" class="uname">Serveur</label>
			<input id="serveur" name="serveur" required="required" type="text" placeholder="oracle-11.logti.etsmtl.ca"/>
			</p> 
         <p> 
          <label for="sid" class="uname">SID</label>
          <input id="sid" name="sid" required="required" type="text" placeholder="GTI660"/>
         </p>     
         <p> 
          <label for="undb" class="uname"  data-icon="u">User Name</label>
          <input id="undb" name="undb" required="required" type="text" placeholder="equipe4"/>
         </p> 
       
		<p> 
          <label for="password" class="youpasswd" data-icon="p">Password</label>
          <input id="password" name="password" required="required" type="password" placeholder="8M2Fbjt6" /> 
        </p>
        <br>
                <p> 
			<input type="submit" value="Modify & Re-Connect"/> 
		    <input type="hidden" name="action"  value="reconnect" />
		</p> 
       
              </div>
             
            
          
		
              </form>
                        </div>
                        
					</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
							<h2>Statut Base de données</h2>
							<ul>
								 <% for (int i=0; i<infosC.length;i++){%>                   
										
						<li>
							<%=infosC[i].toString() %>
						</li>
						 <%}%>
							</ul>
						</li>
					</ul>
				</div>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
  <!-- end #page --> 
<div id="footer">
  <p>Copyright (c) 2013 Riad Chebli . All rights reserved. Design by <a href="http://www.freecsstemplates.org">FCT</a>.</p>
</div>
<!-- end #footer -->
</body>
</html>
