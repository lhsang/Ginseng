<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<h3 class="sidebar-title">Danh mục</h3>
<div id="shop-cate-toggle" class="category-menu sidebar-menu sidbar-style">
    <ul>
    <c:forEach items="${groups}" var="group">
        <li class="has-sub"><a href="<c:url value='/products?groupID=${group.getId()}' />">${group.getName()}</a>
            <ul class="category-sub">
                <c:forEach items="${group.getCategories()}" var = "cate">
                <li><a href="<c:url value='/products?cateID=${cate.getId()}' />">${cate.getName()}</a></li>
                </c:forEach>
            </ul>
        </li>
    </c:forEach>
    </ul>
</div>

<script>
 $('#cate-toggle li.has-sub>a,#cate-mobile-toggle li.has-sub>a,#shop-cate-toggle li.has-sub>a').on('click', function () {
        $(this).removeAttr('href');
        var element = $(this).parent('li');
        if (element.hasClass('open')) {
            element.removeClass('open');
            element.find('li').removeClass('open');
            element.find('ul').slideUp();
        } else {
            element.addClass('open');
            element.children('ul').slideDown();
            element.siblings('li').children('ul').slideUp();
            element.siblings('li').removeClass('open');
            element.siblings('li').find('li').removeClass('open');
            element.siblings('li').find('ul').slideUp();
        }
    });
</script>
