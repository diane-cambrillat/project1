<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix ="st" uri="customtags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mouth travelers</title>

<!-- Favicon -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico"
	type="image/x-icon">

<!-- Font awesome -->
<link href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css" rel="stylesheet">
<!-- Slick slider -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/slick.css">
<!-- Date Picker -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-datepicker.css">
<!-- Fancybox slider -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<!-- Theme color -->
<link id="switcher" href="${pageContext.request.contextPath}/resources/assets/css/theme-color/default-theme.css"
	rel="stylesheet">

<!-- Main style sheet -->
<link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet">


<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Tangerine'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Prata'
	rel='stylesheet' type='text/css'>


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<!-- pre loader -->
	<jsp:include page="pre-loader.jsp"></jsp:include>

	<!-- Start header section -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- End header section -->


	
	<!-- Start slider  -->
	<section id="mu-slider">
		<div class="mu-slider-area">
			<!-- Top slider -->
			<div class="mu-top-slider">
				<!-- Top slider single slide -->
				<div class="mu-top-slider-single">
					<img src="${pageContext.request.contextPath}/resources/assets/img/slider/recipe.jpg" alt="img">
					<!-- Top slider content -->
					<div class="mu-top-slider-content">
				
						<span class="mu-slider-small-title">Find here your next</span>
						<h2 class="mu-slider-title">Where your favorite dishes come from</h2>
						
						<h2 style="color:red;"><strong><st:Banner2 message2="before Christmas! Check our traditional recipes!">
				</st:Banner2></strong></h2>
				
						<p>Pick where you want to travel for your next lunch, dinner or snack!</p>
					</div>
					<!-- / Top slider content -->
				</div>
				<!-- / Top slider single slide -->
				<!-- Top slider single slide -->


				<!-- / Top slider single slide -->
			</div>
		</div>
	</section>
	<!-- End slider  -->

<!-- Start Restaurant Menu -->
	<section id="mu-restaurant-menu">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mu-restaurant-menu-area">
						<div class="mu-title">
							<span class="mu-subtitle">Dishes</span>
							<h2>From the World</h2>
							<i class="fa fa-spoon"></i> <span class="mu-title-bar"></span>
						</div>
						<div class="mu-restaurant-menu-content">
							<ul class="nav nav-tabs mu-restaurant-menu">
								<li class="active"><a href="#breakfast" data-toggle="tab">American
										Food</a></li>
								<li><a href="#meals" data-toggle="tab">French Food</a></li>
							</ul>

							<!-- Tab panes -->
	
											
					<form method="get" action="getrecipe.jsp">
							<div class="tab-content">
								<div class="tab-pane fade in active" id="breakfast">
									<div class="mu-tab-content-area">
										<div class="row">
											<div class="col-md-6">
												<div class="mu-tab-content-left">
												
											<ul class="mu-menu-item-nav">
																							
											<c:forEach var="recipeUSA" items="${recipesUSA}">	
													<li>
															<div class="media">
																<div class="media-left">
																	<a href="#"> <img class="media-object"
																		src="${pageContext.request.contextPath}${recipeUSA.photo}" alt="img">
																	</a>
																</div>
																<div class="media-body">
																	<h4 class="media-heading">
																<button name="index" type="submit" value="${recipeUSA.id}">${recipeUSA.recipe_name}</button>
																	</h4>
																</div>
															</div>
														</li>
													</c:forEach>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane fade " id="meals">
									<div class="mu-tab-content-area">
										<div class="row">
											<div class="col-md-6">
												<div class="mu-tab-content-left">
													<ul class="mu-menu-item-nav">
													
										<c:forEach var="recipeFR" items="${recipesFR}">	
														<li>
															<div class="media">
																<div class="media-left">
																	<a href="#"> <img class="media-object"
																		src="${pageContext.request.contextPath}${recipeFR.photo}" alt="img">
																	</a>
																</div>
																<div class="media-body">
																	<h4 class="media-heading">
															<button name="index" type="submit" value="${recipeFR.id}">${recipeFR.recipe_name}</button>
																	</h4>
																</div>
															</div>
														</li>
											</c:forEach>
														
													</ul>
													
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							</form>
			<!-----------------/Tab content panes-------------->
						</div>
						<h2>See your recipe below!</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Restaurant Menu -->
	
	<!-- Start About us -->
		<section id="mu-about-us">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mu-about-us-area">
						<div class="mu-title">
							<span class="mu-subtitle">Recipes for delicious</span>
							<h2><% String dish= (String) request.getAttribute("dish"); out.print(dish);
							%> </h2>
							<i class="fa fa-spoon"></i> <span class="mu-title-bar"></span>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="mu-about-us-left">
									<p>Time to cook! </p>
									<ul>
										<li>This dish is from: <% String country= (String) request.getAttribute("country"); out.print(country);%></li>
										<li>And more precisely from: <% String region= (String) request.getAttribute("region"); out.print(region);%></li>
										<li>The dish is considered to be a : <% String type= (String) request.getAttribute("type"); out.print(type);%></li>
										<li>Level of difficulty: <% String level= (String) request.getAttribute("level"); out.print(level);%></li>
										<li>Ingredients: <% String recipe= (String) request.getAttribute("recipe"); out.print(recipe);%></li>
									</ul>
									<p>Bon Appetit!</p>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="mu-about-us-right">
									<iframe width="470" height="315" src="<%String video= (String) request.getAttribute("video"); out.print(video);%>"></iframe>
								</div>
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End About us -->


	<!-- Start Footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- End Footer -->

	<!-- jQuery library -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.js"></script>
	<!-- Slick slider -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/slick.js"></script>
	<!-- Counter -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/waypoints.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.counterup.js"></script>
	<!-- Date Picker -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/bootstrap-datepicker.js"></script>
	<!-- Mixit slider -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.mixitup.js"></script>
	<!-- Add fancyBox -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.fancybox.pack.js"></script>

	<!-- Custom js -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>

</body>
</html>