<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



   <!-- ////////////////////////////////////////////////////////////////////////////-->
   <div class="app-content content container-fluid" style="margin-top: 80px">
        <div class="content-wrapper">
          <div class="content-header row">
          </div>
          <div class="content-body"><section class="flexbox-container">
      <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1  box-shadow-2 p-0">
          <div class="card border-grey border-lighten-3 m-0">
              <div class="card-header no-border">
                  <div class="card-title text-xs-center">
                      <div class="p-1"><img src="<c:url value='/static/custom/img/logo-1.png' /> " alt="branding logo"></div>
                  </div>
                  <h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>Login with Ginseng</span></h6>
              </div>
              <div class="alert alert-danger" role="alert" style="padding:0px;border: 0px solid #ffffff;align-content: center; text-align: center" >
                    <c:if test="${not empty error}">
                        <div class="error" >${error}</div>
                    </c:if>	
                </div>
              <div class="card-body collapse in">
                  <div class="card-block">
                      <form class="form-horizontal form-simple" action="<c:url value="/j_spring_security_check"></c:url>" method="post" novalidate>
                          <fieldset class="form-group position-relative has-icon-left mb-0">
                              <input type="text" class="form-control form-control-lg input-lg" name="username" placeholder="Your Username" required>
                              <div class="form-control-position">
                                  <i class="ft-user"></i>
                              </div>
                          </fieldset>
                          <fieldset class="form-group position-relative has-icon-left">
                              <input type="password" class="form-control form-control-lg input-lg" name="password" placeholder="Enter Password" required>
                              <div class="form-control-position">
                                  <i class="fa fa-key"></i>
                              </div>
                          </fieldset>
                          
                          <fieldset class="form-group row">
                              <div class="col-md-6 col-xs-12 text-xs-center text-md-left">
                                  <fieldset>
                                      <input type="checkbox" id="remember-me" class="chk-remember">
                                      <label for="remember-me"> Remember Me</label>
                                  </fieldset>
                              </div>
                              <div class="col-md-6 col-xs-12 text-xs-center text-md-right"><a href="recover-password.html" class="card-link">Forgot Password?</a></div>
                          </fieldset>
                          <button type="submit" class="btn btn-primary btn-lg btn-block"><i class="ft-unlock"></i> Login</button>
                      </form>
                  </div>
              </div>
              
          </div>
      </div>
  </section>
  
          </div>
        </div>
      </div>
      <!-- ////////////////////////////////////////////////////////////////////////////-->