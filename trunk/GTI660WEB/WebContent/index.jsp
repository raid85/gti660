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
		  <li class="current_page_item"><a href="#">Home</a></li>
		  <li><a href="#">Search</a></li>
		  <li><a href="#">DB Configuration & Status</a></li>
		  <li><a href="#">Profile</a></li>
		  <li><a href="#">Sign Out</a></li>
		
	  </ul>
  </div>
  <!-- end #menu -->

	
  <div id="welcome">
	  <h2 class="title"><a href="#">Bienvenue</a></h2>
	  <div class="entry">
		  <p>Ceci est <strong>ETS-MDB (ETS Movie database) </strong>, le portail web vers notre base de données multimédia, inscrivez vous!
		   C'est gratuit ! :)</p>
	  </div>
  </div>
   
  <div id="page">
                  <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="./" autocomplete="on" method="post"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Votre Courriel</label>
                                    <input id="username" name="username" required="required" type="text" placeholder="mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Mot de passe</label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                               
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
                                    <input type="hidden" name="action"  value="login" />
								</p>
                                <p class="change_link">
									Pas encore membre ?
									<a href="#toregister" class="to_register">Inscrivez vous !</a>
								</p>
                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="./" autocomplete="on" method="post"> 
                                <h1>Inscription</h1> 
                                 <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Nom</label>
                                    <input id="nom" name="nom" required="required" type="text" placeholder="nom" />
                                </p>
                                <p> 
                                    <label for="usernamesignup" class="uname" data-icon="u">Prenom</label>
                                    <input id="prenom" name="prenom" required="required" type="text" placeholder="prenom" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail" data-icon="e" >Courriel </label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" data-icon="p">Mot de passe </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" data-icon="p">Confirmez le mot de passe </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p class="signin button"> 
									<input type="submit" value="Sign up"/> 
									<input type="hidden" name="action"  value="register" />
								</p>
                                <p class="change_link">  
									Already a member ?
									<a href="#tologin" class="to_register"> Go and log in </a>
								</p>
                            </form>
                        </div>
						
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
