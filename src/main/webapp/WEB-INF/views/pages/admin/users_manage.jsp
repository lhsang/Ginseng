<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<style>
        .cen{
            text-align: center;
        }
        .error-hightlight{
            border: solid 1px red;
        }
</style>
<title>Account management</title>
<div id="main">
	
</div> 

<sec:authorize access="hasRole('SUPER_ADMIN') and hasRole('ADMIN')">
	<p>Must have ROLE_ADMIN and ROLE_USER</p>
</sec:authorize>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    $( document ).ready(function() {
        filter(0);
    });

    function filter(role_id) {
        $.ajax({
            type: "POST",
            url: "user-management-filter/"+role_id,
            success: function (response) {
                $("#main").html("");
                $("#main").html(response);
            }
        });
    }
   
    $("#btnAdd").click(function () { 
        $("#modal-add").modal();
    });
   
    $("#texttUsername").focusout(function() { 
        var username=$('#texttUsername').val();
       $.ajax({
           type: "POST",
           url:  "<c:url value='/check-username' />",
           data: {username:username},
           success: function (response) {
               if(response.status=='500'){
                    $(":submit").attr("disabled", true);
                    $("#texttUsername").addClass('error-hightlight');
                    $("#errUsername").text("* Username is already taken");
               }else{
                    $(":submit").removeAttr("disabled");
                    $("#texttUsername").removeClass('error-hightlight');
                    $("#errUsername").text("");
               }
           }
       });
        
    });
</script>
