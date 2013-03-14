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
<h2 class="title"><a href="#">Type de recherche (Descripteur MPEG7)</a></h2>
<div id="four-columns">
<form action="#" method="post">	
		<div id="column1">
			<h2>Search by "Motion"</h2>
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label id="label">Camera Motion</label>
      							<br>
      							<br>								
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Motion Trajectory</label>
								<br>
								<br>											
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Parametric Motion</label>
								<br>
								<br>			
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Motion Activity</label>															
		</div>
		<div id="column2">
			<h2>Search by "Color"</h2>	
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label id="label">Color space</label>
      							<br>	
      							<br>								
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Dominant color(s)</label>
								<br>	
								<br>									
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Color Histogram</label>
								<br>	
								<br>	
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Color-Structure</label>
								<br>	
								<br>	
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Histogram</label>									
		</div>
		<div id="column3">
			<h2>Search by "Shape"</h2>
			<input type="radio" id="radiobutton" name="radiobutton" />
      							<label id="label">Object Bounding Box</label>
      							<br>	
      							<br>								
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Region-Based Shape Descriptor</label>
								<br>	
								<br>									
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Contour-Based Shape Descriptor</label>			
		</div>
		<div id="column4">
			<h2>Search by "Texture"</h2>
			<input type="radio" id="radiobutton" name="radiobutton" />
      							<label id="label">Homogeneous Texture</label>
      							<br>	
      							<br>								
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label>Texture Browsing</label>
								<br>	
								<br>									
								<input type="radio" id="radiobutton" name="radiobutton" />
      							<label> Edge Histogram</label>
		</div>
			
		
	</div>
	
			 <p class="link-style"> 
                                    <input type="submit" value="Suivant" /> 
                                    <input type="hidden" name="action" id="action" value="login" />
								</p>
			
		</form>
  </div>
  <div id="page">
     
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                  
                     
	<form action="#" method="post" enctype="multipart/form-data" onsubmit="return false">
    <p>
      <input type="checkbox" id="test_checkbox_1" name="test_checkbox_1" />
      <label for="test_checkbox_1">
        Test checkbox 1
      </label>
      &nbsp;
      &nbsp;
      <input type="checkbox" id="test_checkbox_2" name="test_checkbox_2" />
      <label for="test_checkbox_2">
        Test checkbox 2
      </label>
      &nbsp;
      &nbsp;
      <input type="checkbox" id="test_checkbox_3" name="test_checkbox_3" />
      <label for="test_checkbox_3">
        Test checkbox 3
      </label>
    </p>
    <p>
      <input type="radio" id="test_radio_1" name="test_radio_group" />
      <label for="test_radio_1">
        Test radio 1
      </label>
      &nbsp;
      &nbsp;
      <input type="radio" id="test_radio_2" name="test_radio_group" />
      <label for="test_radio_2">
        Test radio 2
      </label>
      &nbsp;
      &nbsp;
      <input type="radio" id="test_radio_3" name="test_radio_group" />
      <label for="test_radio_3">
        Test radio 3
      </label>
    </p>
    <p>
      <label for="select_dd">
        Select drop-down
      </label>
      <br />
      <select id="select_dd" name="select_dd">
        <optgroup label="Group 1">
          <option value="1">Some text goes here</option>
          <option value="2">Another choice could be here</option>
          <option value="3">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 2">
          <option value="4">Some text goes here</option>
          <option value="5">Another choice could be here</option>
          <option value="6">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 3">
          <option value="7">Some text goes here</option>
          <option value="8">Another choice could be here</option>
          <option value="9">Yet another item to be chosen</option>
        </optgroup>
      </select>
      <input type="text" id="text_inline" name="text_inline" />
      <input type="button" value="Input Button" />
      <button>Button Tag</button>
      <a href="#" class="button">Link Button</a>
    </p>
    <p>
      <label for="select_multi">
        Select multiple
      </label>
      <br />
      <select id="select_multi" name="select_multi" multiple="multiple" size="10">
        <optgroup label="Group 1">
          <option value="1">Some text goes here</option>
          <option value="2">Another choice could be here</option>
          <option value="3">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 2">
          <option value="4">Some text goes here</option>
          <option value="5">Another choice could be here</option>
          <option value="6">Yet another item to be chosen</option>
        </optgroup>
        <optgroup label="Group 3">
          <option value="7">Some text goes here</option>
          <option value="8">Another choice could be here</option>
          <option value="9">Yet another item to be chosen</option>
        </optgroup>
      </select>
    </p>
    <p>
      <label for="textarea">
        Textarea
      </label>
      <br />
      <textarea id="textarea" name="textarea" rows="5" placeholder="This is an example of HTML5 placeholder text."></textarea>
    </p>
    <table class="horiz">
      <tr>
        <td>
          <label for="url">
            URL + Autofocus
          </label>
          <br />
          <input type="url" id="url" name="url" value="http://" autofocus="autofocus" />
        </td>
        <td>
          <label for="email">
            Email
          </label>
          <br />
          <input type="email" id="email" name="email" placeholder="name@example.com" />
        </td>
        <td>
          <label for="password">
            Password
          </label>
          <br />
          <input type="password" id="password" name="password" placeholder="Alphanumeric123!" />
        </td>
      </tr>
      <tr>
        <td>
          <label for="datetime-local">
            Datetime local
          </label>
          <br />
          <input type="datetime-local" id="datetime-local" name="datetime-local" />
        </td>
        <td>
          <label for="number">
            Number
          </label>
          <br />
          <input type="number" id="number" name="number" min="0" max="999" step="1" />
        </td>
        <td>
          <label for="tel">
            Tel (phone)
          </label>
          <br />
          <input type="tel" id="tel" name="tel" />
        </td>
      </tr>
      <tr>
        <td>
          <label for="datetime">
            Datetime
          </label>
          <br />
          <input type="datetime" id="datetime" name="datetime" />
        </td>
        <td>
          <label for="date">
            Date
          </label>
          <br />
          <input type="date" id="date" name="date" />
        </td>
        <td>
          <label for="month">
            Month
          </label>
          <br />
          <input type="month" id="month" name="month" />
        </td>
      </tr>
      <tr>
        <td>
          <label for="search">
            Search
          </label>
          <br />
          <input type="search" id="search" name="search" />
        </td>
        <td>
          <label for="range">
            Range
          </label>
          <br />
          <input type="range" id="range" name="range" />
        </td>
        <td>
          <label for="file">
            File upload
          </label>
          <br />
          <input type="file" id="file" name="file" />
        </td>
      </tr>
    </table>
    <p>
      <input type="submit" value="Input - Submit" />
      &nbsp;
      <input type="button" value="Input - Button" />
      &nbsp;
      <input type="reset" value="Input - Reset" />
      &nbsp;
      <button>Button tag</button>
    </p>
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
