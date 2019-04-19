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
              thongBaoThemGioHangThanhCong(); //static/custom/js/notifications.js
			reloadCart();
           }
       });
	}

    function thongBaoThemGioHangThanhCong(){
        var x = document.getElementById("snackbar");
        x.innerHTML = "<i class='fa fa-check-circle'></i>   Đã thêm sản phẩm vào giỏ hàng";
        x.className = "show";
        var audio = new Audio("<c:url value='/static/custom/sound/notification.mp3'/>");
        audio.play();
        setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);     //TOAST thông báo thêm thành công
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

    function requestCurrentURL(url, key, value) {
        if(url.indexOf("?")==-1){
            url+="?"+key+"="+value;
        }else{
            if(url.indexOf(key)==-1){
                url+="&"+key+"="+value;
            }else{
                if(url.indexOf(key)<url.lastIndexOf("&")){
                    var t = url.substring(0,url.indexOf(key))+"&"+key+"="+value;
                    var t1 = url.substring(url.indexOf(key),url.length);
                    url=t+t1.substring(t1.indexOf("&"),t1.length);
                }else{
                    url=url.substring(0,url.indexOf(key))+"&"+key+"="+value;
                }
            }
        }
        url = url.replace("&&","&");
        return url.replace("?&","?");
    }

    function requestCate(cateID) {
        
    }

    function requestDanhMuc(key,value) {
        
    }
</script>
