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
              <li class="breadcrumb-item"><a href="#">Product</a>
              </li>
              <li class="breadcrumb-item active">Product management
              </li>
            </ol>
          </div>
        </div>
        <h3 class="content-header-title mb-0">Product management</h3>
      </div>

        <div class="col-xs-2 col-sm-2 col-md-2 col-lg-4"> </div>
        
        <div class="col-xs-4 col-sm-4 col-md-4 col-lg-2">
          <button type="button" class="btn btn-success"  id="btnAdd"><i class="fa fa-plus"></i> Add a product</button>
        </div>
        
</div>


<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
     <!-- Search form-->
<section id="search-website" class="card overflow-hidden">
    <div class="card-header" onclick="collapseSearch()">
        <h4 class="card-title">Search by name</h4>
        <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
        <div class="heading-elements">
            <ul class="list-inline mb-0">
                <li><a data-action="collapse"><i class="ft-minus"></i></a></li>
                <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
            </ul>
        </div>
    </div>
    <div class="card-body collapse in search-collapse" style="padding-bottom: 30px">
        <div class="card-block pb-0">
            <fieldset class="form-group position-relative mb-0">
                <input type="text" class="form-control form-control-lg input-lg" id="iconLeft" placeholder="Nhan sam ...">
                <div class="form-control-position">
                    <a href="alert('aaa')"><i class="ft-search font-medium-4"></i></a>
                </div>
            </fieldset>
        </div>
     
    </div>
  </section>
  <!--/ Search form -->
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
     $( document ).ready(function() {
        $('.search-collapse').collapse('hide');
    });

    function collapseSearch() {
        $('.search-collapse').toggle();
    }
</script>

 