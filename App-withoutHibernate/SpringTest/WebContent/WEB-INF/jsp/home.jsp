<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="st" uri="customtags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mouth travelers</title>

<!-- Favicon -->
<link rel="shortcut icon" href="assets/img/favicon.ico"
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
	<jsp:include page="pre-loader.jsp"></jsp:include>>

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
					<img src="${pageContext.request.contextPath}/resources/assets/img/slider/2.jpg" alt="img">
					<!-- Top slider content -->
					<div class="mu-top-slider-content">
						<span class="mu-slider-small-title">Traditional</span>
						<h2 class="mu-slider-title">AMERICAN FOOD</h2>
						<p>Because it's not only about burgers and barbecue. American
							food is very rich, diverse and elaborate, reflecting it's unique
							history and diversity.</p>
							<p style="color:red;"><strong><st:Banner1 >
								</st:Banner1></strong></p>
						<a href="recipes.jsp" class="mu-readmore-btn" name="index" type="submit" value="1">FIND RECIPES</a>
					</div>
					<!-- / Top slider content -->
				</div>
				<!-- / Top slider single slide -->
				<!-- Top slider single slide -->
				<div class="mu-top-slider-single">
					<img src="${pageContext.request.contextPath}/resources/assets/img/slider/1.jpg" alt="img">
					<!-- Top slider content -->
					<div class="mu-top-slider-content">
						<span class="mu-slider-small-title">The Real</span>
						<h2 class="mu-slider-title">FRENCH CUISINE</h2>
						<p>Because it is not only about croissant in a 
							"French ass restaurant". Be fancy with our local French recipes.</p>
						<a href="recipes.jsp" class="mu-readmore-btn">FIND RECIPES</a>
					</div>
					<!-- / Top slider content -->
				</div>

				<!-- / Top slider single slide -->
			</div>
		</div>
	</section>
	<!-- End slider  -->

	<!-- Start About us -->
	<section id="mu-about-us">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mu-about-us-area">
						<div class="mu-title">
							<span class="mu-subtitle">Discover</span>
							<h2>MOUTH TRAVELERS</h2>
							<i class="fa fa-spoon"></i> <span class="mu-title-bar"></span>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="mu-about-us-left">
									<p>You love discovering countries and cultures through
										food? but you are too broke to travel every week-end abroad or
										try fancy exotic restaurants as much as you want?</p>
									<ul>
										<li>I believe food is the most important aspect of a
											culture (trust me I am French. Food is sacred!).</li>
										<li>This website will make you travel to very specific
											places from your own kitchen.</li>
										<li>Choose on a map which region of a country you want to
											go and we will tell you what are the specialties there and
											how to make it!</li>
										<li>You can then enjoy it alone or invite them friends
											and brag about where you make them travel to!</li>
										<li>You are not only eating but also living an
											international experience.</li>
										<li>What? Your hometown specialty is not on our map!
											Please share it with us by adding it to our list!</li>
									</ul>
									<p>Now prepare for take off and Bon Appetit!</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="mu-about-us-right">
									<ul class="mu-abtus-slider">
										<li><img src="${pageContext.request.contextPath}/resources/assets/img/about-us/abtus-img-1.png"
											alt="img"></li>
										<li><img src="${pageContext.request.contextPath}/resources/assets/img/about-us/abtus-img-2.png"
											alt="img"></li>
										<li><img src="${pageContext.request.contextPath}/resources/assets/img/about-us/abtus-img-3.png"
											alt="img"></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End About us -->

	<!-- Start Counter Section -->
	<section id="mu-counter">
		<div class="mu-counter-overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="mu-counter-area">
							<ul class="mu-counter-nav">
								<li class="col-md-3 col-sm-3 col-xs-12">
									<div class="mu-single-counter">
										<span>Recipes from</span>
										<h3>
											<span class="counter">2</span><sup>+</sup>
										</h3>
										<p>Different countries</p>
									</div>
								</li>
								<li class="col-md-3 col-sm-3 col-xs-12">
									<div class="mu-single-counter">
										<span>Delicious</span>
										<h3>
											<span class="counter">8</span><sup>+</sup>
										</h3>
										<p>Recipes</p>
									</div>
								</li>
								<li class="col-md-3 col-sm-3 col-xs-12">
									<div class="mu-single-counter">
										<span>Vegetarian</span>
										<h3>
											<span class="counter">7</span><sup>+</sup>
										</h3>
										<p>Recipes</p>
									</div>
								</li>
								<li class="col-md-3 col-sm-3 col-xs-12">
									<div class="mu-single-counter">
										<span>For beginners</span>
										<h3>
											<span class="counter">5</span><sup>+</sup>
										</h3>
										<p>Recipes</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Counter Section -->




	<!-- Start Subscription section -->
	<section id="mu-subscription">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mu-subscription-area">
						<form class="mu-subscription-form">
							<input type="text" placeholder="Type Your Email Address">
							<button class="mu-readmore-btn" type="Submit">SUBSCRIBE</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Subscription section -->


	<!-- Start Contact section -->
	<section id="mu-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="mu-contact-area">
						<div class="mu-title">
							<span class="mu-subtitle">Sign</span>
							<h2>In</h2>
							<i class="fa fa-spoon"></i> <span class="mu-title-bar"></span>
						</div>									
			<% 		
			if(session.getAttribute("logged")=="True")  {
			%> <p> You are signed in</p>
			<form method="get" action="logout.jsp">
			<button type="submit" class="mu-send-btn" >Sign out</button>
			</form>
			<%}
			else { %>

						<div class="mu-contact-content">
							<div class="row">
								<div class="mu-contact-left">
									<form class="mu-contact-form" action="login.jsp">
										<div class="form-group">
											<label for="name">Login</label> <input type="text"
												class="form-control" id="name" placeholder="login"
												name="loginuser">
										</div>
										<div class="form-group">
											<label for="email">Password</label> 
											<input type="password"
												class="form-control" id="email" placeholder="password"
												name="loginpwd">
										</div>
										<button type="submit" class="mu-send-btn">Log in</button>
									</form>
								</div>
							</div>
						</div>
				<%} %>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Contact section -->


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
