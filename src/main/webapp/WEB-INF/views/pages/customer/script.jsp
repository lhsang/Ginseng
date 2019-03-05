<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script>
	//cart
	function addToCart(id,price) { 
		var count = $('.count').val();
		count = count ? count :1;
		$.ajax({
           type: "POST",
           url:  "<c:url value='/transaction/add-to-cart' />",
           data: {
			   productId:id,
		   		price:price,
			   count:count
			},
           success: function (response) {
              console.log("Đã thêm vào giỏ hàng.");
			reloadCart();
           }
       });
	}

	function reloadCart(username) {
        $.ajax({
            type: "GET",
            url: "<c:url value='/transaction/cart-header'/>",
            success: function (response) {
                $("#cartDiv").html("");
                $("#cartDiv").html(response);
            }
        });
	}
	
	function removeItemCart(id) {
        $.ajax({
            type: "POST",
            url: "<c:url value='/transaction/remove-item-cart'/>",
            data:{
            	id:id
            },
            success: function(response){
            	console.log("removed");
            	reloadCart();
            }
        });
	}
	
	//checkout
	function setCount(id,count) {
        $.ajax({
            type: "POST",
            url: "<c:url value='/transaction/cart-set-count'/>",
            data:{
            	id:id,
            	count:count
            },
            success: function(response){
            	console.log("Changed");
            	reloadCart();
            }
        });
	}
	
	function renderBill() {  
		$.ajax({
            type: "POST",
            url: "<c:url value='/transaction/render-bill'/>",
            success: function (response) {
                $(".items").html("");
                $(".items").html(response);
            }
        });
    }
</script>