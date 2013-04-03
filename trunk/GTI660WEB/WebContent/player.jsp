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

<link href="http://fonts.googleapis.com/css?family=Abel"
	rel="stylesheet" type="text/css" />
<link href="style1.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />

<style type="text/css">
@import "gallery.css";
</style>
</head>
<body>


	
	<div id="page2">
	
	  <h2>Your selection :</h2>
	<%if(request.getSession().getAttribute("moviePath")!=null ){%>
	<div>
									<OBJECT WMODE="transparent" ID="myObj"
										CLASSID="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B"
										CODEBASE="http://www.apple.com/qtactivex/qtplugin.cab"
										>
										<PARAM ID="pSrc" NAME="src" VALUE="<%=request.getSession().getAttribute("moviePath")%>">
											<EMBED ID="eSrc" scale="1" NAME="fSrc"
												SRC="<%=request.getSession().getAttribute("moviePath")%>" HEIGHT="500" WIDTH="700"
												TYPE="video/quicktime"
												PLUGINSPAGE="http://www.apple.com/quicktime/download/">
									</OBJECT>
								</div>

  
       
		<%}%>
    	<%if(request.getSession().getAttribute("imagePath")!=null ){%>
		<img src="<%=request.getSession().getAttribute("imagePath")%>"  alt="" /></div>
		<%}%>
	 </div>
	 
	

</body>
</html>
