<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


 <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    <div class="content-header-left col-md-6 col-xs-12 mb-2">
        <div class="row breadcrumbs-top">
          <div class="breadcrumb-wrapper col-xs-12">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="<c:url value='/admin'/>">Home</a>
              </li>
              <li class="breadcrumb-item"><a href="<c:url value='${uri}'/>">Product</a>
              </li>
              <li class="breadcrumb-item active"><a href="<c:url value='${uri}'/>">Product management</a>
              </li>
            </ol>
          </div>
        </div>
        <h3 class="content-header-title mb-0">Product management</h3>
      </div>

</div>


<div class="col-xs-12 col-sm-12 col-md-12 col-lg-6" id="searchProduct">
	<section  class="card overflow-hidden">
    	<form action="<c:url value='${uri}' />" id ="search">
	       <fieldset class="form-group position-relative mb-0">
	          <input type="text" class="form-control form-control-lg input-lg" name="keyword" placeholder="Name of product">
	          <div class="form-control-position">
	              <a onclick="document.getElementById('search').submit()"><i class="ft-search font-medium-4"></i></a>
	           </div>
	        </fieldset>
     	</form>
	</section>
</div>
  <!--/ Search form -->
  
<%--   <div class="col-xs-12 col-sm-12 col-md-12 col-lg-6">
     <!-- Search form-->
<section id="search-website" class="card overflow-hidden">
    <div class="card-header" onclick="collapseFilter()">
        <h4 class="card-title">Filter</h4>
        <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
        <div class="heading-elements">
            <ul class="list-inline mb-0">
                <li><i class="ft-filter"></i></li>
            </ul>
        </div>
    </div>
    <div class="card-body collapse in filter-collapse" style="padding-bottom: 30px">
        <div class="card-block pb-0">
        	<form action="<c:url value='${uri}' />" id ="filter">
	            <fieldset class="form-group position-relative mb-0">
	                <input type="text" class="form-control form-control-lg input-lg" name="keyword" placeholder="Nhan sam ...">
	                <div class="form-control-position">
	                    <a onclick="document.getElementById('filter').submit()"><i class="ft-search font-medium-4"></i></a>
	                </div>
	            </fieldset>
            </form>
        </div>
     
    </div>
  </section>
  <!--/ filter form -->
</div>  --%>


<script>
	$(document).ready(function () {
		$('#searchProduct').hide();
	});
	$("#icSearch").click(function () {
	    $('#searchProduct:visible').hide();
	    $('#searchProduct:hidden').show();
	});
</script>
 