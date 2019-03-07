<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Thông tin mua hàng - Nhân sâm Hàn Quốc chất lượng</title>
<style>
.right-info{
	color: #e62e04;
	border: 0.7px solid #4763fc;
	margin-top: 190px; 
	border-radius: 10px;
	padding: 15px;
	text-align: center;
	background: #f4f4f7
}
</style>

<div class="container">
	<div class="row">
	<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
		<!-- Contact Email Area Start -->
		<div class="contact-area ptb-100 ptb-sm-60">
				<div>
					<h3 class="mb-20">Thông tin khách hàng nhận hàng</h3>
					<p class="text-capitalize mb-20">Mời quý khách nhập đầy đủ thông tin nhận hàng.</p>
					<form id="order-form" class="contact-form">
						<div class="address-wrapper row">
							<div class="col-md-12">
								<div class="address-fname">
									<input class="form-control" type="text" id="name" placeholder="Họ và tên*" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="address-web">
									<input class="form-control" type="text" id="phone" placeholder="Số điện thoại*" required>
								</div>
							</div>
							<div class="col-md-6">
								<div class="address-email">
									<input class="form-control" type="email" id="email" placeholder="Email">
								</div>
							</div>
							
							<div class="col-md-12">
								<div class="address-subject">
									<input class="form-control" type="text" id="address" placeholder="Địa chỉ*" required>
								</div>
							</div>
							<div class="col-md-12">
								<div class="address-textarea">
									<textarea id="message" class="form-control" placeholder="Ghi chú"></textarea>
								</div>
							</div>
						</div>
						<p class="form-message"></p>
						<p style="color:blue;margin: 10px 20px;"><i>*Đơn hàng của quý khách sẽ được ship COD</i></p>
						<div class="footer-content mail-content clearfix">
							<div class="send-email float-md-right">
								<input value="Xác nhận mua hàng" class="return-customer-btn" type="submit" style="background: #e62e04">
							</div>
						</div>
					</form>
				</div>
			</div>
		<!-- Contact Email Area End -->
	</div>


	<c:choose>
		<c:when test="${(username eq 'anonymousUser') || (username eq '') || empty username }">
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
					<div class="right-info">
						<h4>Bạn có muốn đăng nhập?</h4>
						<p style="margin:20px 0px;"><i>Đăng nhập/đăng ký tài khoản để lần sau mau hàng thuận tiện hơn.</i></p>
						<input type="button" class="return-customer-btn"  value="Đăng nhập/đăng ký ngay" style="background:#3856fc">
					</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
					<div class="right-info">
						<h4>Xin chào ${username} :)</h4>
						<p style="margin:30px 0px;"><i>Bạn có thể xem lại danh sách đơn hàng tại: <a href="">Đơn hàng của tôi</a></i></p>
						<p>Chúc bạn mua sắm vui vẻ !</p>
					</div>
			</div>
		</c:otherwise>
	</c:choose>
	</div>
</div>

<script>

	$("#order-form").submit(function (e) { 
		e.preventDefault();
		$.ajax({
				type: "POST",
				url: "<c:url value='/transaction/order' />",
				data: {
					name: $('#name').val(),
					phone: $('#phone').val(),
					email: $('#email').val(),
					address: $('#address').val(),
					message:$('#message').val()
				},
				success: function (response) {
					if(response.status==400){
						alert(response.message);
						window.location.href ="<c:url value='/transaction/checkout' />";
					}else{
						alert(response.message);
					}
				},
				error: function(response){
					alert(response.message);
					
				}
			});
			window.location.href ="<c:url value='/' />";
	});

</script>


