<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Title -->
	<title>Sorry, This Page Can&#39;t Be Accessed</title>
	<style>
		#footer{
			text-align: center;
			padding-top:50px;
		}
	</style>
</head>

<body class="bg-dark text-white py-5">

	
	<div class="row">
		
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-12 text-center" >
				<p style="color:#ffffff"><i class="fa fa-exclamation-triangle fa-5x"></i><br/>Status Code: 403</p>
		   </div>
		   <br>
		   <div class="col-xs-10 col-sm-10 col-md-10 col-lg-12 text-center" style="color:#ffffff">
				<h3>OPPSSS!!!! Sorry...</h3>
				<p style="color:#ffffff">Sorry, your access is refused due to security reasons of our server and also our sensitive data.<br/>Please go back to the previous page to continue browsing.</p>
				<br>
				<a class="btn btn-danger" href="javascript:history.back()">Go Back</a>
		   </div>
		</div>
		
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div id="footer" class="text-center">
				Le Hoang Sang © 2018
		   </div>
		</div>
		
	</div>
	

	
</body>
