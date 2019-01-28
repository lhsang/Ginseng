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
                                <h3 class="product-header">${product.getName()}</h3>
                                <div class="rating-summary fix mtb-10">
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <div class="rating-feedback">
                                        <a href="#">(1 review)</a>
                                        <a href="#">add to your review</a>
                                    </div>
                                </div>
                                <div class="pro-price mtb-30">
                                    <p class="d-flex align-items-center"><span class="prev-price"></span><span class="price">${product.formatMoney()}</span><span class="saving-price">save 8%</span></p>
                                </div>
                                <p class="mb-20 pro-desc-details">${product.getDescription()}</p>
                                
                                <div class="color clearfix mb-20">
                                    <label>Khối lượng tịnh:</label>
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
                                    <p><span class="in-stock"><i class="ion-checkmark-round"></i>Hàng chất lượng</span></p>
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