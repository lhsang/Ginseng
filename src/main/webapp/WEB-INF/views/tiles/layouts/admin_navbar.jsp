<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<style>
    .menu-sidebar__content {
    background: #f3f3f3;
}
</style>

<!-- MENU SIDEBAR-->
<aside class="menu-sidebar d-none d-lg-block">
    <div class="logo">
        <a href="#">
            <img src="<c:url value='/static/custom/img/logo-1.png' />" alt="Ginseng" style="size: 50%"/>
        </a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar"  id="sub-header">
            <ul class="list-unstyled navbar__list">
                <li class="has-sub li-dashboard">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="index.html">Users</a>
                        </li>
                        <li>
                            <a href="index2.html">Products</a>
                        </li>
                    </ul>
                </li>

                <li>
                    <a href="map.html">
                        <i class="fa fa-bar-chart"></i>Statictis</a>
                </li>
                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fas fa-shopping-cart"></i>Order</a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="login.html">Login</a>
                        </li>
                        <li>
                            <a href="register.html">Register</a>
                        </li>
                        <li>
                            <a href="forget-pass.html">Forget Password</a>
                        </li>
                    </ul>
                </li>

                <li class="li-user-management">
                    <a href="<c:url value='/admin/user-management' />">
                        <i class="far fa-user"></i>User management</a>
                </li>
                
                <li class="li-product-management">
                    <a href="<c:url value='/admin/product-management' />"  >
                        <i class="fas fa-archive"></i>Product management</a>
                </li>

                <li class="has-sub">
                    <a class="js-arrow" href="#">
                        <i class="fa fa-calculator"></i>Turnover</a>
                    <ul class="list-unstyled navbar__sub-list js-sub-list">
                        <li>
                            <a href="button.html">Button</a>
                        </li>
                        <li>
                            <a href="badge.html">Badges</a>
                        </li>
                    </ul>
                </li>
                <hr>
                <li>
                    <a href="<c:url value='/' />" id="user-management" >
                        <i class="fa fa-desktop"></i>Customer interface</a>
                </li>
            </ul>
        </nav>
    </div>
</aside>
<!-- END MENU SIDEBAR-->

