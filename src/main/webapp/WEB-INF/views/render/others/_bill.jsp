<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<table class="table table-striped table-inverse table-responsive">
    <tbody>
        <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.getNameLimitCharacter(15)}</td>
            <td>x${product.getNotes()}</td>
            <td>${product.getPrice()}</td>
        </tr>
        </c:forEach>
        <tr>
            <td colspan="2" style="text-align: center">Phí vận chuyển</td>
            <td>0</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">Tổng</td>
            <td>${total}</td>
        </tr>
    </tbody>
</table>