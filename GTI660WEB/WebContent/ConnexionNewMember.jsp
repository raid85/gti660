<!-- http://jsfiddle.net/evilcelery/4XZMb/ -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Connexion New Member</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../css/bootstrap.css" rel="stylesheet">
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

    </style>
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../ico/favicon2.ico">
  </head>

  <body>

  <form action="" method="POST">
       <fieldset>
		 <legend>Registration Form</fieldset>
            <table>
           
            <tr>
				<td><label for="FName"><strong>First Name :</strong></label></td>
				<td><input type="text" name="FName" id="login"/></td>
            </tr>
			
			<tr>
				<td><label for="LName"><strong>Last Name :</strong></label></td>
				<td><input type="text" name="LName" id="login"/></td>
            </tr>
			
			<tr>
				<td><label for="Country"><strong>Country :</strong></label></td>
				<td><input type="text" name="LName" id="Country"/></td>
            </tr>
			
			<!-- select option-->
			<tr>
				<td><label for="City"><strong>City :</strong></label></td>
				<td><input type="text" name="LName" id="City"/></td>
            </tr>
			
			<tr>
				<td><label for="Address"><strong>Address :</strong></label></td>
				<td><input type="text" name="LName" id="Address"/></td>
            </tr>
			
			<tr>
				<td><label for="EMail"><strong>Email :</strong></label></td>
				<td><input type="text" name="LName" id="EMail"/></td>
            </tr>
			
			<tr>
				<td><label for="Confirmemail"><strong>Confirm the email :</strong></label></td>
				<td><input type="password" name="pass2" id="Confirmemail"/></td>
            </tr>
           
            <tr>
				<td><label for="Password"><strong>Password :</strong></label></td>
				<td><input type="password" name="pass" id="Password"/></td>
            </tr>
           
            <tr>
				<td><label for="Confirmpsw"><strong>Confirm the password  :</strong></label></td>
				<td><input type="password" name="pass2" id="Confirmpsw"/></td>
            </tr>
			
        </table>
		<!-- Remettre type a submit pour le Subscribed-->
        <input type="button" name="Subscribed" value="Subscribed" onclick="location.href='ProfilUser.html'"/>
		<input type="button" name="Cancelled" value="Cancelled" onclick="location.href='Home.html'">
       </fieldset>
  </form>
    
  
    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap-transition.js"></script>
    <script src="../assets/js/bootstrap-alert.js"></script>
    <script src="../assets/js/bootstrap-modal.js"></script>
    <script src="../assets/js/bootstrap-dropdown.js"></script>
    <script src="../assets/js/bootstrap-scrollspy.js"></script>
    <script src="../assets/js/bootstrap-tab.js"></script>
    <script src="../assets/js/bootstrap-tooltip.js"></script>
    <script src="../assets/js/bootstrap-popover.js"></script>
    <script src="../assets/js/bootstrap-button.js"></script>
    <script src="../assets/js/bootstrap-collapse.js"></script>
    <script src="../assets/js/bootstrap-carousel.js"></script>
    <script src="../assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>
