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
              alert("Success");
           }
       });
	}

	//payment
</script>