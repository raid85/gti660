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
	
<%if(request.getSession().getAttribute("video")==null ){%>
	
	<div id="page2">

    <h2>Play your selection :</h2>
        <div>
            <OBJECT ID="myObj" CLASSID="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" CODEBASE="http://www.apple.com/qtactivex/qtplugin.cab" controller="false"> 

		<PARAM ID="pSrc" NAME="src" VALUE="<%=request.getSession().getAttribute("moviePath")%>">
            
                <EMBED NAME="fSrc" SRC="<%=request.getSession().getAttribute("moviePath")%>" WIDTH="90%" TYPE="video/quicktime"  controller="false" PLUGINSPAGE="http://www.apple.com/quicktime/download/"/> 

		</OBJECT>
            
        </div>

    
	
		
	 </div>
	 
	<%}%>

</body>
</html>
