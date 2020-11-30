<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix ="st" uri="customtags"%>
<header id="mu-header">
		<nav class="navbar navbar-default mu-main-navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- LOGO -->

				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right mu-main-nav">
						<li><a href="index.jsp">HOME</a></li>
						<li><a href="index.jsp#mu-about-us">ABOUT US</a></li>
						<li><a href="recipes.jsp">RECIPES</a></li>
						
			<c:set var="name" scope="session" value="Diane"/>
			
			<% if (session.getAttribute("logged")=="True") { %>
			 <li><a href="#mu-contact">Hi <c:out value="${name}"/> ! </a></li> 
			<% }
			else { %>
				<li><a href="#mu-contact">SIGN IN</a></li>
			<%} %>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="blog-archive.html">PAGE <span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="blog-archive.html">BLOG</a></li>
								<li><a href="blog-single.html">BLOG DETAILS</a></li>
								<li><a href="404.html">404 PAGE</a></li>
							</ul></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
	</header>