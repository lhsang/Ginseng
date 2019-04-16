<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
    .card-profile-image{
        padding: 50px
    }
</style>
<title>${user.getFullName()}</title>
<div class="col-xl-12 col-md-12 col-xs-12">
    <div class="card profile-card-with-cover">
        
        <div class="card-profile-image" style="align-content: center;align-items: center;text-align: center;">
            <img src="${user.getAvatar()}" class="rounded-circle img-border box-shadow-1 avatar" style="width: 300px">
        </div>
        <div class="profile-card-with-cover-content text-xs-center">
            <div class="card-block">
                <h4 class="card-title"><b>${user.getFullName()}</b></h4>
                <ul class="list-inline list-inline-pipe">
                    <li>${user.getUserName()}</li>
                    <li>${user.getEmail()}</li>
                </ul>
                <h6 class="card-subtitle text-muted"><b>${user.getRole().getName()}</b></h6>
            </div>
            <div class="text-xs-center">
                <a href="#" class="btn btn-social-icon mr-1 mb-1 btn-outline-facebook"><span class="fa fa-facebook"></span></a>
                <a href="#" class="btn btn-social-icon mr-1 mb-1 btn-outline-twitter"><span class="fa fa-twitter"></span></a>
            </div>
        </div>
    </div>
</div>