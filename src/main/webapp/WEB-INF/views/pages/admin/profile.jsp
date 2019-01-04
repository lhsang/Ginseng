<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<title>${user.getFullName()}</title>
<div class="col-xl-12 col-md-12 col-xs-12">
    <div class="card profile-card-with-cover">
        
        <div class="card-profile-image" style="align-content: center;align-items: center;text-align: center;">
            <img src="${user.getAvatar()}" class="rounded-circle img-border box-shadow-1" alt="Card image" style="max-width: 400px">
        </div>
        <div class="profile-card-with-cover-content text-xs-center">
            <div class="card-block">
                <h4 class="card-title">${user.getFullName()}</h4>
                <ul class="list-inline list-inline-pipe">
                    <li>${user.getUserName()}</li>
                    <li>${user.getEmail()}</li>
                </ul>
                <h6 class="card-subtitle text-muted">${user.getRole().getName()}</h6>
            </div>
            <div class="text-xs-center">
                <a href="#" class="btn btn-social-icon mr-1 mb-1 btn-outline-facebook"><span class="fa fa-facebook"></span></a>
                <a href="#" class="btn btn-social-icon mr-1 mb-1 btn-outline-twitter"><span class="fa fa-twitter"></span></a>
                <a href="#" class="btn btn-social-icon mr-1 mb-1 btn-outline-linkedin"><span class="fa fa-linkedin font-medium-4"></span></a>
                <a href="#" class="btn btn-social-icon mb-1 btn-outline-github"><span class="fa fa-github font-medium-4"></span></a>
            </div>
        </div>
    </div>
</div>