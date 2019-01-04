<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
        <div class="main-menu-content">
          <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
            <li class=" navigation-header"><span>General</span><i data-toggle="tooltip" data-placement="right" data-original-title="General" class=" ft-minus"></i>
            </li>
            <li class=" nav-item"><a ><i class="ft-home"></i><span data-i18n="" class="menu-title">Dashboard</span></a>
              <ul class="menu-content">
                <li><a  href="<c:url value='/admin'/>" class="menu-item">Dashboard</a>
                </li>
                <li><a  href="<c:url value='/admin'/>" class="menu-item">Waiting for progressing</a>
                </li>
              </ul>
            </li>

            <li class=" nav-item"><a href="#"><i class="ft-monitor"></i><span data-i18n="" class="menu-title">Products</span></a>
              <ul class="menu-content">
                <li><a href="<c:url value='/admin/product-management'/>" class="menu-item">Product management</a></li>
              </ul>
            </li>
            
            <li class=" nav-item"><a href="#"><i class="ft-shopping-cart"></i><span data-i18n="" class="menu-title">Orders</span></a>
              <ul class="menu-content">
                <li><a href="#" class="menu-item">Vertical</a>
                  <ul class="menu-content">
                    <li><a href="../vertical-modern-menu-template" class="menu-item">Modern Menu</a>
                    </li>
                    <li><a href="../vertical-menu-template" class="menu-item">Semi Light</a>
                    </li>
                  </ul>
                </li>
               
              </ul>
            </li>

            <li class=" navigation-header"><span>Others</span><i data-toggle="tooltip" data-placement="right" data-original-title="Others" class=" ft-minus"></i>
            </li>
  
            <li class=" nav-item"><a href="#"><i class="ft-user"></i><span data-i18n="" class="menu-title">Account</span></a>
              <ul class="menu-content">
                <li><a href="<c:url value='/admin/user-management'/>" class="menu-item">Account manament</a>
                </li>
                <li><a href="icons-font-awesome.html" class="menu-item">Statictis</a>
                </li>
              </ul>
            </li>
            
            <li class=" nav-item"><a href="#"><i class="ft-bell"></i><span data-i18n="" class="menu-title">Notification</span></a>
              <ul class="menu-content">
                <li><a href="<c:url value='/admin/notification-management'/>" class="menu-item">Management</a>
                </li>
                <li><a href="icons-font-awesome.html" class="menu-item">Statictis</a>
                </li>
              </ul>
            </li>


            <li class=" nav-item"><a href="#"><i class="ft-mail"></i><span data-i18n="" class="menu-title">Message</span></a>
              <ul class="menu-content">
                <li><a href="<c:url value='/admin/message-management'/>" class="menu-item">Management</a>
                </li>
                <li><a href="icons-font-awesome.html" class="menu-item">Statictis</a>
                </li>
              </ul>
            </li>
          
          
            <li class=" nav-item"><a href="#"><i class="ft-airplay"></i><span data-i18n="" class="menu-title">Inspect</span></a>
              <ul class="menu-content">
                <li><a href="<c:url value='/admin/message-management'/>" class="menu-item">User interface</a>
                </li>
                <li><a href="icons-font-awesome.html" class="menu-item">Statictis</a>
                </li>
              </ul>
            </li>

          </ul>
        </div>
      </div>