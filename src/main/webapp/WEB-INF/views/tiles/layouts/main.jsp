<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	
 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="<c:url value='/static/client/css/bootstrap.min.css' /> "/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="<c:url value='/static/client/css/slick.css' />"/>
 		<link type="text/css" rel="stylesheet" href="<c:url value='/static/client/css/slick-theme.css' />"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="<c:url value='/static/client/css/nouislider.min.css' />"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="<c:url value='/static/client/css/font-awesome.min.css' />">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="<c:url value='/static/client/css/style.css' />"/>

		 <link rel="icon" href="<c:url value='/static/custom/img/logo.png' />">
</head>
<body>
	
		<tiles:insertAttribute name="header" />
		<div id="nav"></div>
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="news" />
		<tiles:insertAttribute name="footer" />
	


    
		<!-- jQuery Plugins -->
		<script src="<c:url value='/static/client/js/jquery.min.js' />"></script>
		<script src="<c:url value='/static/client/js/bootstrap.min.js' />"></script>
		<script src="<c:url value='/static/client/js/slick.min.js' />"></script>
		<script src="<c:url value='/static/client/js/nouislider.min.js' />"></script>
		<script src="<c:url value='/static/client/js/jquery.zoom.min.js' />"></script>
		<script src="<c:url value='/static/client/js/main.js' />"></script>
</body>

</html>