<%@ page pageEncoding="UTF-8" %>
<%@page import="java.util.ArrayList" %>
<%@ page import="model.beans.Produit" %> 

<!DOCTYPE html>

<html lang="fr">
<head>
	<meta charset="utf-8" />
	<title>Tix Shop</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta name="description" content="Lander" />
	<meta name="keywords" content="Lander" />

	<meta name="MobileOptimized" content="320" />
	<!--Template style -->
	<link rel="stylesheet" type="text/css" href="css/animate.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="css/fonts.css" />
	<link rel="stylesheet" type="text/css" href="css/flaticon.css" />
	<link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
	<link rel="stylesheet" type="text/css" href="css/owl.theme.default.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/responsive.css" />
	<!-- favicon links -->
	<link rel="shortcut icon" type="image/png" href="images/header/favicon.png" />
<script src='../../../../google_analytics_auto.js'></script></head>

<body>
	<!-- preloader Start -->
	<div id="preloader">
		<div id="status">
			<img src="images/header/loder.gif" id="preloader_image" alt="loader">
		</div>
	</div>
	<!-- Top Scroll Start -->	<a href="javascript:" id="return-to-top"><i class="fa fa-angle-up"></i></a>
	<!-- Top Scroll End -->
	<div id="home" class="width_calc">
		<!--try top banner main wrapper Start-->
		<div class="try_top_banner_wrapper" style="display: none;">
			<div class="try_top_side_img">
				<img src="images/header/banner_side.png" alt="side_img">
			</div>
			<div class="try_circle_first hidden-xs hidden-sm">
				<img src="images/header/right_cycle1.png" alt="circle">
			</div>
			<div class="try_circle_second hidden-xs hidden-sm">
				<img src="images/header/right_cycle2.png" alt="circle">
			</div>
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-4">
						<div class="try_logo_wrapper try_logo_wrapper_top">
							<a href="#">
								<img src="images/header/logo.png" alt="logo">
							</a>
						</div>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-8">
						<div class="try_top_login_wrapper">
							<ul>
								<li class="hidden-xs"><a href="#"><i class="flaticon-padlock"></i> &nbsp;Login / Register</a>
								</li>
								<li><a href="#">Buy Websti</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="slider-area">
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
								<div class="carousel-inner" role="listbox">
									<div class="item active">
										<div class="carousel-captions caption-1">
											<div class="container">
												<div class="row">
													<div class="col-lg-8 col-md-6 col-sm-12 col-xs-12 hot_slider_custom_col_img_cont">
														<div class="content lr_banner_content_inner_wrapper">
															<div id="clockdiv" data-animation="animated flipInY">
																<div><span class="days"></span>
																	<div class="smalltext">Days</div>
																</div>
																<div><span class="hours"></span>
																	<div class="smalltext">Hours</div>
																</div>
																<div><span class="minutes"></span>
																	<div class="smalltext">Minutes</div>
																</div>
																<div><span class="seconds"></span>
																	<div class="smalltext">Seconds</div>
																</div>
															</div>
															<h3 data-animation="animated fadeInLeft">Lunching New Phone @ $999</h3>
															<ul class="try_slider_list">
																<li data-animation="animated fadeInLeft"><a href="#">AI Dual Camera</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Octa-core Processor</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">6 GB Ram</a>
																</li>
															</ul>
															<ul class="try_slider_btn">
																<li data-animation="animated fadeInLeft"><a href="#">Learn More</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Buy Now</a>
																</li>
															</ul>
															<div class="clear"></div>
														</div>
													</div>
													<div class="col-lg-4 col-md-6 col-sm-6 col-xs-8">
														<div class="try_slider_img_Wrapper try_slider_img_header_Wrapper" data-animation="animated bounceInUp">
															<img src="images/header/mobail.png" alt="mobail">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class=" carousel-captions caption-2">
											<div class="container">
												<div class="row">
													<div class="col-lg-8 col-md-6 col-sm-12 col-xs-12 hot_slider_custom_col_img_cont">
														<div class="content lr_banner_content_inner_wrapper">
															<div id="clockdiv2" data-animation="animated flipInY">
																<div><span class="days"></span>
																	<div class="smalltext">Days</div>
																</div>
																<div><span class="hours"></span>
																	<div class="smalltext">Hours</div>
																</div>
																<div><span class="minutes"></span>
																	<div class="smalltext">Minutes</div>
																</div>
																<div><span class="seconds"></span>
																	<div class="smalltext">Seconds</div>
																</div>
															</div>
															<h3 data-animation="animated fadeInLeft">Lunching New Phone @ $999</h3>
															<ul class="try_slider_list">
																<li data-animation="animated fadeInLeft"><a href="#">AI Dual Camera</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Octa-core Processor</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">6 GB Ram</a>
																</li>
															</ul>
															<ul class="try_slider_btn">
																<li data-animation="animated fadeInLeft"><a href="#">Learn More</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Buy Now</a>
																</li>
															</ul>
															<div class="clear"></div>
														</div>
													</div>
													<div class="col-lg-4 col-md-6 col-sm-6 col-xs-8">
														<div class="try_slider_img_Wrapper try_slider_img_header_Wrapper" data-animation="animated bounceInUp">
															<img src="images/header/mobail.png" alt="mobail">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="carousel-captions caption-3">
											<div class="container">
												<div class="row">
													<div class="col-lg-8 col-md-6 col-sm-12 col-xs-12 hot_slider_custom_col_img_cont">
														<div class="content lr_banner_content_inner_wrapper">
															<div id="clockdiv3" data-animation="animated flipInY">
																<div><span class="days"></span>
																	<div class="smalltext">Days</div>
																</div>
																<div><span class="hours"></span>
																	<div class="smalltext">Hours</div>
																</div>
																<div><span class="minutes"></span>
																	<div class="smalltext">Minutes</div>
																</div>
																<div><span class="seconds"></span>
																	<div class="smalltext">Seconds</div>
																</div>
															</div>
															<h3 data-animation="animated fadeInLeft">Lunching New Phone @ $999</h3>
															<ul class="try_slider_list">
																<li data-animation="animated fadeInLeft"><a href="#">AI Dual Camera</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Octa-core Processor</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">6 GB Ram</a>
																</li>
															</ul>
															<ul class="try_slider_btn">
																<li data-animation="animated fadeInLeft"><a href="#">Learn More</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Buy Now</a>
																</li>
															</ul>
															<div class="clear"></div>
														</div>
													</div>
													<div class="col-lg-4 col-md-6 col-sm-6 col-xs-8">
														<div class="try_slider_img_Wrapper try_slider_img_header_Wrapper" data-animation="animated bounceInUp">
															<img src="images/header/mobail.png" alt="mobail">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<ol class="carousel-indicators">
										<li data-target="#carousel-example-generic" data-slide-to="0" class="active"><span class="number"></span>
										</li>
										<li data-target="#carousel-example-generic" data-slide-to="1" class=""><span class="number"></span>
										</li>
										<li data-target="#carousel-example-generic" data-slide-to="2" class=""><span class="number"></span>
										</li>
									</ol>
									<div class="carousel-nevigation">
										<a class="prev" href="#carousel-example-generic" role="button" data-slide="prev">	<i class="fa fa-angle-left"></i>
										</a>
										<a class="next" href="#carousel-example-generic" role="button" data-slide="next"> <i class="fa fa-angle-right"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try top banner main wrapper End-->
		<header class="main-header" >
			<div class="container">
				<div class="row">
					<nav class="navbar navbar-default">
					  <div class="container-fluid">
					    <!-- Brand and toggle get grouped for better mobile display -->
					    <div class="navbar-header">
					      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					        <span class="sr-only">barre de navigation</span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					        <span class="icon-bar"></span>
					      </button>
					      <a class="navbar-brand" href="#">Tix Shop</a>
					    </div>

					    <!-- Collect the nav links, forms, and other content for toggling -->
					    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					      <ul class="nav navbar-nav">
					        <li class="active"><a href="home">Home <span class="sr-only">(current)</span></a></li>
					      </ul>
					      <form class="navbar-form navbar-left" action="produit" method="POST">
					      	 <div class="form-group">
					          <label for="categories"></label>
					           Categories:
								<select name="categorie" id="pet-select" class="form-control" >
								    <c:forEach items="${ categories }" var="categorie" varStatus="status">
								    	<option value="${ categorie.getId_categorie() }"><c:out value="${ categorie.getNom_categorie() }" />
								    	</option>
								    </c:forEach>
								</select>
					          </div>
					        <div class="form-group">
					          <input type="text" class="form-control" placeholder="rechercher" name="produit">
					        </div>
					        <button type="submit" class="btn btn-default">Rechercher Produit</button>
					      </form>
					      <ul class="nav navbar-nav navbar-right">
					        <li>
					        	<c:choose>
								    <c:when test="${!empty sessionScope.id_membre}"><a href="deco?deco=1">Se deconnceter</a></c:when>
								    <c:when test="${empty sessionScope.id_membre}"><a href="login">Se connceter</a></c:when>
								</c:choose>
					        </li>
					        <li>
					        	<c:choose>
								    <c:when test="${!empty sessionScope.id_membre}"><a href="panier?ref=1">Mon Panier</a></c:when>
								    <c:when test="${empty sessionScope.id_membre}"><a  href="login"></a></c:when>
								</c:choose>
					        </li>
					      </ul>
					    </div><!-- /.navbar-collapse -->
					  </div><!-- /.container-fluid -->
					</nav>
				</div>
				<div class="row" style="display: none;">
					<!-- Main Box -->
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
						<div class="try_logo_wrapper">
							<a href="#">
								<img src="images/header/logo.png" alt="logo">
							</a>
						</div>
					</div>
					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12">
						<div class="main-box">
							<div class="main-box">
								<div class="auto-container">
									<div class="outer-container clearfix">
										<!--Logo Box-->
										<!--Nav Outer-->
										<div class="nav-outer clearfix">
											<!-- Main Menu -->
											<nav class="main-menu">
												<div class="navbar-header">
													<!-- Toggle Button -->
													<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon-bar"></span>
														<span class="icon-bar"></span>
														<span class="icon-bar"></span>
													</button>
												</div>
												<div class="navbar-collapse collapse scroll-nav clearfix">
													<ul class="navigation clearfix">
														<li><a href="#home">Home</a>
														</li>
														<li><a href="#mobile">mobile</a>
														</li>
														<!--<li><a href="#Earphones">Earphones</a>
														</li>
														<li><a href="#Led">Led</a>
														</li>
														<li><a href="#Watch">Watch</a>
														</li>
														<li><a href="#MacBook">MacBook</a>
														</li>
														<li><a href="#power">Power Bank</a>
														</li>
														<li><a href="#Camera">Camera</a>
														</li> -->
													</ul>
												</div>
											</nav>
											<!-- Main Menu End-->
										</div>
										<!--Nav Outer End-->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
	<div id="mobile" class="width_calc">
		<!--try Slider banner Start-->
		<!--try Slider banner End-->
		<!--try sh section Start-->
		<div class="try_recent_mobail_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Resultat du  recherche</h2>
							<p><span class="try_left_dots"></span>Resultat<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_sh_main_section_wrapper">
							<div class="row">
								<c:forEach items="${ listeProduits }" var="listeProduit" varStatus="status">
									<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
										<div class="try_sh_main_box_wrapper">
											<div class="try_sh_img_wrapper">
												<img height="160" src="<c:out value="${ listeProduit.getImage_produit() }" />"> 
												<a href="#"><i class="fa fa-heart"></i></a>
											</div>
											<div class="try_sh_img_cont_wrapper">
												<p><c:out value="${ listeProduit.getNom_produit() }" /></p>
												<h3> <c:out value="${ listeProduit.getDescription() }" />  </h3>
												<p><c:out value="${ listeProduit.getPrix_produit() }" /> Ariary</p>
												<div class="try_sh_btn_wrapper">	
													<c:choose>
														<c:when test="${!empty sessionScope.id_membre}"><a  href="panier?id_produit=<c:out value="${ listeProduit.getId_produit() }" />">Ajouter au panier</a></c:when>
														<c:when test="${empty sessionScope.id_membre}"><a  href="login" />Se connecter</a>
														</c:when>
													</c:choose>	
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<nav aria-label="Page navigation example">
									  <ul class="pagination">
									    <li class="page-item"><a class="page-link" href="#">Précédant</a></li>
									    <c:forEach items="${pages}" var="page" varStatus="status">
									    	<li class="page-item"><a class="page-link" href="home?page=${page}"><c:out value="${page}" /></a></li>
									     </c:forEach>
									    <li class="page-item"><a class="page-link" href="">Suivant</a></li>
							</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try sh section End-->
	<!--try led section Start-->
	<!--try sh section End-->
	<!--try Shipping section Start-->
	<div class="try_shippy_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="try_shippy_main_box_wrapper">
						<div class="try_ship_icon_wrapper">	<i class="flaticon-logistics-delivery-truck-in-movement"></i>
						</div>
						<div class="try_ship_icon_cont_wrapper">
							<h3><a href="#">Livraison et retour gratuits</a></h3>
							<h4>superieur a 200.000 Ariary</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="try_shippy_main_box_wrapper try_shippy_main_box_wrapper2">
						<div class="try_ship_icon_wrapper">	<i class="flaticon-24-hours-delivery"></i>
						</div>
						<div class="try_ship_icon_cont_wrapper">
							<h3><a href="#">Assistance 24h/24 </a></h3>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="try_shippy_main_box_wrapper try_shippy_main_box_wrapper2">
						<div class="try_ship_icon_wrapper">	<i class="flaticon-protection-shield"></i>
						</div>
						<div class="try_ship_icon_cont_wrapper">
							<h3><a href="#">Paiements 100% sécurisés</a></h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try Shipping section End-->
	<!--try footer section Start-->
	<div class="try_footer_main_section_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
					<div class="try_footer_first_sec_wrapper">
						<p>TIX SHOP</p>
						<h4>Merci d'avoir visiter notre site .</h4>
						<p>+261329371764</p>
						<h5>Email &nbsp;&nbsp;: &nbsp;&nbsp;<a href="#">antema155@gmail.com</a></h5>
					</div>
				</div>
				<div class="col-lg-4 col-lg-offset-1 col-md-4 col-sm-12 col-xs-12">
					<div class="try_footer_second_sec_wrapper">
						<h3>Service Clients</h3>
						<ul>
							<li><span class="text-align-left"><a href="#">Aide</a></span><span class="text-align-right"></span>
							</li>
							<li><span class="text-align-left"><a href="#">Nous contacter</a></span><span class="text-align-right"></span>
							</li>
							
							<li><span class="text-align-left"><a href="#">Termes et Conditions d utilisation</a></span><span class="text-align-right"></span>
							</li>
							<li><span class="text-align-left"><a href="#">Informations d'achat</a></span><span class="text-align-right"></span>
							</li>
							
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="try_footer_third_sec_wrapper">
						<h3>Restons en contact</h3>
						<div class="try_footer_input_wrapper">
							<input type="text" placeholder="Email Address">
							<button><i class="flaticon-right-arrow-1"></i>
							</button>
						</div>
						<h4>Recevez des mises à jour sur les promotions et plus encore</h4>
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-twitter"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-youtube-play"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a>
							</li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="try_bottom_footer_wrapper">
						<p>Copyright © 2021 <a href="#">Heritiana Andrianajafison</a> | All rights reserved</p>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try footer section End-->
	<!--footer news End-->
	<script src="js/jquery_min.js"></script>
	<script src="js/modernizr.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/pagenav.js"></script>
	<script src="js/custom.js"></script>
	<!--main js file end-->
</body>
</html>