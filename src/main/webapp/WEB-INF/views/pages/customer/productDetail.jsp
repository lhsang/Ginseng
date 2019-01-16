<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>${product.getName()} - Ginseng Nhân sâm Hàn Quốc</title>

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
                                
                                <c:forEach var = "i" begin = "0" end = "${product.getListImg().size()}">
							         <div id="thumb${i+2}" class="tab-pane fade">
	                                    <a data-fancybox="images" href="<c:url value='${product.getListImg().get(i).getSrc()}'/>"><img src="<c:url value='${product.getListImg().get(i).getSrc()}'/>" alt="product-view"></a>
	                                </div>
							     </c:forEach>
                           
                            </div>
                            <!-- Thumbnail Large Image End -->
                            <!-- Thumbnail Image End -->
                            <div class="product-thumbnail mt-15">
                                <div class="thumb-menu owl-carousel nav tabs-area" role="tablist">
                                    <a class="active" data-toggle="tab" href="#thumb1"><img src="<c:url value='${product.getImg()}' />" alt="product-thumbnail"></a>
                                     <c:forEach var = "i" begin = "0" end = "${product.getListImg().size()}">
							         <div id="thumb${i+2}" class="tab-pane fade">
	                                    <a data-toggle="tab" href="#thumb${i+2}"><img src="<c:url value='${product.getListImg().get(i).getSrc()}'/>" alt="product-thumbnail"></a>
	                                </div>
							     </c:forEach>
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
                                        ${product.getRating()}
                                    </div>
                                    <div class="rating-feedback">
                                        <a href="#">(1 review)</a>
                                        <a href="#">add to your review</a>
                                    </div>
                                </div>
                                <div class="pro-price mtb-30">
                                    <p class="d-flex align-items-center"><span class="prev-price">16.51</span><span class="price">$15.19</span><span class="saving-price">save 8%</span></p>
                                </div>
                                <p class="mb-20 pro-desc-details">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!</p>
                                <div class="product-size mb-20 clearfix">
                                    <label>Size</label>
                                    <select class="">
                                      <option>S</option>
                                      <option>M</option>
                                      <option>L</option>
                                    </select>
                                </div>
                                <div class="color clearfix mb-20">
                                    <label>color</label>
                                    <ul class="color-list">
                                        <li>
                                            <a class="orange active" href="#"></a>
                                        </li>
                                        <li>
                                            <a class="paste" href="#"></a>
                                        </li>
                                    </ul>
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
                                            <a href="compare.html" title="" data-original-title="Compare"><i class="lnr lnr-sync"></i> <span>Add To Compare</span></a>
                                            <a href="wishlist.html" title="" data-original-title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-ref mt-20">
                                    <p><span class="in-stock"><i class="ion-checkmark-round"></i> IN STOCK</span></p>
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