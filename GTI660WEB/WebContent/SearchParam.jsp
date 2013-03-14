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
  <div id="page">
     			
     			<%	if(request.getSession().getAttribute("searchType")!= null && request.getSession().getAttribute("searchType").equals("color") ){%>
               <%=request.getSession().getAttribute("searchType") %>
                 <div style="position:relative;height:286px;width:531px;border:1px solid black;">
  <div id="gradientBox" style="cursor:crosshair;top:15px;position:absolute;
                               left:15px;width:256px;height:256px;">
    <img id="gradientImg" style="display:block;width:256px;height:256px;"
         src="/Color_Picker/color_picker_gradient.png" />
    <img id="circle" style="position:absolute;height:11px;width:11px;"  
         src="/Color_Picker/color_picker_circle.gif" />
  </div>
  <div id="hueBarDiv" style="position:absolute;left:310px;width:35px;
                             height:256px;top:15px;">
    <img style="position:absolute;height:256px; width:19px;left:8px;" 
         src="/Color_Picker/color_picker_bar.png" />
    <img id="arrows" style="position:absolute;height:9px;width:35px;left:0px;" 
         src="/Color_Picker/color_picker_arrows.gif" />
  </div>
  <div style="position:absolute;left:370px;width:145px;height:256px;top:15px;">
  <div style="position:absolute;border: 1px solid black;
              height:50px;width:145px;top:0px;left:0px;">
    <div id="quickColor" style="position:absolute;height:50px;width:73px;
                                top:0px;left:0px;">
    </div>
    <div id="staticColor" style="position:absolute;height:50px;width:72px;
                                 top:0px;left:73px;">
    </div>
  </div>
  <br />
  <table width="100%" style="position:absolute;top:55px;">
    <tr>
      <td>Hex: </td>
      <td>
        <input size="8" type="text" id="hexBox" onchange="hexBoxChanged();" />
      </td>
    </tr>
    <tr>
      <td>Red: </td>
      <td>
        <input size="8" type="text" id="redBox" onchange="redBoxChanged();" />
      </td>
    </tr>
    <tr>
      <td>Green: </td>
      <td>
        <input size="8" type="text" id="greenBox" onchange="greenBoxChanged();" />
      </td>
    </tr>
    <tr>
      <td>Blue: </td>
      <td>
        <input size="8" type="text" id="blueBox" onchange="blueBoxChanged();" />
      </td>
    </tr>
    <tr>
      <td>Hue: </td>
      <td>
        <input size="8" type="text" id="hueBox" onchange="hueBoxChanged();" />
      </td>
    </tr>
    <tr>
      <td>Saturation: </td>
      <td>
        <input size="8" type="text" id="saturationBox"
            onchange="saturationBoxChanged();" />
      </td>
    </tr>
    <tr>
      <td>Value: </td>
      <td>
        <input size="8" type="text" id="valueBox" onchange="valueBoxChanged();" />
      </td>
    </tr>
  </table>
  </div>
</div>
                 
                 
                  <%}%>
	
	        </div> 
  

</body>
</html>
