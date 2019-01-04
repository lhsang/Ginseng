<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<title>Product management</title>
<section id="html5">
        <div class="row">
            <div class="col-xs-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">List of products</h4>
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
				                        <th>Net weight</th>
				                        <th>Unit</th>
				                        <th>Price</th>
				                        <th>Remain</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${products}" var="product">
                                    <tr>
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
    
                   