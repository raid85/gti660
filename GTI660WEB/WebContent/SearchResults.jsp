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
<%@ page import="java.util.ArrayList"%>

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
<script type="text/javascript" src="jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery.gallerax-0.2.js"></script>
<script type="text/javascript" src="jscolor/jscolor.js"></script>
<style type="text/css">
@import "gallery.css";
</style>
</head>
<body style = "overflow: auto;" >
<%	if(request.getSession().getAttribute("myRes")!= null ){%>

	<div id="page" >
	<div id="two-columns2">
	<div id="column2">	
	<h2>Search Results :</h2>
	<%	if(request.getSession().getAttribute("mediaType").equals("vid") ){%>
						<%ArrayList<String> Results = ((ArrayList<String>)request.getSession().getAttribute("myRes")); %>
						
							
							<ul>
								<% for (int i=0; i<Results.size();i++){%>  
								<% if(i%4 == 0){%>
								<li>
						        <a href="./?action=showMedia&path=<%=Results.get(i+2).toString()%>"><%=Results.get(i).toString()%> @ (<%=Results.get(i+3).toString()%> %)</a>
								</li>
								 <%}%>           
						 <%}%>
							</ul>	
				<%}%>
				<%	if(request.getSession().getAttribute("mediaType").equals("img") ){%>
						<%ArrayList<String> Results = ((ArrayList<String>)request.getSession().getAttribute("myRes")); %>
					
							
							<ul>
								<% for (int i=0; i<Results.size();i++){%>  
								<% if(i%4 == 0){%>
								<li>
						        <a href="./?action=showMedia&path=<%=Results.get(i+1).toString()%>"><%=Results.get(i).toString()%> @ (<%=Results.get(i+3).toString()%> %)</a>
								</li>
								 <%}%>           
						 <%}%>
							</ul>	
				<%}%>
				</div>	
	<div id="column1">	
	<jsp:include page="player.jsp"/> 	
	
					
					
			
				</div>	

				</div>	
			
		</div>
	
	<%}%>

</body>
</html>
