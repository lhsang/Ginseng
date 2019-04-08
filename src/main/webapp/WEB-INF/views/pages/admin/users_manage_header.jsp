<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<style>
.pag nav{
	text-align:center;
}
</style>
<div class="content-header-left col-md-6 col-xs-12 mb-2">
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-xs-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<c:url value='/admin'/>">Home</a>
          </li>
          <li class="breadcrumb-item"><a href="#">Other</a>
          </li>
          <li class="breadcrumb-item active">Account
          </li>
        </ol>
      </div>
    </div>
    <h3 class="content-header-title mb-0">Account management</h3>
  </div>
  <div class="content-header-right col-md-6 col-xs-12">
      
      <div class="col-xs-7 col-sm-8 col-md-8 col-lg-7">
          <div class="form-group">
              <div class="btn-group" role="group" aria-label="Basic example">
                  <a href="<c:url value='${uri}?role_id=0' />"><button type="button" id="allRole" class="btn btn-outline-secondary">All</button></a>
                 <a href="<c:url value='${uri}?role_id=3' />"> <button type="button" id="sAdminRole" class="btn btn-outline-danger">SuperAdmin</button></a>
                  <a href="<c:url value='${uri}?role_id=1' />"><button type="button" id="adminRole" class="btn btn-outline-warning">Admin</button></a>
                  <a href="<c:url value='${uri}?role_id=2' />"><button type="button" id="userRole" class="btn btn-outline-info">User</button></a>
              </div>
          </div>
      </div>
      
      
      <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2"> </div>
      
      <div class="col-xs-4 col-sm-4 col-md-4 col-lg-2">
        <button type="button" class="btn btn-success"  id="btnAdd"><i class="fa fa-plus"></i> Add acc</button>
      </div>
      
      
  </div>

  <div class="modal fade text-xs-left"  id="modal-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel9" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header bg-success white">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h4 class="modal-title" id="myModalLabel9"><i class="fa fa-user"></i> Add a account</h4>
        </div>
        <div class="modal-body">
            <form action="<c:url value='/admin/action-add-user' />" method="POST" role="form" id="form-add">
                    <div class="row">
                        
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <label><b>Username</b></label>
                            <input type="text" name="username" id="texttUsername" class="form-control" required >
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <label><b>Password</b></label>
                            <input type="text" name="password" id="input" class="form-control"  required value="1234">
                        </div>

                        <br>

                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <label><b>Role</b></label>
                            <select name="role_id" id="input" class="form-control" required>
                                <option value="1">Admin</option>
                                <option value="2">User</option>
                            </select>
                        </div>
                        
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <label><b>Phone number</b></label>
                            <input type="text" name="phone" id="input" class="form-control" required>
                        </div>

                        <br>

                        
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <label><b>Email</b></label>
                            <input type="email" name="email" id="input" class="form-control" placeholder="email@exampl.com" required>
                        </div>
                        
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <label><b>Fullname</b></label>
                            <input type="text" name="fullname" id="input" class="form-control" required>
                        </div>
                        
                        <br>
                    </div>
                    <br>
                    
                   
            </form>     
        </div>
        
        <div class="modal-footer">  
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" style="text-align: left">
               <span style="color:red;font-size: 14px" id="errUsername"></span>
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
               <button  type="submit"  class="btn btn-outline-success" form="form-add">Save changes</button>
               <button type="button" class="btn grey btn-outline-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
        
      </div>
    </div>
  </div>
  