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

<div style="max-width: 100px;text-align: center">
    <div><img src="${user.getAvatar()}" alt="" class="avatar-client"></div>
    <div class="dropdown show">
            <a class="dropdown-toggle" style="color:#e62e04;font-size: 11px;font-weight: bold" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${user.getFullName()}
            </a>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
              <a class="dropdown-item" href="<c:url value='/profile-customer' />">Tài khoản</a>
              <a class="dropdown-item" href="<c:url value='/history' />">Đơn hàng của tôi</a>
              <a class="dropdown-item" href="<c:url value='/logout' />">Đăng xuất</a>
            </div>
          </div>
</div>