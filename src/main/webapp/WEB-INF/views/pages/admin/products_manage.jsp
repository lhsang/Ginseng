<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
	.body{
		background:#ffffff;
	}
</style>
<title>Product management</title>
<div class="row m-t-30">
    <div class="col-md-12">
         <!-- DATA TABLE-->
         <div class="table-responsive m-b-40">
             <table class="table table-bordered table-striped" style="margin-top:50px">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Remain</th>
                    </tr>
                </thead>
                <tbody>
                 <c:forEach items="${products}" var="product">
                    <tr>
                        <td>${product.getId()}</td>
                        <td>${product.getName()}</td>
                        <td>${product.getQuantity()}</td>
                        <td class="process">${product.getPrice()}</td>
                        <td>${product.getRemain()}</td>
                    </tr>
                   </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- END DATA TABLE-->
    </div>
</div>
                        
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $('.li-product-management').addClass('active');
    });
    
  
    function filter() {
        var role_id =$(".selectRole").val();
        var urlFromData="admin/user-management-filter";
        $.ajax({
            type: "POST",
            url: "<c:url value='/' />"+urlFromData,
            data:{
                role_id : role_id
            },
            success: function (response) {
                $("#main").html("");
                $("#main").html(response);
            }
        });
    }

</script>


                   