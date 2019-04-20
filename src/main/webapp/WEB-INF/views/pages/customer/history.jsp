<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
 <style>
 .order{
     padding: 15px;
     font-weight: bold;
     font-size: 17px;
 }
 .date-his{
    color: rgb(78, 78, 151);
    float: right;
 }
 .card{
     margin: 20px 0px;
 }
 </style>

<div id="accordion" class="container" style="margin-top:50px">
    <c:forEach items="${orders}" var ="order">
        <div class="card">
          <div class="card-header order">
              <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                        Mã đơn hàng ${order.getId()}
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 date-his">
                        ${order.getCreatedAt()}
                  </div>
              </div>
          </div>
      
          <div id="${order.getId()}" class="collapse detail">
            <div class="card-body">
              <table class="table table-striped">
                <thead>
                    <tr>
                    <th scope="col">Sản phẩm</th>
                    <th scope="col">Số lượng</th>
                    <th scope="col">Giá</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${order.getOrderDetails()}" var ="item">
                    <tr>
                        <th scope="row">${item.getProduct().getName()}</th>
                        <td>${item.getAmount()}</td>
                        <td>${item.getPrice()}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            </div>
          </div>
        </div>   
    </c:forEach>
</div>

<script>

var speed ="500";

$(document).ready(function () {
   $(".order").click(function (e) { 
       e.preventDefault();
       $(this).next().slideToggle(speed).siblings('.detail').slideUp();
   });
});
</script>