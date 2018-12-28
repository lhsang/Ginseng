<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

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
                  <button type="button" class="btn btn-outline-secondary"  onclick="filter(0)">All</button>
                  <button type="button" class="btn btn-outline-danger" onclick="filter(3)">SuperAdmin</button>
                  <button type="button" class="btn btn-outline-warning" onclick="filter(1)">Admin</button>
                  <button type="button" class="btn btn-outline-info" onclick="filter(2)">User</button>
              </div>
          </div>
      </div>
      
      
      <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2"> </div>
      
      <div class="col-xs-4 col-sm-4 col-md-4 col-lg-2">
        <button type="button" class="btn btn-success"  id="btnAdd"><i class="fa fa-plus"></i> Add acc</button>
      </div>
      
      
  </div>