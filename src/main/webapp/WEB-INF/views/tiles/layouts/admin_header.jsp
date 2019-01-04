<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow" id="header">
</nav>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
    $( document ).ready(function() {
        render("${username}");
    });

    function render(username) {
        $.ajax({
            type: "POST",
            url: "/admin/render-header/"+username,
            success: function (response) {
                $("#header").html("");
                $("#header").html(response);
            }
        });
    }

</script>
 