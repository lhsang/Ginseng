<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
 .avatar-client{
        width: 50px;
        height: 50px;
        border-radius: 25px;
        border: 5px solid #f7f7f7;
        margin-left: 12px;
    }
</style>
<!-- Header Middle Start Here -->
<div class="header-middle ptb-15">
    <div class="container">
        <div class="row align-items-center no-gutters">
            <div class="col-lg-3 col-md-12">
                <div class="logo mb-all-30">
                    <a href="<c:url value='/' />"><img src="<c:url value='/static/custom/img/logo-1.png' />" alt="logo-image"></a>
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
                        <input type="text" name="search" placeholder="Nhân sâm hàn quốc">
                        <button><i class="lnr lnr-magnifier"></i></button>
                    </form>
                </div>
            </div>
            <!-- Categorie Search Box End Here -->
            <!-- Cart Box Start Here -->
            <div class="col-lg-4 col-md-12">
                <div class="cart-box mt-all-30">
                    <ul class="d-flex justify-content-lg-end justify-content-center align-items-center">
                        <li><a href="#"><i class="lnr lnr-cart"></i><span class="my-cart"><span class="total-pro">2</span><span>Giỏ hàng</span></span></a>
                            <ul class="ht-dropdown cart-box-width">
                                <li>
                                    <!-- Cart Box Start -->
                                    <div class="single-cart-box">
                                        <div class="cart-img">
                                            <a href="#"><img src="<c:url value='/static/client/img/products/1.jpg' />" alt="cart-image"></a>
                                            <span class="pro-quantity">1X</span>
                                        </div>
                                        <div class="cart-content">
                                            <h6><a href="product.html">Printed Summer Red </a></h6>
                                            <span class="cart-price">27.45</span>
                                            <span>Size: S</span>
                                            <span>Color: Yellow</span>
                                        </div>
                                        <a class="del-icone" href="#"><i class="ion-close"></i></a>
                                    </div>
                                    <!-- Cart Box End -->
                                    <!-- Cart Box Start -->
                                    <div class="single-cart-box">
                                        <div class="cart-img">
                                            <a href="#"><img src="<c:url value='/static/client/img/products/2.jpg' />" alt="cart-image"></a>
                                            <span class="pro-quantity">1X</span>
                                        </div>
                                        <div class="cart-content">
                                            <h6><a href="product.html">Printed Round Neck</a></h6>
                                            <span class="cart-price">45.00</span>
                                            <span>Size: XL</span>
                                            <span>Color: Green</span>
                                        </div>
                                        <a class="del-icone" href="#"><i class="ion-close"></i></a>
                                    </div>
                                    <!-- Cart Box End -->
                                    <!-- Cart Footer Inner Start -->
                                    <div class="cart-footer">
                                       <ul class="price-content">
                                           <li>Subtotal <span>$57.95</span></li>
                                           <li>Shipping <span>$7.00</span></li>
                                           <li>Taxes <span>$0.00</span></li>
                                           <li>Total <span>$64.95</span></li>
                                       </ul>
                                        <div class="cart-actions text-center">
                                            <a class="cart-checkout" href="checkout.html">Checkout</a>
                                        </div>
                                    </div>
                                    <!-- Cart Footer Inner End -->
                                </li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="lnr lnr-heart"></i><span class="my-cart"><span>Yêu thích</span><span>list (0)</span></span></a>
                        </li>
                            <div style="max-width: 100px;text-align: center">
                                <div><img src="${user.getAvatar()}" alt="" class="avatar-client"></div>
                                <div class="dropdown show">
                                        <a class="dropdown-toggle" style="color:#e62e04;font-size: 11px;font-weight: bold" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                ${user.getFullName()}
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                          <a class="dropdown-item" href="#">Tài khoản</a>
                                          <a class="dropdown-item" href="<c:url value='/logout' />">Đăng xuất</a>
                                        </div>
                                      </div>
                            </div>
                        <li>



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