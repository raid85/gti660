<!-- http://jsfiddle.net/evilcelery/4XZMb/ -->
<!-- http://twitter.github.com/bootstrap/javascript.html#collapse -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>E.T.S Movies Database - Search</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="bootstrap.css" rel="stylesheet" type="text/css">
    <link href="bootstrap-responsive.css" rel="stylesheet" type="text/css">
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }
	  
	  hr
		{
		  background-color: #123455;
		}

    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="ico/favicon2.ico">
								   

								   
  </head>

<body> 

 <div class="navbar-wrapper">
	<div class="container">
		<div class="navbar navbar-inverse">
			<div class="navbar-inner">
				<div class="nav-collapse collapse span6">
					<ul class="nav">
						<li><a href="Home.jsp">Home</a></li>
						<li class="active"><a href="#">Search</a></li>
						<li><a href="Contact.jsp">Contact</a></li>
						<li><a href="ConnexionOldMember.jsp">Profil User</a></li>
						<!-- Read about Bootstrap dropdowns at http://twitter.github.com/bootstrap/javascript.html#dropdowns -->
					</ul>
				</div><!--/.nav-collapse -->
			</div><!-- /.navbar-inner -->
		</div><!-- /.navbar -->
		<ul class="nav pull-right">
						<li class="dropdown">
						  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Connexion<b class="caret"></b></a>
						  <ul class="dropdown-menu">
							<li><a href="ConnexionNewMember.jsp">New member</a></li>
							<li><a href="ConnexionOldMember.jsp">Already a member</a></li>
						  </ul>
						</li>
					</ul>
	</div> <!-- /.container -->
 </div><!-- /.navbar-wrapper -->

<fieldset>
	<legend>Search Engine</legend>
	<div class="row">
		<div class="span4 collapse-group">
			<div class="collapse">
				<form class="form" action="" method="POST" id="FMovie">
					<table>
						<tr>
							<td><label for="Title"><strong>Title :</strong></label></td>
							<td><input type="text" name="Title" id="Title"/></td>
						</tr>
						<tr>
							<td><label for="Year"><strong>Year :</strong></label></td>
							<td><input type="text" name="Year" id="Year"/></td>
						</tr>
						<tr>
							<td><label for="Language"><strong>Language :</strong></label></td>
							<td><input type="text" name="Language" id="Language"/></td>
						</tr>
						<tr>
							<td><label for="LMin"><strong>Lenght Min :</strong></label></td>
							<td><input type="text" name="LMin" id="LMin"/></td>
						</tr>
						<tr>
							<td><label for="LMax"><strong>Lenght Max :</strong></label></td>
							<td><input type="text" name="LMax" id="LMax"/></td>
						</tr>
						<tr>
							<td><label for="TExpressions"><strong>Text recurrent expressions :</strong></label></td>
							<td><input type="text" name="TExpressions" id="TExpressions"/></td>
						</tr>
					</table>
					<input id="submitFMovie" type="submit" name="FMovie" value="Find Movie" style="background:blue;color:white"/>
				</form>
			</div>
			<p><a class="btn" href="#" onClick="#" style="background:black;color:white">Search By Movie</a></p>
		</div> <!-- Fin collapse-group -->
	</div> <!-- Fin row --> 

	<br>


	<div class="row">
		<div class="span4 collapse-group">
			<div class="collapse">
				<form class="form" action="" method="POST">
					<table>
						<tr>
							<td><label for="Director"><strong>Director :</strong></label></td>
							<td><input type="text" name="Director" id="Director"/></td>
						</tr>
						<tr>
							<td><label for="Actor"><strong>Actor :</strong></label></td>
							<td><input type="text" name="Actor" id="Actor"/></td>
						</tr>
						<tr>
							<td><label for="Screenwriter"><strong>Screenwriter :</strong></label></td>
							<td><input type="text" name="Screenwriter" id="Screenwriter"/></td>
						</tr>
					</table>
					<input type="submit" name="Find" value="Find" style="background:blue;color:white"/>
				</form>
			</div>
			<p><a class="btn" href="#" style="background:black;color:white">Search by director, actor, screenwriter</a></p>
		</div> <!-- Fin collapse-group -->
	</div> <!-- Fin row --> 

	<br>

	<div class="row">
		<div class="span4 collapse-group">
			<div class="collapse">
				<form class="form" action="" method="POST">
					<table>
						<tr>
							<td><label for="NPerson"><strong>Name :</strong></label></td>
							<td><input type="text" name="NPerson" id="NPerson"/></td>
						</tr>
						<tr>
							<td><label for="IType"><strong>Include Type :</strong></label></td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="IType" value="Comedy"> Comedy<br>
								<input type="checkbox" name="IType" value="ScienceFiction"> Science Fiction<br>
								<input type="checkbox" name="IType" value="Horror"> Horror<br>
								<input type="checkbox" name="IType" value="Action"> Action<br>
								<input type="checkbox" name="IType" value="Fantasy"> Fantasy<br><br>
							</td>
						</tr>
						<tr>
							<td><label for="EType"><strong>Exclude Type :</strong></label></td>
						</tr>
						<tr>
							<td>
								<input type="checkbox" name="EType" value="Comedy"> Comedy<br>
								<input type="checkbox" name="EType" value="ScienceFiction"> Science Fiction<br>
								<input type="checkbox" name="EType" value="Horror"> Horror<br>
								<input type="checkbox" name="EType" value="Action"> Action<br>
								<input type="checkbox" name="EType" value="Fantasy"> Fantasy<br><br>
							</td>
						</tr>
					</table>
					<input type="submit" name="FPerson" value="Find Person" style="background:blue;color:white"/>
				</form>
			</div>
			<p><a class="btn" href="#" style="background:black;color:white">Search by person by a movie type</a></p>
		</div> <!-- Fin collapse-group -->
	</div> <!-- Fin row --> 
	<div>
		<p><input type="submit" name="FAll" value="Search All" style="background:red;color:white;float:left"/></p>
	</div>
</fieldset>

<!--  Ce bouton permet de chercher avec les 3 types de recherche -->

 <hr style="height:5px">
  
  <fieldset>
		 <legend>Results</legend>
            <table>
				
			</table>
  </fieldset>
    
  
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>
	<script src="js/methods.js"></script>
  </body>
</html>

