<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <title>Giỏ hàng của bạn</title>
    <style>
    .img-item{
        height: 80px;
        width: 80px;
        box-shadow: 3px 2px #c4c4c4;
        margin-left: 8px
    }

    .box{
        margin-top: 20px;
        padding: 5px
    }
    .delete-icon{
        font-size: 20px;
        color: #a0a0a0
    }
    .delete-icon:hover{
        font-size: 25px;
    }
    .input-count{
        width: 40px;
    }
    .input-change{
        background: #fff;
        margin: 0px;
        border: 1px solid #c8c8c8 !important;
        text-align: center;
    }
    .btn-change-minus{
        margin-left:20px;
        border-radius: 4px 0px 0px 4px !important;
        color: #7c7c7c;
        font-size: 9px !important;
    }
    .btn-change-minus:hover, .btn-change-plus:hover{
        background: #f1f1f1;
    }
    .btn-change-plus{
        border-radius: 0px 4px 4px 0px !important;
        color: #7c7c7c;
        font-size: 9px !important;
    }
    .info-cart{
        font-size: 15px;
    }
    .btn-order{
        background:#e62e04;
        color: white;
        width: 100%;
        margin-bottom: 20px;
    }
    .bill-div{
        background: white;
        margin: 20px 0px;
        border: 2px solid #5481f5;
        border-radius: 10px;
        padding: 40px 20px;
    }
    .table{
        display: inline-table;
    }
    .item{
        margin-top:2px;
        background: #fff;
        padding: 20px 6px;
        border-radius: 5px;
        border:1px solid #dfdfdf;
    }
    </style>

        <div class="content">
            <div class="container">
                <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
                            <div class="box">
                                <div class="item-div">
                                    <c:forEach items="${products}" var="product">
                                    <div class="row item">
                                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-2">
                                                <img class="img-item" src="${product.getImg()}" alt="">
                                            </div>
                                                
                                            <div class="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                                                <h5>${product.getName()}</h5>
                                                <p class="info-cart">Khối lượng tịnh: ${product.getQuantity()} ${product.getUnit()}</p>
                                                    
                                                <div class="row" style="margin-top:10px">
                                                     <div class="col-xs-8 col-sm-8 col-md-8 col-lg-7">
                                                        <div class="input-group info-cart">
                                                            <label>Số lượng:</label>
                                                            <button type="button" class="btn input-change btn-change-minus"><span class="fa fa-minus"></span></button>
                                                            <input type="text" class="input-count input-change" value=${product.getNotes()} min="1" max="100">
                                                            <button type="button" class="btn input-change btn-change-plus"><span class="fa fa-plus icon-plus"></span></button>    
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-4 col-sm-4 col-md-4 col-lg-5 delete-icon">
                                                        <span class="fa fa-trash" title="Xóa"></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3" style="margin-top:30px;text-align: right;"><b>${product.formatMoney()}</b></div>
                                    </div>
                                    </c:forEach>
                                </div>
                            </div>

                        </div>
                        
                        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                            <div class="widget bill-div">
                                <div style="text-align: center;color:#5481f5;margin-bottom: 10px"><h4 class="widget-title">Tổng hóa đơn</h4></div>
                                <div class="items" style="text-align: center">
                                    <table class="table table-striped table-inverse table-responsive">
                                        <tbody>
                                            <tr>
                                                <td>Nhân sâm</td>
                                                <td>x2</td>
                                                <td>1000000</td>
                                            </tr>
                                            <tr>
                                                <td>Nấm linh chi</td>
                                                <td>x1</td>
                                                <td>100000</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="text-align: center">Phí vận chuyển</td>
                                                <td>1000000</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="text-align: center">Tổng</td>
                                                <td>2000000</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div style="text-align: center; width: 100%">
                                <a href="#" class="btn btn-danger btn-lg mb30 btn-order">Đặt hàng</a>
                           </div>
                        </div>
                </div>
            </div>
        </div>

    <script>
        $(document).ready(function(){
        var quantitiy=0;
        $('.btn-change-plus').click(function(e){
                e.preventDefault();
                var temp=$(this).parent().find('.input-count');
                var quantity = parseInt(temp.val());
                temp.val(quantity + 1);
            });

            $('.btn-change-minus').click(function(e){
                e.preventDefault();
                var temp=$(this).parent().find('.input-count');
                var quantity = parseInt(temp.val());
                if(quantity>1){
                    temp.val(quantity - 1);
                }
            });
            
        });
    </script>
