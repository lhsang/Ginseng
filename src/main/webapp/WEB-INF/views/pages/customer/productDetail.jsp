<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>
.thumnail-height{
    height: 120px;
}
.fa .fa-star{
	margin-left:1px;
}
.fa{
	color: #dedede;
}
.checked {
  color: orange;
}
.post-title h2,
.hot-deal-three .post-title h2,
.second-featured-products.related-pro .post-title h2 {
    background: none;
    font-family: initial;
    color: #000000;
    font-size: 24px;
    text-transform: uppercase;
 }
 .price {
    color: #E62E04;
}
</style>
<title>${product.getName()} - Nhân sâm Hàn Quốc chất lượng</title>

<!-- Product Thumbnail Start -->
        <div class="main-product-thumbnail ptb-100 ptb-sm-60">
            <div class="container">
                <div class="thumb-bg">
                    <div class="row">
                        <!-- Main Thumbnail Image Start -->
                        <div class="col-lg-5 mb-all-40">
                            <!-- Thumbnail Large Image start -->
                            <div class="tab-content">
                                    <div id="thumb1" class="tab-pane fade show active">
                                        <a data-fancybox="images" href="<c:url value='${product.getImg()}' />"><img src="<c:url value='${product.getImg()}' />" alt="product-view"></a>
                                    </div>
                                    <c:if test="${product.getListImg().size() > 0}">
                                        <c:forEach var = "i" begin = "0" end = "${product.getListImg().size()-1}">
                                            <div id="thumb${i+2}" class="tab-pane fade">
                                                <a data-fancybox="images" href="<c:url value='${product.getListImg().get(i).getSrc()}'/>"><img src="<c:url value='${product.getListImg().get(i).getSrc()}'/>" alt="product-view"></a>
                                            </div>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            <!-- Thumbnail Large Image End -->
                            <!-- Thumbnail Image End -->
                            <div class="product-thumbnail mt-15">
                                <div class="thumb-menu owl-carousel nav tabs-area" role="tablist" style="max-height: ">
                                    
                                    <a class="active" data-toggle="tab" href="#thumb1"><img class="thumnail-height" src="<c:url value='${product.getImg()}' />" alt="product-thumbnail"></a>
                                    <c:if test="${product.getListImg().size() > 0}">
                                        <c:forEach var = "i" begin = "0" end = "${product.getListImg().size()-1}">
                                            <a data-toggle="tab" href="#thumb${i+2}"><img class="thumnail-height" src="<c:url value='${product.getListImg().get(i).getSrc()}'/>" alt="product-thumbnail"></a>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                            <!-- Thumbnail image end -->
                        </div>
                        <!-- Main Thumbnail Image End -->
                        <!-- Thumbnail Description Start -->
                        <div class="col-lg-7">
                            <div class="thubnail-desc fix">
                                <h3 class="product-header" style="font-size: 30px; font-weight: bold;">${product.getName()}</h3>
                                <div class="rating-summary fix mtb-10">
                                    <div class="rating">
                                        ${product.getRating()}
                                    </div>
                                    
                                </div>
                                <div class="pro-price mtb-30">
                                    <p class="d-flex align-items-center"><span class="prev-price"></span><span class="price" style="color:#cc1d1d;">${product.formatMoney()}</span><span class="saving-price">save 8%</span></p>
                                </div>
                                <p class="mb-20 pro-desc-details">${product.getDescription()}</p>
                                
                                <div class="color clearfix mb-20">
                                    <label style="font-weight: bold;">Khối lượng tịnh:</label>
                                    <p>${product.getQuantity()} ${product.getUnit()}</p>
                                </div>
                                <div class="box-quantity d-flex hot-product2">
                                    <form action="#">
                                        <input class="quantity mr-15" type="number" min="1" value="1">
                                    </form>
                                    <div class="pro-actions">
                                        <div class="actions-primary">
                                            <a href="cart.html" title="" data-original-title="Add to Cart"> + Add To Cart</a>
                                        </div>
                                        <div class="actions-secondary">
                                            <a href="wishlist.html" title="" data-original-title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-ref mt-20">
                                    <p><span class="in-stock" style="font-weight: bold;"><i class="ion-checkmark-round"></i>Hàng chất lượng</span></p>
                                </div>
                                <div class="socila-sharing mt-25">
                                    <ul class="d-flex">
                                        <li>share</li>
                                        <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus-official" aria-hidden="true"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Thumbnail Description End -->
                    </div>
                    <!-- Row End -->
                </div>
            </div>
            <!-- Container End -->
        </div>
        <!-- Product Thumbnail End -->
        

        <!-- New Products Start Here -->
        <div class="hot-deal-products off-white-bg pb-90 pb-sm-50" style="padding-top:40px">
            <div class="container">
               <!-- Product Title Start -->
               <div class="post-title pb-30">
                   <h2 class="title-categories">Sản phẩm tương tự</h2>
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
                                <h4 class="name-product">${product.getNameLimitCharacter(15)}</h4>
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
                                    <a href="cart.html" title="Add to Cart"> + Add To Cart</a>
                                </div>
                                <div class="actions-secondary">
                                    <a href="wishlist.html" title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                </div>
                            </div>
                        </div>
                        <!-- Product Content End -->
                        
                    </div>
                    </c:forEach>
                    <!-- Single Product End -->
                    
                </div>
                <!-- Hot Deal Product Active End -->

            </div>
            <!-- Container End -->
        </div>
        <!-- New Products End Here -->
        