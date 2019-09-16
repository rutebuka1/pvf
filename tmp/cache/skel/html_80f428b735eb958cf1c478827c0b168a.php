<?php

/*
 * Squelette : squelettes/header.html
 * Date :      Mon, 16 Sep 2019 11:53:55 GMT
 * Compile :   Mon, 16 Sep 2019 12:14:11 GMT
 * Boucles :   
 */ 
//
// Fonction principale du squelette squelettes/header.html
// Temps de compilation total: 0.275 ms
//

function html_80f428b735eb958cf1c478827c0b168a($Cache, $Pile, $doublons = array(), $Numrows = array(), $SP = 0) {

	if (isset($Pile[0]["doublons"]) AND is_array($Pile[0]["doublons"]))
		$doublons = nettoyer_env_doublons($Pile[0]["doublons"]);

	$connect = '';
	$page = (
'<!DOCTYPE html>
<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="skldev">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>skldev</title>
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
		<!--
		CSS
		============================================= -->
		<link rel="stylesheet" href="css/linearicons.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/magnific-popup.css">
		<link rel="stylesheet" href="css/nice-select.css">
		<link rel="stylesheet" href="css/animate.min.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/jquery-ui.css">
		<link rel="stylesheet" href="css/main.css">
	</head>
	<body>
		<header>

			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-6 header-top-left no-padding">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							</ul>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-6 header-top-right no-padding">
							<ul>
								<li><a href="tel:+250782867020"><span class="lnr lnr-phone-handset"></span><span>+250788454914</span></a></li>
								<li><a href="mailto:skldev7@gmail.com"><span class="lnr lnr-envelope"></span><span>skldev7@gmail.com</span></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="logo-wrap">
				<div class="container">
					<div class="row justify-content-between align-items-center">
						<div class="col-lg-4 col-md-4 col-sm-12 logo-left no-padding">
							<a href="#">
								<!-- <img class="img-fluid" src="img/logo.png" alt=""> -->
								PVF Logo
							</a>
						</div>
						<div class="col-lg-8 col-md-8 col-sm-12 logo-right no-padding ads-banner">
							<img class="img-fluid" src="img/banner-ad.jpg" alt="">
						</div>
					</div>
				</div>
			</div>
			<div class="container main-menu" id="main-menu">
				<div class="row align-items-center justify-content-between">
					<nav id="nav-menu-container">
						<ul class="nav-menu">
							<li class="menu-active"><a href="' .
spip_htmlspecialchars(sinon($GLOBALS['meta']['adresse_site'],'.')) .
'">Ahabanza</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('1', 'rubrique', '', '', true))) .
'">Imyidagaduro</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('2', 'rubrique', '', '', true))) .
'">Imikino</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('3', 'rubrique', '', '', true))) .
'">Ikoranabuhanga</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('4', 'rubrique', '', '', true))) .
'">Ubukungu</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('5', 'rubrique', '', '', true))) .
'">Ubuzima</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('6', 'rubrique', '', '', true))) .
'">Urukundo</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('7', 'rubrique', '', '', true))) .
'">Iyobokamana</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('8', 'rubrique', '', '', true))) .
'">Cinema</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('9', 'rubrique', '', '', true))) .
'">Uburezi</a></li>
							<li><a href="' .
vider_url(urlencode_1738(generer_url_entite('10', 'rubrique', '', '', true))) .
'">Umuco</a></li>
						
					</ul>
					</nav><!-- #nav-menu-container -->
				<!-- 	<div class="navbar-right">
						<form class="Search">
							<input type="text" class="form-control Search-box" name="Search-box" id="Search-box" placeholder="Search">
							<label for="Search-box" class="Search-box-label">
								<span class="lnr lnr-magnifier"></span>
							</label>
							<span class="Search-close">
								<span class="lnr lnr-cross"></span>
							</span>
						</form>
					</div> -->
				</div>
			</div>
		</header>
    </html>
');

	return analyse_resultat_skel('html_80f428b735eb958cf1c478827c0b168a', $Cache, $page, 'squelettes/header.html');
}
?>