<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <style>
 .price{
     color: #E62E04;
 }

 .sticker-new{
     background: red;
 }

 .single-product {
    border-radius: 15px;
    box-shadow: 5px 7px #f3f3f3;
}

.pro-img img {
    border-radius: 8px 8px 2px 2px;
}

.checked {
  color: orange;
}
.review{
    color:#585858;
    text-align: right;
}
.rate{
    font-size: 11px;
    color: #dedede
}
.title-categories{
   background: transparent !important; 
   color: #5d5d5d !important; 
   text-transform: uppercase !important ;
   font-family: 'Times New Roman', Times, serif !important;
}
.title-box{
    padding: 30px 24px 0;
    background: #ebe9e1;
    border-radius: 29px 0px;
}
.btn-view-more{
    background: white;
    border-radius: 4px;
    color: #6e6e6e;
}
.btn-view-more:hover{
    background: #fc346b;
    border: white solid 0.5px;
    border-radius: 4px;
}
.title-box h2{
    text-transform: none !important;
    color: #ea4d29;
}
.name-product{
    font-size: 20px;
    margin-bottom: 12px;
}
 </style>
 <title>Ginseng - Nhân sâm Hàn Quốc chất lượng</title>
 <div  style="font-family: 'Times New Roman', Times, serif !important">
 <!-- New Products Start Here -->
        <div class="hot-deal-products off-white-bg pb-90 pb-sm-50">
            <div class="container">
               <!-- Product Title Start -->
               <div class="post-title pb-30">
                   <h2 class="title-categories">Sản phẩm mới</h2>
               </div>
               <!-- Product Title End -->
                <!-- Hot Deal Product Activation Start -->
                <div class="hot-deal-active owl-carousel">
                    <!-- Single Product Start -->
                    <c:forEach items="${products}" var="product">
                    <div class="single-product" title="${product.getName()}">
                        <!-- Product Image Start -->
                        <div class="pro-img">
                            <a href="<c:url value='/product/${product.getId()}' />">
                                <img class="primary-img" src="${product.getImg()}" alt="single-product" style="height: 200px">
                                <img class="secondary-img" src="https://imgur.com/me5heug.jpg" alt="single-product">
                            </a>
                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Quick View"><i class="lnr lnr-magnifier"></i></a>
                        </div>
                        <!-- Product Image End -->
                        <!-- Product Content Start -->
                        <div class="pro-content">
                            <div class="pro-info" style="font-family: 'Times New Roman', Times, serif !important;font-size: 14px">
                                <h4 class="name-product">${product.getNameLimitCharacter(20)}</h4>
                                <p><span class="price">${product.formatMoney()}</p>
                                <div class="rate">
                                    ${product.getRating()}
                                </div>
                                <div class="review">
                                    <p style="font-size: 14px">${product.getReviewTotal()} reviews</p>
                                </div>
                            </div>
                            <div class="pro-actions">
                                <div class="actions-primary">
                                    <a onclick="addToCart( '${product.getId()}',' ${product.getPrice()}')" title="Thêm vào giỏ"> + Thêm vào giỏ</a>
                                </div>
                                <div class="actions-secondary">
                                    <a href="wishlist.html" title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Product Content End -->
                        <span class="sticker-new">new</span>
                    </div>
                    </c:forEach>
                    <!-- Single Product End -->
                    
                </div>
                <!-- Hot Deal Product Active End -->

            </div>
            <!-- Container End -->
        </div>
        <!-- New Products End Here -->

     
        <!-- Ginseng Products start Here -->
        <div class="trendig-product pb-10 off-white-bg">
            <div class="container">
                <div class="trending-box">
                <div class="title-box">
                    <h2>Nhân sâm</h2>
                    <img src="https://imgur.com/chjF8Wr.png" style="max-width: 150px; max-height: 170px">
                </div>
                <div class="product-list-box">
                    <!-- Arrivals Product Activation Start Here -->
                    <div class="trending-pro-active owl-carousel">
                        <c:forEach items="${products}" var="product">
                        <!-- Single Product Start -->
                        <div class="single-product">
                            <!-- Product Image Start -->
                            <div class="pro-img">
                                <a href="product.html">
                                    <img class="primary-img" src="${product.getImg()}" alt="single-product" style="height: 220px">
                                    <img class="secondary-img" src="${product.getImg()}" alt="single-product" style="height: 220px">
                                </a>
                                <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Quick View"><i class="lnr lnr-magnifier"></i></a>
                            </div>
                            <!-- Product Image End -->
                            <!-- Product Content Start -->
                            <div class="pro-content">
                                <div class="pro-info">
                                    <h4><a href="product.html">${product.getNameLimitCharacter(20)}</a></h4>
                                    <p><span class="price">${product.formatMoney()}</p>
                                    
                                </div>
                                <div class="pro-actions">
                                    <div class="actions-primary">
                                        <a onclick="addToCart( '${product.getId()}',' ${product.getPrice()}')" title="Thêm vào giỏ"> + Thêm vào giỏ</a>
                                    </div>
                                    <div class="actions-secondary">
                                        <a href="compare.html" title="Compare"><i class="lnr lnr-sync"></i> <span>Add To Compare</span></a>
                                        <a href="wishlist.html" title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                    </div>
                                </div>
                            </div>
                            <!-- Product Content End -->
                        </div>
                        <!-- Single Product End -->
                        </c:forEach>
                       
                    </div>
                    <!-- Arrivals Product Activation End Here -->                    
                </div>
                <div class="post-title pb-30" style="text-align: right">
                        <button type="button" class="btn btn-primary btn-view-more">Xem thêm</button>
                    </div>
                <!-- main-product-tab-area-->
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Ginseng Products End Here -->
      

         <!-- Ginseng Products start Here -->
         <div class="trendig-product pb-10 off-white-bg">
                <div class="container">
                    <div class="trending-box">
                    <div class="title-box">
                        <h2>Linh chi</h2>
                        <img src="https://imgur.com/dFXcg9s.png" style="max-width: 150px; max-height: 170px">
                    </div>
                    <div class="product-list-box">
                        <!-- Arrivals Product Activation Start Here -->
                        <div class="trending-pro-active owl-carousel">
                            <c:forEach items="${products}" var="product">
                            <!-- Single Product Start -->
                            <div class="single-product">
                                <!-- Product Image Start -->
                                <div class="pro-img">
                                    <a href="product.html">
                                        <img class="primary-img" src="${product.getImg()}" alt="single-product" style="height: 220px">
                                        <img class="secondary-img" src="${product.getImg()}" alt="single-product" style="height: 220px">
                                    </a>
                                    <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Quick View"><i class="lnr lnr-magnifier"></i></a>
                                </div>
                                <!-- Product Image End -->
                                <!-- Product Content Start -->
                                <div class="pro-content">
                                    <div class="pro-info">
                                        <h4><a href="product.html">${product.getNameLimitCharacter(20)}</a></h4>
                                        <p><span class="price">${product.formatMoney()}</p>
                                        
                                    </div>
                                    <div class="pro-actions">
                                        <div class="actions-primary">
                                            <a onclick="addToCart( '${product.getId()}',' ${product.getPrice()}')" title="Thêm vào giỏ"> + Thêm vào giỏ</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <a href="compare.html" title="Compare"><i class="lnr lnr-sync"></i> <span>Add To Compare</span></a>
                                            <a href="wishlist.html" title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product Content End -->
                            </div>
                            <!-- Single Product End -->
                            </c:forEach>
                           
                        </div>
                        <!-- Arrivals Product Activation End Here -->                    
                    </div>
                    <div class="post-title pb-30" style="text-align: right">
                            <button type="button" class="btn btn-primary btn-view-more">Xem thêm</button>
                    </div>
                    <!-- main-product-tab-area-->
                    </div>
                </div>
                <!-- Container End -->
            </div>
            <!-- Ginseng Products End Here -->

            <!-- Like Products Area Start Here -->
        <div class="like-product ptb-95 off-white-bg pt-sm-50 pb-sm-55 ">
            <div class="container">
                <div class="like-product-area"> 
                    <h2 class="section-ttitle2 mb-30" style="background: #cccccc; color: #4d4d4d; padding: 10px; border-radius: 7px;font-family: 'Times New Roman', Times, serif !important">Có thể bạn thích. </h2>
                    <!-- Arrivals Product Activation Start Here -->
                    <div class="like-pro-active owl-carousel">
                        <!-- Double Product Start -->
                        <c:forEach items="${allItems}" var="item">
                        <div class="double-product">
                            <!-- Single Product Start -->
                            <c:forEach items="${item}" var="product">
                            <div class="single-product">
                                <!-- Product Image Start -->
                                <div class="pro-img">
                                    <a href="product.html">
                                        <img class="primary-img" src="${product.getImg()}" alt="single-product" style="height: 170px">
                                        <img class="secondary-img" src="${product.getImg()}" alt="single-product" style="height: 170px">
                                    </a>
                                    <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Quick View"><i class="lnr lnr-magnifier"></i></a>
                                </div>
                                <!-- Product Image End -->
                                <!-- Product Content Start -->
                                <div class="pro-content">
                                    <div class="pro-info">
                                        <h4><a href="product.html">${product.getNameLimitCharacter(20)}</a></h4>
                                        <p>${product.formatMoney()}</p>
                                    </div>
                                    <div class="pro-actions">
                                        <div class="actions-primary">
                                            <a onclick="addToCart( '${product.getId()}',' ${product.getPrice()}')" title="Thêm vào giỏ"> + Thêm vào giỏ</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <a href="compare.html" title="Compare"><i class="lnr lnr-sync"></i> <span>Add To Compare</span></a>
                                            <a href="wishlist.html" title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Product Content End -->
                            </div>
                            <!-- Single Product End -->
                            </c:forEach>
                        </div>
                        <!-- Double Product End -->
                        </c:forEach>                  
                    </div>
                    <!-- Arrivals Product Activation End Here -->
                </div>
                <!-- main-product-tab-area-->
                
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="text-align: center; margin-top: 20px">
                    <button type="button" class="btn btn-primary btn-view-more" style="width: 350px;border-radius: 8px;">Xem thêm</button>
                </div>
                
                
            </div>
            <!-- Container End -->
        </div>
        <!-- Lile Products Area End Here -->
        
        
            
        
</div>