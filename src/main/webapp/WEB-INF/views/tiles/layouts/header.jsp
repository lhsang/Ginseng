<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <link rel="stylesheet" type="text/css" href="<c:url value='/static/css/header.css' />">
	<link href="<c:url value='https://fonts.googleapis.com/css?family=K2D" rel="stylesheet' />">
	

  

        <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark" style="vertical-align: middle;	">
<%--   <a class="navbar-brand" href="#"><img src="<c:url value='/static/images/logo.png' />" class="logo" alt="IMG" > </a> --%>
<a class="navbar-brand" href="#">Nhân sâm hàn quốc </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent" >
    <ul class="navbar-nav mr-auto" >
    
      <li class="nav-item active">
        <a class="nav-link" href="#" >
          <i class="fa fa-home" ></i>
         	Trang chủ
          <span class="sr-only">(current)</span>
          </a>
      </li>
      <li class="nav-item" >
    	<br>
        <div class="dropdown">
		<button class="btn btn-info dropdown-toggle" type="button" id="about-us" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		Nhân sâm</button>
			<div class="dropdown-menu" aria-labelledby="about-us">
				<a class="dropdown-item" href="#">Our Story</a>
				<a class="dropdown-item" href="#">Our Team</a>
				<a class="dropdown-item" href="#">Contact Us</a>
			</div>
		</div>

      </li>
      <li class="nav-item" style="float:right">
        <a class="nav-link" href="#">
          <i class="fa fa-shopping-cart">
            <span class="badge badge-danger">11</span>
          </i>
          Giỏ hàng
        </a>
      </li>
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

</div>