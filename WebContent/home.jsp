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
				<div class="row" >
					<!-- Main Box -->
					<div class="col-lg-2 col-md-2 col-sm-2 col-xs-12">
						<div class="try_logo_wrapper">
							<a href="#">
								<img src="images/header/logo.png" alt="logo">
							</a>
						</div>
					</div>
					<div class="col-lg-10 col-md-10 col-sm-10 col-xs-12" style="display: none;">
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
		<!--try top banner main wrapper Start-->
		<div class="try_top_banner_wrapper" >
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
						</div>
					</div>
					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-8">
						<div class="try_top_login_wrapper">
							<ul>
								<li><a href="#">Bienvenue</a>
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
																	<div class="smalltext">Jours</div>
																</div>
																<div><span class="hours"></span>
																	<div class="smalltext">Heures</div>
																</div>
																<div><span class="minutes"></span>
																	<div class="smalltext">Minutes</div>
																</div>
																<div><span class="seconds"></span>
																	<div class="smalltext">Secondes</div>
																</div>
															</div>
															<h3 data-animation="animated fadeInLeft">Lancement de nouveaux Produit</h3>
															<ul class="try_slider_list">
																<li data-animation="animated fadeInLeft"><a href="#">Earpods</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Pour Iphones</a>
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
																	<div class="smalltext">jours</div>
																</div>
																<div><span class="hours"></span>
																	<div class="smalltext">heures</div>
																</div>
																<div><span class="minutes"></span>
																	<div class="smalltext">Minutes</div>
																</div>
																<div><span class="seconds"></span>
																	<div class="smalltext">Secondes</div>
																</div>
															</div>
															<h3 data-animation="animated fadeInLeft">Lancement de nouveaux Produit</h3>
															<ul class="try_slider_list">
																<li data-animation="animated fadeInLeft"><a href="#">Earpods</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Pour Iphones</a>
																</li>
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
																	<div class="smalltext">Jours</div>
																</div>
																<div><span class="hours"></span>
																	<div class="smalltext">Heures</div>
																</div>
																<div><span class="minutes"></span>
																	<div class="smalltext">Minutes</div>
																</div>
																<div><span class="seconds"></span>
																	<div class="smalltext">Secondes</div>
																</div>
															</div>
															<h3 data-animation="animated fadeInLeft">Lancement de nouveaux Produit</h3>
															<ul class="try_slider_list">
																<li data-animation="animated fadeInLeft"><a href="#">Earpods</a>
																</li>
																<li data-animation="animated fadeInLeft"><a href="#">Pour Iphones</a>
																</li>
															</ul>
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
	</div>
	<div id="mobile" class="width_calc">
		<!--try Slider banner Start-->
		<div class="try_banner_slider_wrapper" >
			<div class="try_circle_first">
				<img src="images/header/right_cycle1.png" alt="circle">
			</div>
			<div class="try_circle_second">
				<img src="images/header/right_cycle2.png" alt="circle">
			</div>
			<div class="try_banner_slider_inner_wrapper">
				<div id="carousel-example-generic2" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="carousel-captions caption-1">
								<div class="container">
									<div class="row">
										<div class="col-lg-5 col-md-6 col-sm-5 col-xs-8">
											<div class="try_slider_img_Wrapper try_mob_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/banner_mob1.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-6 col-lg-offset-1 col-md-6 col-sm-7 col-xs-12">
											<div class="content try_slider_banner_cont">
												
												<h2 data-animation="animated fadeInUp">Samsung Galaxy A51</h2>
												<ul data-animation="animated fadeInUp">
													<li><span class="try_banner_detail_left_part">- Perf.</span>  <span class="try_banner_detail_right_part">Octa-core (4x2.3 GHz Cortex-A73 & 4x1.7 GHz Cortex-A53) - Graphics: Mali-G72 MP3</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Display</span>  <span class="try_banner_detail_right_part"> 6.5 inches Super AMOLED capacitive touchscreen w/ Corning Gorilla Glass 3 - Resolution: 1080 x 2400 pixels</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Storage</span>  <span class="try_banner_detail_right_part">128GB</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Camera</span>  <span class="try_banner_detail_right_part">(128GB, 4GB) 6.5", 48MP Quad Camera</span>
													</li>
													
													</li>
													<li><span class="try_banner_detail_left_part">- Ram</span>  <span class="try_banner_detail_right_part">4 GB</span>
													</li>
												</ul>
												<p data-animation="animated fadeInUp">Price : $279.95</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
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
										<div class="col-lg-5 col-md-6 col-sm-5 col-xs-8">
											<div class="try_slider_img_Wrapper try_mob_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/banner_mob1.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-6 col-lg-offset-1 col-md-6 col-sm-7 col-xs-12">
											<div class="content try_slider_banner_cont">
												<h3 data-animation="animated fadeInUp">(Dual Camera Phone)</h3>
												<h2 data-animation="animated fadeInUp">iPhone 8 Plus</h2>
												<ul data-animation="animated fadeInUp">
													<li><span class="try_banner_detail_left_part">- Perf.</span>  <span class="try_banner_detail_right_part">Hexa Core</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Display</span>  <span class="try_banner_detail_right_part">5.5" (13.97 cm)</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Storage</span>  <span class="try_banner_detail_right_part">256 GB</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Camera</span>  <span class="try_banner_detail_right_part">12 MP + 12MP</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Battery</span>  <span class="try_banner_detail_right_part">2675 mAh</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Ram</span>  <span class="try_banner_detail_right_part">3 GB</span>
													</li>
												</ul>
												<p data-animation="animated fadeInUp">Price : $1168.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
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
										<div class="col-lg-5 col-md-6 col-sm-5 col-xs-8">
											<div class="try_slider_img_Wrapper try_mob_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/banner_mob1.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-6 col-lg-offset-1 col-md-6 col-sm-7 col-xs-12">
											<div class="content try_slider_banner_cont">
												<h3 data-animation="animated fadeInUp">(Dual Camera Phone)</h3>
												<h2 data-animation="animated fadeInUp">iPhone 8 Plus</h2>
												<ul data-animation="animated fadeInUp">
													<li><span class="try_banner_detail_left_part">- Perf.</span>  <span class="try_banner_detail_right_part">Hexa Core</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Display</span>  <span class="try_banner_detail_right_part">5.5" (13.97 cm)</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Storage</span>  <span class="try_banner_detail_right_part">256 GB</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Camera</span>  <span class="try_banner_detail_right_part">12 MP + 12MP</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Battery</span>  <span class="try_banner_detail_right_part">2675 mAh</span>
													</li>
													<li><span class="try_banner_detail_left_part">- Ram</span>  <span class="try_banner_detail_right_part">3 GB</span>
													</li>
												</ul>
												<p data-animation="animated fadeInUp">Price : $1168.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic2" data-slide-to="0" class="active"><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic2" data-slide-to="1" class=""><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic2" data-slide-to="2" class=""><span class="number"></span>
							</li>
						</ol>
						<div class="carousel-nevigation">
							<a class="prev" href="#carousel-example-generic2" role="button" data-slide="prev">	<i class="flaticon-left-arrow"></i>
							</a>
							<a class="next" href="#carousel-example-generic2" role="button" data-slide="next"> <i class="flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try Slider banner End-->
		<!--try recent mobail Slider Start-->
		<div class="try_recent_mobail_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Nouveaux Produits</h2>
							<p><span class="try_left_dots"></span>Promotion <span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_rc_slider_inner_wrapper">
							<div class="owl-carousel owl-theme">
									 <c:forEach items="${ telephoneMobiles }" var="telephoneMobile" varStatus="status">
									    <div class="item">
											<div class="try_rc_mob_box_wrapper">

												<div class="try_rc_mob_img">
													<img height="175" src="<c:out value="${ telephoneMobile.getImage_produit() }" />"> 
													<h5>Nouveau</h5>
													<a href="#"><i class="fa fa-heart"></i></a>
												</div>
												<div class="try_rc_mob_img_cont">
													<h2> <c:out value="${ telephoneMobile.getNom_produit() }" />  </h2>
													<h3><c:out value="${ telephoneMobile.getDescription() }" /></h3>
												</div>
												<div class="try_rc_mob_img_cont_bottom">
													<p><c:out value="${ telephoneMobile.getPrix_produit() }" /> Ariary</p>
													<div class="try_mob_btn_wrapper">

													<c:choose>
													    <c:when test="${!empty sessionScope.id_membre}"><a  href="panier?id_produit=<c:out value="${ telephoneMobile.getId_produit() }" />">Ajouter au panier</a></c:when>
													    <c:when test="${empty sessionScope.id_membre}"><a  href="login" />Se connecter</a>
													    <p style="font-size: 15px;">vous devez vous connecter pour ajouter au panier</p>
														</c:when>
													</c:choose>	
													</div>
												</div>
											</div>
										</div>
									</c:forEach>						
							</div>
						</div>
					</div>
				</div>
			</div> <!-- barre de navigation -->
		</div>
	</div>
	<!--try recent mobail Slider End-->
	<!--try Slider banner Start-->
	<div id="Earphones" class="width_calc" >
		<div class="try_banner_erp_slider_wrapper" >
			<div class="try_banner_erp_img_overlay"></div>
			<div class="try_banner_erp_slider_inner_wrapper">
				<div id="carousel-example-generic3" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="carousel-captions caption-1">
								<div class="container">
									<div class="row">
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_erp_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Earphones)</h3>
												<h2 data-animation="animated fadeInUp">Bullets Wireless HD AudioEarphones</h2>
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $399.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_earp_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/erp.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_erp_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Earphones)</h3>
												<h2 data-animation="animated fadeInUp">Bullets Wireless HD Audio
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $399.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_earp_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/erp.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_erp_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Earphones)</h3>
												<h2 data-animation="animated fadeInUp">Bullets Wireless HD AudioEarphones</h2>
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $399.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_earp_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/erp.png" alt="mobail">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic3" data-slide-to="0" class="active"><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic3" data-slide-to="1" class=""><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic3" data-slide-to="2" class=""><span class="number"></span>
							</li>
						</ol>
						<div class="carousel-nevigation">
							<a class="prev" href="#carousel-example-generic3" role="button" data-slide="prev">	<i class="flaticon-left-arrow"></i>
							</a>
							<a class="next" href="#carousel-example-generic3" role="button" data-slide="next"> <i class="flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try Slider banner End-->
		<!--try sh section Start-->
		<div class="try_recent_mobail_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Telephones mobile</h2>
							<p><span class="try_left_dots"></span>offres<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_sh_main_section_wrapper">
							<div class="row">
								<c:forEach items="${ phones }" var="phone" varStatus="status">
									<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
										<div class="try_sh_main_box_wrapper">
											<div class="try_sh_img_wrapper">
												<img height="160" src="<c:out value="${ phone.getImage_produit() }" />"> 

												<h5>20%<br>OFF</h5>
												<a href="#"><i class="fa fa-heart"></i></a>
											</div>
											<div class="try_sh_img_cont_wrapper">
												<h3> <c:out value="${ phone.getNom_produit() }" />  </h3>
												<p><c:out value="${ phone.getPrix_produit() }" /> Ariary</p>
												<div class="try_sh_btn_wrapper">	
													<c:choose>
														<c:when test="${!empty sessionScope.id_membre}"><a  href="panier?id_produit=<c:out value="${ phone.getId_produit() }" />">Ajouter au panier</a></c:when>
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
									    <li class="page-item"><a class="page-link" href="home?page=${page}">Page</a></li>
									    <c:forEach items="${pagePhones}" var="pagePhone" varStatus="status">
									    	<li class="page-item"><a class="page-link" href="home?pagePhone=${pagePhone}"><c:out value="${pagePhone}" /></a></li>
									     </c:forEach>
									</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try sh section End-->
	<!--try Slider banner Start-->
	<div id="Earphones" class="width_calc" >
		<div class="try_banner_erp_slider_wrapper" >
			<div class="try_banner_erp_img_overlay"></div>
			<div class="try_banner_erp_slider_inner_wrapper">
				<div id="carousel-example-generic3" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="carousel-captions caption-1">
								<div class="container">
									<div class="row">
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_erp_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Earphones)</h3>
												<h2 data-animation="animated fadeInUp">Bullets Wireless HD AudioEarphones</h2>
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $399.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_earp_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/erp.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_erp_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Earphones)</h3>
												<h2 data-animation="animated fadeInUp">Bullets Wireless HD Audio
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $399.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_earp_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/erp.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_erp_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Earphones)</h3>
												<h2 data-animation="animated fadeInUp">Bullets Wireless HD AudioEarphones</h2>
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $399.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_earp_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/erp.png" alt="mobail">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic3" data-slide-to="0" class="active"><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic3" data-slide-to="1" class=""><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic3" data-slide-to="2" class=""><span class="number"></span>
							</li>
						</ol>
						<div class="carousel-nevigation">
							<a class="prev" href="#carousel-example-generic3" role="button" data-slide="prev">	<i class="flaticon-left-arrow"></i>
							</a>
							<a class="next" href="#carousel-example-generic3" role="button" data-slide="next"> <i class="flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try Slider banner End-->
		<!--try sh section Start-->
		<div class="try_recent_mobail_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Écouteurs intelligents</h2>
							<p><span class="try_left_dots"></span>offres<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_sh_main_section_wrapper">
							<div class="row">
								<c:forEach items="${ ecouteurs}" var="ecouteur" varStatus="status">
									<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
										<div class="try_sh_main_box_wrapper">
											<div class="try_sh_img_wrapper">
												<img height="160" src="<c:out value="${ ecouteur.getImage_produit() }" />"> 

												<h5>20%<br>OFF</h5>
												<a href="#"><i class="fa fa-heart"></i></a>
											</div>
											<div class="try_sh_img_cont_wrapper">
												<h3> <c:out value="${ ecouteur.getNom_produit() }" />  </h3>
												<p><c:out value="${ ecouteur.getPrix_produit() }" /> Ariary</p>
												<div class="try_sh_btn_wrapper">	
													<c:choose>
														<c:when test="${!empty sessionScope.id_membre}"><a  href="panier?id_produit=<c:out value="${ ecouteur.getId_produit() }" />">Ajouter au panier</a></c:when>
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
									    <li class="page-item"><a class="page-link" href="#">Page</a></li>
									    <c:forEach items="${pageEcouteurs}" var="pageEcouteur" varStatus="status">
									    	<li class="page-item"><a class="page-link" href="home?page=${pageEcouteur}"><c:out value="${pageEcouteur}" /></a></li>
									     </c:forEach>
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
	<div id="Led" class="width_calc">
		<div class="try_led_main_section_wrapper">
			<div class="try_led_img_overlay"></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_led_heading_wrapper">
							<h3>(Water Resistant Earphones)</h3>
							<h2>LED Smart TV 4K+HDR</h2>
							<p>Price : $5168.00</p>	<a href="#">Buy Now</a>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_led_img_wrapper">
							<img src="images/content/led_img.png" alt="img">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try led section End-->
		<!--try lt st section Start-->
		<div class="try_lt_st_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 try_lt_st_heading_wrapper">
						<div class="try_recent_mob_heading_wrapper">
							<h2>LED TV and 4K Smart TV</h2>
							<p><span class="try_left_dots"></span>25% OFF<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/st1.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>World's Thinnest LED TV</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$430</p>	<del>$550</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/st2.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>World's Thinnest LED TV</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$430</p>	<del>$550</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/st3.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>World's Thinnest LED TV</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$430</p>	<del>$550</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/st4.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>World's Thinnest LED TV</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$430</p>	<del>$550</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/st5.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>World's Thinnest LED TV</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$430</p>	<del>$550</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/st6.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>World's Thinnest LED TV</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$430</p>	<del>$550</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try lt st section End-->
	<!--try watch Slider banner Start-->
	<div id="Watch" class="width_calc" >
		<div class="try_banner_watch_slider_wrapper">
			<div class="try_circle_first">
				<img src="images/header/right_cycle1.png" alt="circle">
			</div>
			<div class="try_circle_second">
				<img src="images/header/right_cycle2.png" alt="circle">
			</div>
			<div class="try_banner_watch_slider_inner_wrapper">
				<div id="carousel-example-generic4" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="carousel-captions caption-1">
								<div class="container">
									<div class="row">
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_watch_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Watch)</h3>
												<h2 data-animation="animated fadeInUp">Bluetooth Smart WatchWith Camera</h2>
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $249.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-8">
											<div class="try_slider_img_Wrapper try_slider_watch_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/watch_img.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_watch_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Watch)</h3>
												<h2 data-animation="animated fadeInUp">Bluetooth Smart Watch With Camera</h2>
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $249.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-8">
											<div class="try_slider_img_Wrapper try_slider_watch_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/watch_img.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_watch_cont">
												<h3 data-animation="animated fadeInUp">(Water Resistant Watch)</h3>
												<h2 data-animation="animated fadeInUp">Bluetooth Smart WatchWith Camera</h2>
												<h4 data-animation="animated fadeInUp">
													Listening is a stress-free experience with the<br>feather-light in-ear chambers, weighing only 2 grams.
												</h4>
												<p data-animation="animated fadeInUp">Price : $249.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-5 col-xs-8">
											<div class="try_slider_img_Wrapper try_slider_watch_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/watch_img.png" alt="mobail">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic4" data-slide-to="0" class="active"><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic4" data-slide-to="1" class=""><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic4" data-slide-to="2" class=""><span class="number"></span>
							</li>
						</ol>
						<div class="carousel-nevigation">
							<a class="prev" href="#carousel-example-generic4" role="button" data-slide="prev">	<i class="flaticon-left-arrow"></i>
							</a>
							<a class="next" href="#carousel-example-generic4" role="button" data-slide="next"> <i class="flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try Slider banner End-->
		<!--try recent mobail Slider Start-->
		<div class="try_recent_mobail_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Smart Watches</h2>
							<p><span class="try_left_dots"></span>OFFERS<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_rc_slider_inner_wrapper">
							<div class="owl-carousel owl-theme">
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/swatch1.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>New Smart Watch</h2>
											<h3>(Camera & SIM Card Support)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/swatch2.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>New Smart Watch</h2>
											<h3>(Camera & SIM Card Support)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/swatch3.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>New Smart Watch</h2>
											<h3>(Camera & SIM Card Support)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/swatch4.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>New Smart Watch</h2>
											<h3>(Camera & SIM Card Support)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try recent mobail Slider End-->
	<!--try Slider banner Start-->
	<div id="MacBook" class="width_calc" >
		<div class="try_banner_mac_slider_wrapper">
			<div class="try_banner_erp_img_overlay"></div>
			<div class="try_banner_mac_slider_inner_wrapper">
				<div id="carousel-example-generic5" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="carousel-captions caption-1">
								<div class="container">
									<div class="row">
										<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_mac_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/macb.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_mac_cont">
												<h2 data-animation="animated fadeInUp">MacBook Air 2021Earphones</h2>
												<h4 data-animation="animated fadeInUp">
													(Core i5/8 GB/128 GB/33.78 cm (13.3 inch)/MacOS Sierra/Integrated Graphics)
												</h4>
												<p data-animation="animated fadeInUp">Price : $1102.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
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
										<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_mac_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/macb.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_mac_cont">
												<h2 data-animation="animated fadeInUp">MacBook Air 2021Earphones</h2>
												<h4 data-animation="animated fadeInUp">
													(Core i5/8 GB/128 GB/33.78 cm (13.3 inch)/MacOS Sierra/Integrated Graphics)
												</h4>
												<p data-animation="animated fadeInUp">Price : $1102.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
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
										<div class="col-lg-6 col-md-6 col-sm-8 col-xs-12">
											<div class="try_slider_img_Wrapper try_slider_mac_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/macb.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_mac_cont">
												<h2 data-animation="animated fadeInUp">MacBook Air 2021Earphones</h2>
												<h4 data-animation="animated fadeInUp">
													(Core i5/8 GB/128 GB/33.78 cm (13.3 inch)/MacOS Sierra/Integrated Graphics)
												</h4>
												<p data-animation="animated fadeInUp">Price : $1102.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic5" data-slide-to="0" class="active"><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic5" data-slide-to="1" class=""><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic5" data-slide-to="2" class=""><span class="number"></span>
							</li>
						</ol>
						<div class="carousel-nevigation">
							<a class="prev" href="#carousel-example-generic5" role="button" data-slide="prev">	<i class="flaticon-left-arrow"></i>
							</a>
							<a class="next" href="#carousel-example-generic5" role="button" data-slide="next"> <i class="flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try Slider banner End-->
		<!--try lt st section Start-->
		<div class="try_lt_st_main_wrapper" >
			<div class="container" >
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 try_lt_st_heading_wrapper">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Branded Laptops</h2>
							<p><span class="try_left_dots"></span>15% OFF<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp1.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp2.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp3.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp4.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp5.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp6.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp7.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
						<div class="try_rc_mob_box_wrapper try_lt_st_main_box_wrapper">
							<div class="try_rc_mob_img">
								<img src="images/content/lp8.png" alt="mobail">
								<h5>Sale</h5>
								<a href="#"><i class="fa fa-heart"></i></a>
							</div>
							<div class="try_rc_mob_img_cont">
								<h2>MacBook Air 2021</h2>
								<h3>(55’’, 43’’ , 32’’ Inches)</h3>
							</div>
							<div class="try_rc_mob_img_cont_bottom">
								<p>$1170</p>	<del>$1270</del>
								<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try lt st section End-->
	<!--try bank Slider banner Start-->
	<div id="power" class="width_calc" >
		<div class="try_banner_bank_slider_wrapper">
			<div class="try_circle_first">
				<img src="images/header/right_cycle1.png" alt="circle">
			</div>
			<div class="try_circle_second">
				<img src="images/header/right_cycle2.png" alt="circle">
			</div>
			<div class="try_banner_bank_slider_inner_wrapper">
				<div id="carousel-example-generic6" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="carousel-captions caption-1">
								<div class="container">
									<div class="row">
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_bank_cont">
												<h2 data-animation="animated fadeInUp">10000mAh Power Bank</h2>
												<h4 data-animation="animated fadeInUp">
													ype-C charging   |   High density batteries   |   Two-way fast charging   |   12.58mm thin
												</h4>
												<p data-animation="animated fadeInUp">Price : $68.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-7 col-xs-8">
											<div class="try_slider_img_Wrapper try_bank_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/pbank.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_bank_cont">
												<h2 data-animation="animated fadeInUp">10000mAh Power Bank</h2>
												<h4 data-animation="animated fadeInUp">
													ype-C charging   |   High density batteries   |   Two-way fast charging   |   12.58mm thin
												</h4>
												<p data-animation="animated fadeInUp">Price : $68.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-7 col-xs-8">
											<div class="try_slider_img_Wrapper try_bank_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/pbank.png" alt="mobail">
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
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_bank_cont">
												<h2 data-animation="animated fadeInUp">10000mAh Power Bank</h2>
												<h4 data-animation="animated fadeInUp">
													ype-C charging   |   High density batteries   |   Two-way fast charging   |   12.58mm thin
												</h4>
												<p data-animation="animated fadeInUp">Price : $68.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
										<div class="col-lg-5 col-md-5 col-sm-7 col-xs-8">
											<div class="try_slider_img_Wrapper try_bank_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/pbank.png" alt="mobail">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic6" data-slide-to="0" class="active"><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic6" data-slide-to="1" class=""><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic6" data-slide-to="2" class=""><span class="number"></span>
							</li>
						</ol>
						<div class="carousel-nevigation">
							<a class="prev" href="#carousel-example-generic6" role="button" data-slide="prev">	<i class="flaticon-left-arrow"></i>
							</a>
							<a class="next" href="#carousel-example-generic6" role="button" data-slide="next"> <i class="flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try bank Slider banner End-->
		<!--try recent mobail Slider Start-->
		<div class="try_recent_mobail_main_wrapper" style="">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Power Banks</h2>
							<p><span class="try_left_dots"></span>OFFERS<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_rc_slider_inner_wrapper">
							<div class="owl-carousel owl-theme">
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/bk1.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>MI-MKT MI6 White</h2>
											<h3>(20000 - mAh)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/bk2.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>MI-MKT MI6 White</h2>
											<h3>(20000 - mAh)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/bk3.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>MI-MKT MI6 White</h2>
											<h3>(20000 - mAh)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="item">
									<div class="try_rc_mob_box_wrapper">
										<div class="try_rc_mob_img">
											<img src="images/content/bk4.png" alt="mobail">
											<h5>Sale</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_rc_mob_img_cont">
											<h2>MI-MKT MI6 White</h2>
											<h3>(20000 - mAh)</h3>
										</div>
										<div class="try_rc_mob_img_cont_bottom">
											<p>$699</p>	<del>$799</del>
											<div class="try_mob_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--try recent mobail Slider End-->
	<!--try cam Slider banner Start-->
	<div id="Camera" class="width_calc" >
		<div class="try_banner_cam_slider_wrapper">
			<div class="try_banner_erp_img_overlay"></div>
			<div class="try_banner_cam_slider_inner_wrapper">
				<div id="carousel-example-generic7" class="carousel slide" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<div class="carousel-captions caption-1">
								<div class="container">
									<div class="row">
										<div class="col-lg-5 col-md-5 col-sm-7 col-xs-8">
											<div class="try_slider_img_Wrapper try_cam_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/cam.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_cam_cont">
												<h3 data-animation="animated fadeInUp">(w/ AF-P DX 18-55mm VR Digital SLR – Black)</h3>
												<h2 data-animation="animated fadeInUp">Camera D3300</h2>
												<h4 data-animation="animated fadeInUp">
													Life is full of surprising, joyful moments—momentsworth remembering.
												</h4>
												<p data-animation="animated fadeInUp">Price : $289.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
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
										<div class="col-lg-5 col-md-5 col-sm-7 col-xs-8">
											<div class="try_slider_img_Wrapper try_cam_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/cam.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_cam_cont">
												<h3 data-animation="animated fadeInUp">(w/ AF-P DX 18-55mm VR Digital SLR – Black)</h3>
												<h2 data-animation="animated fadeInUp">Camera D3300</h2>
												<h4 data-animation="animated fadeInUp">
													Life is full of surprising, joyful moments—momentsworth remembering.
												</h4>
												<p data-animation="animated fadeInUp">Price : $289.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
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
										<div class="col-lg-5 col-md-5 col-sm-7 col-xs-8">
											<div class="try_slider_img_Wrapper try_cam_slider_img_Wrapper" data-animation="animated bounceInUp">
												<img src="images/content/cam.png" alt="mobail">
											</div>
										</div>
										<div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
											<div class="content try_slider_banner_cam_cont">
												<h3 data-animation="animated fadeInUp">(w/ AF-P DX 18-55mm VR Digital SLR – Black)</h3>
												<h2 data-animation="animated fadeInUp">Camera D3300</h2>
												<h4 data-animation="animated fadeInUp">
													Life is full of surprising, joyful moments—momentsworth remembering.
												</h4>
												<p data-animation="animated fadeInUp">Price : $289.00</p>	<a href="#" data-animation="animated fadeInUp">Buy Now</a>
												<div class="clear"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic7" data-slide-to="0" class="active"><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic7" data-slide-to="1" class=""><span class="number"></span>
							</li>
							<li data-target="#carousel-example-generic7" data-slide-to="2" class=""><span class="number"></span>
							</li>
						</ol>
						<div class="carousel-nevigation">
							<a class="prev" href="#carousel-example-generic7" role="button" data-slide="prev">	<i class="flaticon-left-arrow"></i>
							</a>
							<a class="next" href="#carousel-example-generic7" role="button" data-slide="next"> <i class="flaticon-right-arrow"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--try cam Slider banner End-->
		<!--try sh section Start-->
		<div class="try_recent_mobail_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_recent_mob_heading_wrapper">
							<h2>Digital & Web Camera</h2>
							<p><span class="try_left_dots"></span>10% OFF<span class="try_right_dots"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="try_sh_main_section_wrapper">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="try_sh_main_box_wrapper">
										<div class="try_sh_img_wrapper">
											<img src="images/content/cam_s1.png" alt="img">
											<h5>20%<br>OFF</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_sh_img_cont_wrapper">
											<h3>Digital Shoot Camera</h3>
											<p>Price : $199</p>	<del>$259</del>
											<div class="try_sh_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="try_sh_main_box_wrapper">
										<div class="try_sh_img_wrapper">
											<img src="images/content/cam_s2.png" alt="img">
											<h5>20%<br>OFF</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_sh_img_cont_wrapper">
											<h3>Digital Shoot Camera</h3>
											<p>Price : $199</p>	<del>$259</del>
											<div class="try_sh_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="try_sh_main_box_wrapper">
										<div class="try_sh_img_wrapper">
											<img src="images/content/cam_s3.png" alt="img">
											<h5>20%<br>OFF</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_sh_img_cont_wrapper">
											<h3>Digital Shoot Camera</h3>
											<p>Price : $199</p>	<del>$259</del>
											<div class="try_sh_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
									<div class="try_sh_main_box_wrapper">
										<div class="try_sh_img_wrapper">
											<img src="images/content/cam_s4.png" alt="img">
											<h5>20%<br>OFF</h5>
											<a href="#"><i class="fa fa-heart"></i></a>
										</div>
										<div class="try_sh_img_cont_wrapper">
											<h3>Digital Shoot Camera</h3>
											<p>Price : $199</p>	<del>$259</del>
											<div class="try_sh_btn_wrapper">	<a href="#">Buy Now</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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