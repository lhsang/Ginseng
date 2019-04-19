<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld" %>
<title>Trang sản phẩm - Nhân sâm Hàn Quốc chất lượng</title>
<style>
.single-product{
    border: 0.5px solid #efefef;
    box-shadow: 2px 2px #f6f6f6;
    border-radius: 8px;
}
#grid-view .single-product .pro-img img {
    height: 260px;
}
.review{
    color:#585858;
    text-align: right;
}
.rate{
    font-size: 11px;
    color: #dedede
}
.price{
     color: #E62E04;
 }
 .name-product{
    margin: 7px 0px;
 }
.loc{
    float: right;
    background: white;
    padding: 5px 22px;
    border: 0.5px solid #e3e0e0;
    border-radius: 6px;
}
.loc:hover{
    color: white;
    background: #e62e04 
}
.page-link{
    color:#e62e04 ;
}
.page-item.active .page-link {
    background-color: #e62e04;
    border-color: #e62e04;
}
.sidebar-title {
    text-transform: none;
}
.sorter .list{
    width: fit-content;
}
.breadcrumb li.keyword a{
    color: blue;
    text-decoration: underline;
}
</style>
<!-- Breadcrumb Start -->
<div class="breadcrumb-area mt-30">
    <div class="container">
        <div class="breadcrumb">
            <ul class="d-flex align-items-center">
                <li><a href="<c:url value='/' />">Trang chủ</a></li>
                <li class="active"><a href="<c:url value='/products' />">Trang sản phẩm</a></li>
                <c:if test = "${keyword != ''}">
                    <li class="keyword">Tìm kiếm từ khóa "${keyword}" - <a href="<c:url value='/products' />">Trở lại trang mua hàng</a></li>
                </c:if> 
            </ul>
        </div>
    </div>
    <!-- Container End -->
</div>
<!-- Breadcrumb End -->
<!-- Shop Page Start -->
<div class="main-shop-page pt-100 pb-100 ptb-sm-60" style="padding-top: 50px">
    <div class="container">
        <!-- Row End -->
        <div class="row">
            <!-- Sidebar Shopping Option Start -->
            <div class="col-lg-3 order-2 order-lg-1">
                <div class="sidebar">
                    <!-- Sidebar Electronics Categorie Start -->
                    <div class="electronics mb-40">
                        <h3 class="sidebar-title">Danh mục</h3>
                        <div id="shop-cate-toggle" class="category-menu sidebar-menu sidbar-style">
                            <ul>
                                <li class="has-sub"><a href="#">Sâm</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">Cords and Cables</a></li>
                                        <li><a href="shop.html">gps accessories</a></li>
                                        <li><a href="shop.html">Microphones</a></li>
                                        <li><a href="shop.html">Wireless Transmitters</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Nấm linh chi</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">cube lifestyle hd</a></li>
                                        <li><a href="shop.html">gopro hero4</a></li>
                                        <li><a href="shop.html">bhandycam cx405ags</a></li>
                                        <li><a href="shop.html">vixia hf r600</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Đông trùng hạ thảo</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">Gold eye</a></li>
                                        <li><a href="shop.html">Questek</a></li>
                                        <li><a href="shop.html">Snm</a></li>
                                        <li><a href="shop.html">vantech</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                                <li class="has-sub"><a href="#">Nước hồng sâm</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">Samsung</a></li>
                                        <li><a href="shop.html">Toshiba</a></li>
                                        <li><a href="shop.html">Transcend</a></li>
                                        <li><a href="shop.html">Sandisk</a></li>
                                    </ul>
                                    <!-- category submenu end-->
                                </li>
                            </ul>
                        </div>
                        <!-- category-menu-end -->
                    </div>
                    <!-- Sidebar Electronics Categorie End -->
                    <!-- Price Filter Options Start -->
                    <div class="search-filter mb-40">
                        <h3 class="sidebar-title">Khoảng giá</h3>
                        <form  class="sidbar-style" >
                            <div id="slider-range"></div>
                            <input type="text" id="amount" class="amount-range" readonly>
                            <input type="button" value="Lọc" class="loc" onclick="filterPrice()">
                        </form>
                    </div>
                    <!-- Price Filter Options End -->
                   
                    <!-- Product Top Start -->
                    <div class="top-new mb-40">
                        <h3 class="sidebar-title">Sản phẩm bán chạy</h3>
                        <div class="side-product-active owl-carousel">
                            <!-- Side Item Start -->
                            <div class="side-pro-item">
                                <!-- Single Product Start -->
                                <div class="single-product single-product-sidebar">
                                    <!-- Product Image Start -->
                                    <div class="pro-img">
                                        <a href="product.html">
                                            <img class="primary-img" src="https://thongtinhanquoc.com/wp-content/uploads/2014/12/tthq-huong-dan-dung-nhan-sam.jpg" alt="single-product">
                                            <img class="secondary-img" src="https://thongtinhanquoc.com/wp-content/uploads/2014/12/tthq-huong-dan-dung-nhan-sam.jpg" alt="single-product">
                                        </a>
                                    </div>
                                    <!-- Product Image End -->
                                    <!-- Product Content Start -->
                                    <div class="pro-content">
                                        <h4><a href="product.html">Nhân sâm củ</a></h4>
                                        <p><span class="price">130000vnđ</span><del class="prev-price">140000vnđ</del></p>
                                    </div>
                                    <!-- Product Content End -->
                                </div>
                                <!-- Single Product End -->  
                                           
                            </div>
                            <!-- Side Item End -->
                        </div>
                    </div>
                    <!-- Product Top End -->                            
                    
                </div>
            </div>
            <!-- Sidebar Shopping Option End -->
            <!-- Product Categorie List Start -->
            <div class="col-lg-9 order-1 order-lg-2">
                <!-- Grid & List View Start -->
                <div style="background: #f2f2f2;" class="grid-list-top border-default universal-padding d-md-flex justify-content-md-between align-items-center mb-30">
                    <!-- Toolbar Short Area Start -->
                    <div class="main-toolbar-sorter clearfix order-bar">
                        <div class="toolbar-sorter d-flex align-items-center">
                            <label>Sắp xếp:</label>
                            <select class="sorter wide" id="order">
                                <option value="new">Mới nhất</option>
                                <option value="increase">Giá thấp đến cao</option>
                                <option value="decrease">Giá cao đến thấp</option>
                            </select>
                        </div>
                    </div>
                    <!-- Toolbar Short Area End -->
                    <!-- Toolbar Short Area Start -->
                    <div class="main-toolbar-sorter clearfix limit-bar">
                        <div class="toolbar-sorter d-flex align-items-center">
                            <label>Số lượng:</label>
                            <select class="sorter wide" id="limit">
                                <option value="12" >12</option>
                                <option value="24" >24</option>
                                <option value="48" >48</option>
                            </select>
                        </div>
                    </div>
                    <!-- Toolbar Short Area End -->
                </div>
                <!-- Grid & List View End -->
                <div class="main-categorie mb-all-40">
                    <!-- Grid & List Main Area End -->
                    <div class="tab-content fix">
                        <div id="grid-view" class="tab-pane fade show active">
                            <div class="row" style="padding: 0px 10px;">
                                <c:forEach items="${products}" var="product">
                                <!-- Single Product Start -->
                                <div class="col-lg-4 col-md-4 col-sm-6 col-6" style="padding:0px 5px">
                                    <div class="single-product">
                                        <!-- Product Image Start -->
                                        <div class="pro-img">
                                            <a href="product.html">
                                                <img class="primary-img" src="${product.getImg()}" alt="single-product">
                                                <img class="secondary-img" src="${product.getImg()}" alt="single-product">
                                            </a>
                                            <a href="#" class="quick_view" data-toggle="modal" data-target="#myModal" title="Quick View"><i class="lnr lnr-magnifier"></i></a>
                                        </div>
                                        <!-- Product Image End -->
                                        <!-- Product Content Start -->
                                        <div class="pro-content">
                                            <div class="pro-info" style="font-family: 'Times New Roman', Times, serif !important;font-size: 14px">
                                                <h5 class="name-product">${product.getNameLimitCharacter(20)}</h5>
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
                                                    <a onclick="addToCart( '${product.getId()}',' ${product.getPrice()}')" title="Add to Cart"> + Add To Cart</a>
                                                </div>
                                                <div class="actions-secondary">
                                                    <a href="#" title="Compare"><i class="lnr lnr-sync"></i> <span>Add To Compare</span></a>
                                                    <a href="#" title="WishList"><i class="lnr lnr-heart"></i> <span>Add to WishList</span></a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Product Content End -->
                                    </div>
                                </div>
                                <!-- Single Product End -->
                            </c:forEach>
                               
                            </div>
                            <!-- Row End -->
                        </div>
                        <!-- #grid view End -->
                        <div style="float:right">
                            <tag:paginate max="10" offset="${offset}" count="${count}" uri="${uri}" next="&raquo;" previous="&laquo;" steps="${limit}" keyword="${keyword}" />
                        </div>
                       <!-- Product Pagination Info -->
                    </div>
                    <!-- Grid & List Main Area End -->
                </div>
            </div>
            <!-- product Categorie List End -->
        </div>
        <!-- Row End -->
    </div>
    <!-- Container End -->
</div>
<!-- Shop Page End -->

<script>
    $(document).ready(function () {
        $('#li-products').addClass("active");

        changeLimit();
        changeSort();
    });

    function filterPrice() {
        var range =$('#amount').val().toString();
        var fromPrice = parseInt(range);
        range = range.substring(range.indexOf("-") + 2,range.length);
        toPrice = parseInt(range);
        window.location.href="<c:url value='/products' />"+"?fromPrice="+fromPrice+"&toPrice="+toPrice;
    }

    function changeLimit() {
        $('#limit').on('change', function () {
            var selectVal = $("#limit option:selected").val();
            window.location.href=requestCurrentURL(window.location+"","limit",selectVal);
        });

        $("#limit option").each(function(){
            if($(this).val()=='${limit}'){
                $(this).attr('selected',true);
                $('.limit-bar .current').text('${limit}');
            }
        });
    }

    function changeSort() {
        $('#order').on('change', function () {
            var selectVal = $("#order option:selected").val();
            window.location.href=requestCurrentURL(window.location+"","order",selectVal);
        });

        $("#order option").each(function(){
            if($(this).val()=='${order}'){
                $(this).attr('selected',true);
                var text=$(this).text();
                $('.order-bar .current').text(text);
            }
        });
    }
</script>