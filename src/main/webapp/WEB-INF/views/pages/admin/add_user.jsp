<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<form action="<c:url value='/admin/action-add-user' />"  method="POST" role="form">
    <legend>Thêm tài khoản</legend>

    <div class="form-group">
        <label for="">Username</label>
        <input type="text" class="form-control" id="" placeholder="username" name="username">
    </div>

    <div class="form-group">
        <label for="">Password</label>
        <input type="password" class="form-control" id="" placeholder="password" name="password">
    </div>
    
	<select class="select2 form-control" name="role_id">
				<option value="0">Chọn Role</option>
					<c:forEach items="${roles}" var="item">
						<option value="${item.getId()}">${item.getName()}</option>
					</c:forEach>
			</select>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
			