<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!-- Categorie Menu & Slider Area Start Here -->
<div class="main-page-banner pb-50 off-white-bg">
	<div class="container">
		<div class="row">
			<!-- Vertical Menu Start Here -->
			<div class="col-xl-3 col-lg-4 d-none d-lg-block">
				<div class="vertical-menu mb-all-30">
					<nav>
						<ul class="vertical-menu-list">
							<li class=""><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/1.png' />" alt="menu-icon"></span>Nhân sâm<i class="fa fa-angle-right" aria-hidden="true"></i></a>

								<ul class="ht-dropdown mega-child">
									<li><a href="shop.html">Sâm tươi</a></li>
									<li><a href="shop.html">Rượu sâm</a><li>                                            
									<li><a href="shop.html">Hòng sâm khô</a></li>
									<li><a href="shop.html">Cao hồng sâm</a></li>
									<li><a href="shop.html">Viên hồng sâm</a></li>
								</ul>
							</li>
							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/3.png' />" alt="menu-icon"></span>Linh chi Hàn Quốc<i class="fa fa-angle-right" aria-hidden="true"></i></a>
									<ul class="ht-dropdown mega-child">
										<li><a href="shop.html">Nấm linh chi</a></li>
										<li><a href="shop.html">Nước linh chi</a><li>                                            
										<li><a href="shop.html">Viên linh chi</a></li>
									</ul>
							</li>
							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/6.png' />" alt="menu-icon"></span>Đông trùng hạ thảo<i class="fa fa-angle-right" aria-hidden="true"></i></a>
								<ul class="ht-dropdown mega-child">
										<li><a href="shop.html">Đông trùng hạ thảo</a></li>
										<li><a href="shop.html">Viên đông trùng hạ thảo</a><li>                                            
										<li><a href="shop.html">Bột đông trùng hạ thảo</a></li>
								</ul>
							</li>
							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/7.png' />" alt="menu-icon"></span>Nước hồng sâm<i class="fa fa-angle-right" aria-hidden="true"></i></a>
								<ul class="ht-dropdown mega-child">
										<li><a href="shop.html">Nước ginseng</a></li>
										<li><a href="shop.html">Nước ginseng có củ</a><li>       
								</ul>
							</li>
							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/4.png' />" alt="menu-icon"></span>Trà hồng sâm</a>
							</li>
							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/6.png' />" alt="menu-icon"></span>Kẹo sâm</a>
							</li>
							 <li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/5.png' />" alt="menu-icon"></span>Mỹ phẩm từ sâm</a>
							</li>
							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/8.png' />" alt="menu-icon"></span>Cao hồng sâm</a></li>
							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/8.png' />" alt="menu-icon"></span>Yến Sào<i class="fa fa-angle-right" aria-hidden="true"></i></a>
								<ul class="ht-dropdown mega-child">
										<li><a href="shop.html">Yến sào Khánh Hòa</a></li>
										<li><a href="shop.html">Yến chưng sẵn</a><li>                                            
										<li><a href="shop.html">Yến cho trẻ em</a></li>
								</ul>
							</li>

							<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/8.png' />" alt="menu-icon"></span>Dầu nóng</a></li>

							<!-- More Categoies Start -->
							<li id="cate-toggle" class="category-menu v-cat-menu">
								<ul>
									<li class="has-sub"><a href="#">Sản phẩm từ sâm</a>
										<ul class="category-sub">
											<li><a href="shop.html"><span><img src="<c:url value='/static/client/img/vertical-menu/11.png' />" alt="menu-icon"></span>Accessories</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<!-- More Categoies End -->
						</ul>
					</nav>
				</div>
			</div>
			<!-- Vertical Menu End Here -->
			<!-- Slider Area Start Here -->
			<div class="col-xl-9 col-lg-8 slider_box">
				<div class="slider-wrapper theme-default">
					<!-- Slider Background  Image Start-->
					<div id="slider" class="nivoSlider">
						<a href="/"><img src="https://imgur.com/QKifPwC.jpg" data-thumb="https://imgur.com/QKifPwC.jpg" alt="" title="#htmlcaption" /></a>
						<a href="/"><img src="https://imgur.com/3C5Icqu.jpg" data-thumb="https://imgur.com/3C5Icqu.jpg" alt="" title="#htmlcaption2" /></a>
						<a href="/"><img src="https://imgur.com/ryZb9aR.png" data-thumb="https://imgur.com/ryZb9aR.png" alt="" title="#htmlcaption2" /></a>
					</div>
					<!-- Slider Background  Image Start-->
				</div>
			</div>
			<!-- Slider Area End Here -->
		</div>
		<!-- Row End -->
	</div>
	<!-- Container End -->
</div>
<!-- Categorie Menu & Slider Area End Here -->