<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<section id="html5">
        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">List of user accounts</h4>
                        <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                        <div class="heading-elements">
                            <ul class="list-inline mb-0">
                                <li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
                                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-body collapse in">
                        <div class="card-block card-dashboard">
                            
                            <table class="table table-striped table-bordered dataex-html5-export">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Username</th>
                                        <th>Phone</th>
                                        <th>Email</th>
                                        <th>Role</th>
                                        <th>Features</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td>${user.getId()}</td>
                                        <td>${user.getFullName()}</td>
                                        <td>${user.getUserName()}</td>
                                        <td>${user.getPhone()}</td>
                                        <td>${user.getEmail()}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${user.getRole().getId()==1}">
                                                    <div class="tag tag-warning">${user.getRole().getName()}</div>
                                                </c:when>
                                                <c:when test="${user.getRole().getId()==2}">
                                                    <div class="tag tag-info">${user.getRole().getName()}</div>
                                                </c:when>   
                                                <c:when test="${user.getRole().getId()==3}">
                                                    <div class="tag tag-danger">${user.getRole().getName()}</div>
                                                </c:when> 
                                            </c:choose>
                                        </td>
                                        <td>
                                            <div class="btn-group mr-1 mb-1">
                                                <button type="button" class="btn btn-info" onclick="window.location.href='profile/${user.getUserName()}'"><i class="fa fa-info"></i></button>
                                                <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <span class="sr-only">Toggle Dropdown</span>
                                                    <i class="fa fa-edit"></i>
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" onclick="banUser('${user.getUserName()}')">Delete</a>
                                                    <a class="dropdown-item" href="#">Edit</a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="mailto:${user.getEmail()}?Subject=Ginseng">Send mail</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                                
                            </table>				
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script>
    function banUser(username) {
        $.ajax({
            type: "POST",
            url: "<c:url value='/admin/ban/' />"+username,
            success: function (response) {
                response.status==200? alert("Đã xóa user:"+username+" thành công !"):alert("Xóa thất bại :(");
                location.reload();
            }
        });
    }
    </script>