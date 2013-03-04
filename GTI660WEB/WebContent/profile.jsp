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
<%@ page import="modele.DelegateClient"%>
<%
String [] infos = new String[10];
infos = (String[])request.getSession().getAttribute("infosClient");
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
		  <li><a href="./?action=config">DB Configuration & Status</a></li>
		  <li  class="current_page_item"><a href="">Profile</a></li>
		  <li><a href="./?action=signout ">Sign Out</a></li>
		
	  </ul>
  </div>
  <!-- end #menu -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post">						
						<div id="wrapperForm">
						 	<h1>Modification du profil</h1>
                            <form  action="./" autocomplete="on" method="post"> 
                            <div id="three-columns">
		<div id="column1">
			  <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Nom</label>
                                    <input id="nom" name="nom" required="required" type="text" placeholder="Hendrix" />
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Prenom</label>
                                    <input id="prenom" name="prenom" required="required" type="text" placeholder="Jimmy" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" >Courriel </label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                  <p> 
                                    <label for="tel" class="uname">Telephone</label>
                                    <input id="tel" name="tel" required="required" type="text" placeholder="123-456-7890"/>
                                </p>
                              
		</div>
		<div id="column2">
			 <p> 
                 					<label for="adresse" class="uname" >Adresse </label>
                                    <input id="adresse" name="adresse" required="required" type="text" placeholder="1111 Rue Notre-Dame"/> 
                                </p>
                                  <p> 
                                    <label for="ville" class="uname">Ville</label>
                                    <input id="ville" name="ville" required="required" type="text" placeholder="Montréal"/>
                                </p>
                                <p> 
                                    <label for="prov" class="uname">Province</label>
                                    <input id="prov" name="prov" required="required" type="text" placeholder="Québec"/>
                                </p>
                                   <p> 
                                    <label for="cp" class="uname">Code Postal</label>
                                    <input id="cp" name="cp" required="required" type="text" placeholder="L1L-2N2"/>
                                </p>
                                 
                                  
		</div>
		<div id="column3">
		 <p> 
            <label for="cc" class="uname">Carte de crédit</label>
            <input id="cc" name="cc" required="required" type="text" placeholder="1234-4567-8901-2345"/>
         </p>
         <p> 
          <label for="anniv" class="uname">Anniversaire</label>
          <input id="anniv" name="anniv" required="required" type="text" placeholder="JJ-MM-AAAA"/>
         </p>
         <p> 
         <label for="passwordsignup" class="youpasswd" data-icon="p">Mot de passe </label>
          <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="passW0R123"/>
          </p>
          <p class="signin button"> 
			<input type="submit" value="Modifier"/> 
		    <input type="hidden" name="action"  value="modifyProfile" />
		</p>  
		
		  
			
		</div>
	</div>
                              
                            </form>
                        
                        </div>
					</div>
				</div>
				<!-- end #content -->
				<div id="sidebar">
					<ul>
						<li>
							<h2>Current profile</h2>
							<ul>
								 <% for (int i=0; i<infos.length;i++){%>                   
										
						<li>
							<%=infos[i].toString() %>
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
