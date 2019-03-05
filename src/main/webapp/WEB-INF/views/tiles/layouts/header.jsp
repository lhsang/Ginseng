<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
    .error-hightlight{
        border: solid 1px red;
    }

   .inner-addon { 
    position: relative; 
}

    /* style icon */
    .inner-addon .fa {   
        position: absolute;
         padding: 10px;
        pointer-events: none;
    }

    /* align icon */
    .left-addon .fa  { left:  12px;}

    /* add padding  */
    .left-addon input  { padding-left:  30px; }

    .my-cart {
        text-transform: none;
    }
    .header-bottom-list > li > a,
    .header-bottom-list > li > ul.ht-dropdown li a {
        text-transform: none;
        font-family: 'Roboto', sans-serif;
    }

    .register{
    background: -webkit-linear-gradient(left, #ff1532, #ffffff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left p{
    color: white;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #ffffff;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 20%;
    border: none;
    border-radius: 1.5rem;
    padding: 6%;
    background: #ee4444;
    color: #fff;
    font-weight: 600;
    width: 100%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #ee4444;
    border-radius: 1.5rem;
    width: 40%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 5%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 110px;
    color: #ee4444;
    border: 2px solid #ee4444;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}

</style>
<!-- Main Header Area Start Here -->
        <header id="header-client">
            <!-- Header Middle Start Here -->
            <div class="header-middle ptb-15">
                <div class="container">
                    <div class="row align-items-center no-gutters">
                        <div class="col-lg-3 col-md-12">
                            <div class="logo mb-all-30">
                                <a href="<c:url value='/'/>"><img src="<c:url value='/static/custom/img/logo-1.png' />" alt="logo-image"></a>
                            </div>
                        </div>
                        <!-- Categorie Search Box Start Here -->
                        <div class="col-lg-5 col-md-8 ml-auto mr-auto col-10">
                            <div class="categorie-search-box">
                                <form action="#">
                                    <div class="form-group">
                                        <select class="bootstrap-select" name="poscats">
                                            <option value="0">Tất cả</option>
                                            <option value="2">Arrivals</option>
                                            <option value="3">Cameras</option>
                                            <option value="4">Cords and Cables</option>
                                        </select>
                                    </div>
                                    <input type="text" name="search" placeholder="I’m shopping for...">
                                    <button><i class="lnr lnr-magnifier"></i></button>
                                </form>
                            </div>
                        </div>
                        <!-- Categorie Search Box End Here -->
                        <!-- Cart Box Start Here -->
                        <div class="col-lg-4 col-md-12">
                            <div class="cart-box mt-all-30">
                                <ul class="d-flex justify-content-lg-end justify-content-center align-items-center">
                                    <li id="cartDiv">
                                        <a href="<c:url value='/transaction/checkout'/>"><i class="lnr lnr-cart"></i><span class="my-cart"><span class="total-pro">0</span><span>Giỏ hàng</span></span></a>
                                    </li>
                                    <li><a href="#"><i class="lnr lnr-heart"></i><span class="my-cart"><span>Yêu thích</span><span>list (0)</span></span></a>
                                    </li>
                                    <li id="userDiv">
                                        <a onclick="$('#myModal').modal('show');"><i class="lnr lnr-user"></i>
                                            <span class="my-cart"><span> <strong>Đăng nhập </strong> hoặc </span><span> đăng ký</span></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- Cart Box End Here -->
                    </div>
                    <!-- Row End -->
                </div>
                <!-- Container End -->
            </div>
            <!-- Header Middle End Here -->
            <!-- Header Bottom Start Here -->
            <div class="header-bottom  header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                         <div class="col-xl-3 col-lg-4 col-md-6 vertical-menu d-none d-lg-block">
                            <span class="categorie-title">Danh mục</span>
                        </div>                       
                        <div class="col-xl-9 col-lg-8 col-md-12 ">
                            <nav class="d-none d-lg-block">
                                <ul class="header-bottom-list d-flex" >
                                    <li class="active "><a href="index.html">Trang chủ<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown">
                                            <li><a href="index.html">Home Version 1</a></li>
                                            <li><a href="index-2.html">Home Version 2</a></li>
                                            <li><a href="index-3.html">Home Version 3</a></li>
                                            <li><a href="index-4.html">Home Version 4</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="shop.html">Mua hàng<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown dropdown-style-two">
                                            <li><a href="/product.html">product details</a></li>
                                            <li><a href="compare.html">compare</a></li>
                                            <li><a href="cart.html">cart</a></li>
                                            <li><a href="checkout.html">checkout</a></li>
                                            <li><a href="wishlist.html">wishlist</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="blog.html">Hàng mới<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown dropdown-style-two">
                                            <li><a href="single-blog.html">blog details</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="#">Khuyến mãi<i class="fa fa-angle-down"></i></a>
                                        <!-- Home Version Dropdown Start -->
                                        <ul class="ht-dropdown dropdown-style-two">
                                            <li><a href="contact.html">contact us</a></li>
                                            <li><a href="register.html">register</a></li>
                                            <li><a href="login.html">sign in</a></li>
                                            <li><a href="forgot-password.html">forgot password</a></li>
                                            <li><a href="404.html">404</a></li>
                                        </ul>
                                        <!-- Home Version Dropdown End -->
                                    </li>
                                    <li><a href="about.html">Thông tin</a></li>
                                    <li><a href="contact.html">Liên hệ</a></li>
                                </ul>
                            </nav>
                            <div class="mobile-menu d-block d-lg-none">
                                <nav>
                                    <ul>
                                        <li><a href="index.html">Trang chủ</a>
                                            <!-- Home Version Dropdown Start -->
                                            <ul>
                                                <li><a href="index.html">Home Version 1</a></li>
                                                <li><a href="index-2.html">Home Version 2</a></li>
                                                <li><a href="index-3.html">Home Version 3</a></li>
                                                <li><a href="index-4.html">Home Version 4</a></li>
                                            </ul>
                                            <!-- Home Version Dropdown End -->
                                        </li>
                                        <li><a href="shop.html">Mua hàng</a>
                                            <!-- Mobile Menu Dropdown Start -->
                                            <ul>
                                                <li><a href="product.html">product details</a></li>
                                                <li><a href="compare.html">compare</a></li>
                                                <li><a href="cart.html">cart</a></li>
                                                <li><a href="checkout.html">checkout</a></li>
                                                <li><a href="wishlist.html">wishlist</a></li>
                                            </ul>
                                            <!-- Mobile Menu Dropdown End -->
                                        </li>
                                        <li><a href="blog.html">Blog</a>
                                            <!-- Mobile Menu Dropdown Start -->
                                            <ul>
                                                <li><a href="single-blog.html">blog details</a></li>
                                            </ul>
                                            <!-- Mobile Menu Dropdown End -->
                                        </li>
                                        <li><a href="#">pages</a>
                                            <!-- Mobile Menu Dropdown Start -->
                                            <ul>
                                                <li><a href="register.html">register</a></li>
                                                <li><a href="login.html">sign in</a></li>
                                                <li><a href="forgot-password.html">forgot password</a></li>
                                                <li><a href="404.html">404</a></li>
                                            </ul>
                                            <!-- Mobile Menu Dropdown End -->
                                        </li>
                                        <li><a href="about.html">Thông tin</a></li>
                                        <li><a href="contact.html">Liên hệ</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- Row End -->
                </div>
                <!-- Container End -->
            </div>
            <!-- Header Bottom End Here -->
            <!-- Mobile Vertical Menu Start Here -->
            
            <!-- Mobile Vertical Menu Start End -->
        </header>
        <!-- Main Header Area End Here -->


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content" style="background-color: transparent">
            <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Xin chào</h3>
                        <p>Mời bạn đăng nhập để tiếp tục mua hàng.</p>
    
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Đăng nhập</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Đăng ký</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <form class="form-horizontal form-simple" action="<c:url value="/j_spring_security_check"></c:url>" method="post" novalidate>
                                    <div class="row register-form">
                                        <div class="inner-addon left-addon col-md-9 offset-md-2">
                                            <i class="fa fa-user"></i>
                                            <input type="text" class="form-control" placeholder="Số điện thoại hoặc tên đăng nhập" name="username"/>
                                        </div>
                                        <div class="inner-addon left-addon col-md-9 offset-md-2" style="margin-top:20px">
                                            <i class="fa fa-lock"></i>
                                            <input type="password" class="form-control" placeholder="Mật khẩu" name="password" />
                                        </div>
                                        <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5 offset-md-4">
                                            <input type="submit" class="btnRegister" id="signin"  value="Đăng nhập"/>   
                                        </div>   
                                    </div>
                                    <div class="col-md-4 offset-md-8">
                                        <p style="color: red;font-size: 15px;" id="forgotPassword">Quên mật khẩu ?</p>
                                    </div>
                                </form>
                            </div>
                            <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                <h3  class="register-heading">Đăng ký tài khoản</h3>
                                <form action="<c:url value='/register'/>" method="POST" role="form">
                                    <div class="row register-form">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Số điện thoại *" required id="texttUsername" name="userName"/>
                                            </div>
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Email" name="email" />
                                            </div>    
                                            <div class="form-group">
                                                <input type="text"class="form-control" placeholder="Địa chỉ *"  required name="address"/>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Họ tên *" required name="fullName"/>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Mật khẩu *" id="password" required name="password"/>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" placeholder="Nhập lại mật khẩu *" id="repassword" required/>
                                            </div>           
                                            <input type="submit" class="btnRegister" id="signup"  value="Đăng ký"/>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: left">
                                                <span style="color:red;font-size: 14px" id="errUsername"></span>
                                        </div>
                                    </div>
                                </form>   
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    $( document ).ready(function() {
        reloadCart();
        console.log("${username}");
        if("${username}"!=''&&"${username}"!='anonymousUser')
         render("${username}");
    });

    function render(username) {
        $.ajax({
            type: "POST",
            url: "<c:url value='/render-header/'/>"+username,
            success: function (response) {
                $("#userDiv").html("");
                $("#userDiv").html(response);
            }
        });
    }

    $("#forgotPassword").click(function (e) { 
        e.preventDefault();
        alert("Quên kệ mẹ bạn!");
    });

    $("#texttUsername").focusout(function() { 
        var username=$('#texttUsername').val();
       $.ajax({
           type: "POST",
           url:  "<c:url value='/check-username' />",
           data: {username:username},
           success: function (response) {
               if(response.status=='500'){
                    $("#signup:submit").attr("disabled", true);
                    $("#texttUsername").addClass('error-hightlight');
                    $("#errUsername").text("* Số điện thoại hoặc tên người dùng đã tồn tại.");
               }else{
                    $("#signup:submit").removeAttr("disabled");
                    $("#texttUsername").removeClass('error-hightlight');
                    $("#errUsername").text("");
               }
           }
       });
    });

    $("#repassword").focusout(function() { 
        var repass=$('#repassword').val();
        var pass=$('#password').val();
        if(repass!=pass){
            $("#signup:submit").attr("disabled", true);
            $("#repassword").addClass('error-hightlight');
            $("#errUsername").text("* Mật khẩu không khớp.");
        }else{
            $("#signup:submit").removeAttr("disabled");
            $("#repassword").removeClass('error-hightlight');
            $("#errUsername").text("");
        }
    });
</script>
