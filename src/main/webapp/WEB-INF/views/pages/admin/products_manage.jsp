<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld" %>
<style>
	.pag nav{
		text-align:center;
	}
</style>
<title>Product management</title>

<div class="row">
        <div class="col-xs-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">List of products</h4>
                    <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                    <div class="heading-elements">
                        <ul class="list-inline mb-0">
                            <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="card-body collapse in">
                    <div class="card-block card-dashboard">
                        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline dt-bootstrap4"><div class="row"><div class="col-md-12"><table class="table table-striped table-bordered dom-jQuery-events dataTable" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">
                            <thead>
                                <tr role="row">
                                	<th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 171px;">ID</th>
                                	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" >Name</th>
                                	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" >Net weight</th>
                                	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" >Unit</th>
                                	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" >Price</th>
                                	<th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending">Remain</th>
                                	<th></th>
                                	</tr>
                            </thead>
                            <tbody>     
                            	<c:forEach items="${products}" var="product">                           
	                            <tr role="row" class="odd">
	                                 <td>${product.getId()}</td>
				                        <td>${product.getName()}</td>
				                        <td>${product.getQuantity()}</td>
				                        <td>
				                        	 <c:choose>
                                                <c:when test="${product.getUnit()=='g'|| product.getUnit()=='kg'}">
                                                    <div class="tag tag-warning">${product.getUnit()}</div>
                                                </c:when>
                                                <c:when test="${product.getUnit()=='ml' || product.getUnit()=='l'}">
                                                    <div class="tag tag-info">${product.getUnit()}</div>
                                                </c:when>   
                                                <c:otherwise>
												    <div class="tag tag-success">${product.getUnit()}</div>
												  </c:otherwise>
                                            </c:choose>
				                        
				                        </td>
				                        <td class="process">${product.getPrice()}</td>
				                        <td>${product.getRemain()}</td>
				                        <td>
				                        	<button type="button" class="btn btn-secondary btn-min-width mr-1 mb-1"><i class="fa fa-edit"></i> Edit</button>
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
            </div>
        </div>
    </div> 
 <tag:paginate max="10" offset="${offset}" count="${count}" uri="${uri}" next="&raquo;" previous="&laquo;" steps="${limit}" />
         