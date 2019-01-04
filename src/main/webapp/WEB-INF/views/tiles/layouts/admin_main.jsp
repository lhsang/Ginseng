<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="Stack admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, stack admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
   
    <link rel="apple-touch-icon" href="<c:url value='/static/admin/images/ico/apple-icon-120.png' />">
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='/static/admin/images/ico/favicon.ico' />">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i%7COpen+Sans:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/css/bootstrap.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/fonts/feather/style.min.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/fonts/font-awesome/css/font-awesome.min.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/fonts/flag-icon-css/css/flag-icon.min.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/vendors/css/extensions/pace.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/vendors/css/charts/jquery-jvectormap-2.0.3.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/vendors/css/charts/morris.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/vendors/css/extensions/unslider.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/vendors/css/weather-icons/climacons.min.css' />">
    <!-- END VENDOR CSS-->
    <!-- BEGIN STACK CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/css/bootstrap-extended.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/css/app.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/css/colors.css' />">
    <!-- END STACK CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/css/core/menu/menu-types/vertical-menu.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/css/core/menu/menu-types/vertical-overlay-menu.css' />">

    <tiles:insertAttribute name="header" />

  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns   menu-expanded fixed-navbar">

    <tiles:insertAttribute name="navbar-left" />
    <tiles:insertAttribute name="more" />
    <div class="app-content content container-fluid">
        <div class="content-wrapper">
          <div class="content-header row">
            <tiles:insertAttribute name="header-body" />
          </div>
          <div class="content-body">
            <tiles:insertAttribute name="body" />
          </div>  
        </div>   
    </div>
        
    <footer class="footer footer-static footer-light navbar-border" style="text-align: center">
        <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2">Copyright  &copy; 2018 Le Hoang Sang. All rights reserved. </p>
    </footer>

    <!-- BEGIN VENDOR JS-->
    <script src="<c:url value='/static/admin/vendors/js/vendors.min.js' />" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <script src="<c:url value='/static/admin/vendors/js/extensions/jquery.knob.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/js/scripts/extensions/knob.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/vendors/js/charts/raphael-min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/vendors/js/charts/morris.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/vendors/js/charts/jvector/jquery-jvectormap-2.0.3.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/vendors/js/charts/jvector/jquery-jvectormap-world-mill.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/data/jvector/visitor-data.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/vendors/js/charts/chart.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/vendors/js/charts/jquery.sparkline.min.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/vendors/js/extensions/unslider-min.js' />" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/css/core/colors/palette-climacon.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/admin/fonts/simple-line-icons/style.min.css' />">
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN STACK JS-->
    <script src="<c:url value='/static/admin/js/core/app-menu.js' />" type="text/javascript"></script>
    <script src="<c:url value='/static/admin/js/core/app.js' />" type="text/javascript"></script>
    <!-- END STACK JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <script src="<c:url value='/static/admin/js/scripts/pages/dashboard-analytics.js' />" type="text/javascript"></script>
    <!-- END PAGE LEVEL JS-->
  </body>
</html>



