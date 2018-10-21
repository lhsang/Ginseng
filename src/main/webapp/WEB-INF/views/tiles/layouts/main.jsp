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
<!--=======================================Login========================================================-->
<link rel="icon" type="image/png" href="<c:url value='/static/images/icons/favicon.ico' />"/>
<!--===============================================================================================-->

	<link rel="stylesheet" type="text/css" href="<c:url value='/static/vendor/bootstrap/css/bootstrap.min.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/fonts/font-awesome-4.7.0/css/font-awesome.min.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/vendor/animate/animate.css' />">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/vendor/css-hamburgers/hamburgers.min.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/vendor/select2/select2.min.css' />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/util.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/static/css/main.css' />">
<!--===============================================================================================-->
	   
</head>
<body>
	
	<div>
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="slide" />
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="footer" />
	</div>
	
		<!--===============================================================================================-->	
	<script src="<c:url value='/static/vendor/jquery/jquery-3.2.1.min.js' />"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/vendor/bootstrap/js/popper.js' />"></script>
	<script src="<c:url value='/static/vendor/bootstrap/js/bootstrap.min.js' />"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/vendor/select2/select2.min.js' />"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/vendor/tilt/tilt.jquery.min.js' />"></script>

	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/static/js/main.js' />"></script>
</body>

</html>