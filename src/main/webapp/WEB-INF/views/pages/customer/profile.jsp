<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>${user.getFullName()} - Nhân sâm Hàn Quốc chất lượng</title>
<style>
.avatar-box{
    background: #F9F9F9;
    border-radius: 10px;
    box-shadow: 5px 5px #f3f3f3;
    padding: 60px 5px;
    text-align: center;
}
.box{
    border: 0.5px solid #F1F1F1;
    border-radius: 5px;
    padding: 50px 0px;
    margin-bottom: 50px;
}
.avatar-box img{
    width: 150px;
    height: 150px;
    border-radius: 75px;
    border: 5px solid #dedede;
}

.btn-edit{
    padding: 4px 9px;
    color: rgb(231, 69, 19);
    border-radius: 10px;
    border: 0.5px solid rgb(231, 69, 19);
    background: white;
    margin-left: 10%;
    margin-top:20px;
}
.btn-edit:hover{
    color: white;
    background: rgb(231, 69, 19);
}
.info-box{
    padding: 40px 15px
}
.info-box span{
    margin: 10px;
    width: 20px;
    text-align: center;
    color: #727272;
    font-size: 18px;
}
.info-box div{
    margin: 10px;
}
</style>
<!-- Breadcrumb Start -->
<div class="breadcrumb-area mt-30">
        <div class="container">
            <div class="breadcrumb">
                <ul class="d-flex align-items-center">
                    <li><a href="<c:url value='/'/>">Trang chủ</a></li>
                    <li class="active"><a href="c:url value='/profile'/>">Tài khoản</a></li>
                </ul>
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- Breadcrumb End -->
    <!-- About Us Start Here -->
    <div class="about-us" style="padding-top:50px">
        <div class="container">
            <div class="row box">
                <div class="col-lg-1"></div>
                <div class="col-xs-12 col-md-6 col-lg-3 avatar-box">
                    <div>
                        <img src="${user.getAvatar()}" alt="">
                    </div>
                    <div>
                        <p><b>${user.getFullName()}</b></p>
                        <p style="color:rgb(231, 69, 19)">@${user.getUserName()}</p>
                        <br>
                        ${user.getStatusButton()}
                    </div>
                </div>
                
                <div class="col-xs-12 col-md-6 col-lg-8 info-box">
                    <div>
                        <span><i class="fa fa-phone" aria-hidden="true"></i></span>${user.getPhone()}
                    </div>
                    <div>
                        <span><i class="fa fa-envelope-o" aria-hidden="true"></i></span>${user.getEmail()}
                    </div>
                    <div>
                        <span><i class="fa fa-facebook" aria-hidden="true"></i></span>${user.getFacebook()}
                    </div>
                    <div>
                        <span><i class="fa fa-map-marker" aria-hidden="true"></i></span>${user.getAddress()}
                    </div>

                    <button class="btn-edit">Chỉnh sửa</button>
                </div>
                
            </div>
        </div>
        <!-- Container End -->
    </div>
    <!-- About Us End Here -->

    <script>
            $(document).ready(function () {
                $('#li-about').addClass("active");
            });
    </script>