<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<a href="<c:url value='/transaction/checkout'/>"><i class="lnr lnr-cart"></i><span class="my-cart"><span class="total-pro">${products.size()}</span><span>Giỏ hàng</span></span></a>

<ul class="ht-dropdown cart-box-width">
        <li>
        	<div style="overflow-y: scroll; max-height:400px;margin-right:10px">
	            <c:forEach items="${products}" var="product">
	                <div class="single-cart-box">
	                    <div class="cart-img">
	                        <a href="<c:url value='/product/${product.getId()}' />"><img src="<c:url value='${product.getImg()}' />" alt="cart-image"></a>
	                        <span class="pro-quantity">${product.getNotes()}</span>
	                    </div>
	
	                    <div class="cart-content">
	                        <h6><a href="<c:url value='/product/${product.getId()}' />">${product.getNameLimitCharacter(20)}</a></h6>
	                        <span class="cart-price">${product.formatMoney()}</span>
	                        <span>Khối lượng: ${product.getQuantity()} ${product.getUnit()}</span>
	                    </div>
	                    <a class="del-icone" onclick="removeItemCart(${product.getId()})"><i class="ion-close"></i></a>
	                </div>
	            </c:forEach>
			</div>
                <div class="cart-footer" style="margin-top:10px">
                   <ul class="price-content">
                       <li>Tổng tiền: <span>${total}</span></li>
                   </ul>
                    <div class="cart-actions text-center">
                        <a class="cart-checkout" href="<c:url value='/transaction/checkout' />">Checkout</a>
                    </div>
                </div>
                <!-- Cart Footer Inner End -->
        </li>
</ul>