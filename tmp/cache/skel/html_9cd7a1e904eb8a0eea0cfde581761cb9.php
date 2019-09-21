<?php

/*
 * Squelette : squelettes/news.html
 * Date :      Sat, 21 Sep 2019 07:23:43 GMT
 * Compile :   Sat, 21 Sep 2019 07:44:31 GMT
 * Boucles :   _dt
 */ 

function BOUCLE_dthtml_9cd7a1e904eb8a0eea0cfde581761cb9(&$Cache, &$Pile, &$doublons, &$Numrows, $SP) {

	static $command = array();
	static $connect;
	$command['connect'] = $connect = '';
	if (!isset($command['table'])) {
		$command['table'] = 'articles';
		$command['id'] = '_dt';
		$command['from'] = array('articles' => 'spip_articles');
		$command['type'] = array();
		$command['groupby'] = array();
		$command['select'] = array("articles.id_article",
		"articles.titre",
		"articles.texte",
		"articles.lang");
		$command['orderby'] = array();
		$command['join'] = array();
		$command['limit'] = '';
		$command['having'] = 
			array();
	}
	$command['where'] = 
			array(
quete_condition_statut('articles.statut','publie,prop,prepa/auteur','publie',''), 
quete_condition_postdates('articles.date',''), 
			array('=', 'articles.id_article', sql_quote(@$Pile[0]['id_article'], '','bigint(21) NOT NULL AUTO_INCREMENT')));
	if (defined("_BOUCLE_PROFILER")) $timer = time()+(float)microtime();
	$t0 = "";
	// REQUETE
	$iter = IterFactory::create(
		"SQL",
		$command,
		array('squelettes/news.html','html_9cd7a1e904eb8a0eea0cfde581761cb9','_dt',10,$GLOBALS['spip_lang'])
	);
	if (!$iter->err()) {
	lang_select($GLOBALS['spip_lang']);
	$SP++;
	// RESULTATS
	while ($Pile[$SP]=$iter->fetch()) {

		lang_select_public($Pile[$SP]['lang'], '', $Pile[$SP]['titre']);
		$t0 .= (
'
								<div class="feature-img-thumb relative">
									<div class="overlay overlay-bg"></div>
									<img class="img-fluid" src="' .
extraire_attribut(
((!is_array($l = quete_logo('id_article', 'ON', $Pile[$SP]['id_article'],'', 0))) ? '':
 ("<img class=\"spip_logo spip_logos\" alt=\"\" src=\"$l[0]\"" . $l[2] .  ($l[1] ? " onmouseover=\"this.src='$l[1]'\" onmouseout=\"this.src='$l[0]'\"" : "") . ' />')),'src') .
'" alt="">
								</div>
								<div class="content-wrap">
									<ul class="tags mt-10">
										<li><a href="#">Food Habit</a></li>
									</ul>
									<a href="#">
										<h3>' .
interdire_scripts(supprimer_numero(typo($Pile[$SP]['titre']), "TYPO", $connect, $Pile[0])) .
'</h3>
									</a>
									<ul class="meta pb-20">
										<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
										<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
										<li><a href="#"><span class="lnr lnr-bubble"></span>06 </a></li>
									</ul>
									<p>
						              ' .
interdire_scripts(propre($Pile[$SP]['texte'], $connect, $Pile[0])) .
'
									</p>
									<p>
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus.
									</p>
								<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</blockquote>

								<div class="navigation-wrap justify-content-between d-flex">
									<a class="prev" href="#"><span class="lnr lnr-arrow-left"></span>Prev Post</a>
									<a class="next" href="#">Next Post<span class="lnr lnr-arrow-right"></span></a>
								</div>

								<div class="comment-sec-area">
									<div class="container">
										<div class="row flex-column">
											<h6>05 Comments</h6>
											<div class="comment-list">
												<div class="single-comment justify-content-between d-flex">
													<div class="user justify-content-between d-flex">
														<div class="thumb">
															<img src="img/blog/c1.jpg" alt="">
														</div>
														<div class="desc">
															<h5><a href="#">Emilly Blunt</a></h5>
															<p class="date">December 4, 2017 at 3:12 pm </p>
															<p class="comment">
																Never say goodbye till the end comes!
															</p>
														</div>
													</div>
													<div class="reply-btn">
														<a href="" class="btn-reply text-uppercase">reply</a>
													</div>
												</div>
											</div>
											<div class="comment-list left-padding">
												<div class="single-comment justify-content-between d-flex">
													<div class="user justify-content-between d-flex">
														<div class="thumb">
															<img src="img/blog/c2.jpg" alt="">
														</div>
														<div class="desc">
															<h5><a href="#">Emilly Blunt</a></h5>
															<p class="date">December 4, 2017 at 3:12 pm </p>
															<p class="comment">
																Never say goodbye till the end comes!
															</p>
														</div>
													</div>
													<div class="reply-btn">
														<a href="" class="btn-reply text-uppercase">reply</a>
													</div>
												</div>
											</div>
											<div class="comment-list">
												<div class="single-comment justify-content-between d-flex">
													<div class="user justify-content-between d-flex">
														<div class="thumb">
															<img src="img/blog/c3.jpg" alt="">
														</div>
														<div class="desc">
															<h5><a href="#">Emilly Blunt</a></h5>
															<p class="date">December 4, 2017 at 3:12 pm </p>
															<p class="comment">
																Never say goodbye till the end comes!
															</p>
														</div>
													</div>
													<div class="reply-btn">
														<a href="" class="btn-reply text-uppercase">reply</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="comment-form">
								<h4>Post Comment</h4>
								<form>
									<div class="form-group form-inline">
										<div class="form-group col-lg-6 col-md-12 name">
											<input type="text" class="form-control" id="name" placeholder="Enter Name" onfocus="this.placeholder = \'\'" onblur="this.placeholder = \'Enter Name\'">
										</div>
										<div class="form-group col-lg-6 col-md-12 email">
											<input type="email" class="form-control" id="email" placeholder="Enter email address" onfocus="this.placeholder = \'\'" onblur="this.placeholder = \'Enter email address\'">
										</div>
									</div>
									<div class="form-group">
										<input type="text" class="form-control" id="subject" placeholder="Subject" onfocus="this.placeholder = \'\'" onblur="this.placeholder = \'Subject\'">
									</div>
									<div class="form-group">
										<textarea class="form-control mb-10" rows="5" name="message" placeholder="Messege" onfocus="this.placeholder = \'\'" onblur="this.placeholder = \'Messege\'" required=""></textarea>
									</div>
									<a href="#" class="primary-btn text-uppercase">Post Comment</a>
								</form>
							</div>
              ');
		lang_select();
	}
	lang_select();
	$iter->free();
	}
	if (defined("_BOUCLE_PROFILER")
	AND 1000*($timer = (time()+(float)microtime())-$timer) > _BOUCLE_PROFILER)
		spip_log(intval(1000*$timer)."ms BOUCLE_dt @ squelettes/news.html","profiler"._LOG_AVERTISSEMENT);
	return $t0;
}

//
// Fonction principale du squelette squelettes/news.html
// Temps de compilation total: 0.328 ms
//

function html_9cd7a1e904eb8a0eea0cfde581761cb9($Cache, $Pile, $doublons = array(), $Numrows = array(), $SP = 0) {

	if (isset($Pile[0]["doublons"]) AND is_array($Pile[0]["doublons"]))
		$doublons = nettoyer_env_doublons($Pile[0]["doublons"]);

	$connect = '';
	$page = (

'<'.'?php echo recuperer_fond( ' . argumenter_squelette("header") . ', array(\'lang\' => ' . argumenter_squelette($GLOBALS["spip_lang"]) . '), array("compil"=>array(\'squelettes/news.html\',\'html_9cd7a1e904eb8a0eea0cfde581761cb9\',\'\',1,$GLOBALS[\'spip_lang\'])), _request("connect"));
?'.'>

		<div class="site-main-container">
			<section class="latest-post-area pb-120">
				<div class="container no-padding">
					<div class="row">
						<div class="col-lg-8 post-list">
							<!-- Start single-post Area -->
							<div class="single-post-wrap">
                ' .
BOUCLE_dthtml_9cd7a1e904eb8a0eea0cfde581761cb9($Cache, $Pile, $doublons, $Numrows, $SP) .
'
						</div>
						<!-- End single-post Area -->
					</div>
					<div class="col-lg-4">
						<div class="sidebars-area">
							<div class="single-sidebar-widget editors-pick-widget">
								<h6 class="title">Editor’s Pick</h6>
								<div class="editors-pick-post">
									<div class="feature-img-wrap relative">
										<div class="feature-img relative">
											<div class="overlay overlay-bg"></div>
											<img class="img-fluid" src="img/e1.jpg" alt="">
										</div>
									</div>
									<div class="details">
										<a href="image-post.html">
											<h4 class="mt-20">A Discount Toner Cartridge Is
											Better Than Ever.</h4>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
											<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span>06 </a></li>
										</ul>
										<p class="excert">
											Lorem ipsum dolor sit amet, consecteturadip isicing elit, sed do eiusmod tempor incididunt ed do eius.
										</p>
									</div>
									<div class="post-lists">
										<div class="single-post d-flex flex-row">
											<div class="thumb">
												<img src="img/e2.jpg" alt="">
											</div>
											<div class="detail">
												<a href="image-post.html"><h6>Help Finding Information
												Online is so easy</h6></a>
												<ul class="meta">
													<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
													<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
												</ul>
											</div>
										</div>
										<div class="single-post d-flex flex-row">
											<div class="thumb">
												<img src="img/e3.jpg" alt="">
											</div>
											<div class="detail">
												<a href="image-post.html"><h6>Compatible Inkjet Cartr
												world famous</h6></a>
												<ul class="meta">
													<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
													<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
												</ul>
											</div>
										</div>
										<div class="single-post d-flex flex-row">
											<div class="thumb">
												<img src="img/e4.jpg" alt="">
											</div>
											<div class="detail">
												<a href="image-post.html"><h6>5 Tips For Offshore Soft
												Development </h6></a>
												<ul class="meta">
													<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
													<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="single-sidebar-widget ads-widget">
								<img class="img-fluid" src="img/sidebar-ads.jpg" alt="">
							</div>
							<div class="single-sidebar-widget most-popular-widget">
								<h6 class="title">Most Popular</h6>
								<div class="single-list flex-row d-flex">
									<div class="thumb">
										<img src="' .
extraire_attribut(
((!is_array($l = quete_logo('id_article', 'ON', @$Pile[0]['id_article'],'', 0))) ? '':
 ("<img class=\"spip_logo spip_logos\" alt=\"\" src=\"$l[0]\"" . $l[2] .  ($l[1] ? " onmouseover=\"this.src='$l[1]'\" onmouseout=\"this.src='$l[0]'\"" : "") . ' />')),'src') .
'" alt="">
									</div>
									<div class="details">
										<a href="image-post.html">
											<h6>Help Finding Information
											Online is so easy</h6>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
										</ul>
									</div>
								</div>
								<div class="single-list flex-row d-flex">
									<div class="thumb">
										<img src="img/m2.jpg" alt="">
									</div>
									<div class="details">
										<a href="image-post.html">
											<h6>Compatible Inkjet Cartr
											world famous</h6>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
										</ul>
									</div>
								</div>
								<div class="single-list flex-row d-flex">
									<div class="thumb">
										<img src="img/m3.jpg" alt="">
									</div>
									<div class="details">
										<a href="image-post.html">
											<h6>5 Tips For Offshore Soft
											Development </h6>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
										</ul>
									</div>
								</div>
								<div class="single-list flex-row d-flex">
									<div class="thumb">
										<img src="img/m4.jpg" alt="">
									</div>
									<div class="details">
										<a href="image-post.html">
											<h6>5 Tips For Offshore Soft
											Development </h6>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="single-sidebar-widget social-network-widget">
								<h6 class="title">Social Networks</h6>
								<ul class="social-list">
									<li class="d-flex justify-content-between align-items-center fb">
										<div class="icons d-flex flex-row align-items-center">
											<i class="fa fa-facebook" aria-hidden="true"></i>
											<p>983 Likes</p>
										</div>
										<a href="#">Like our page</a>
									</li>
									<li class="d-flex justify-content-between align-items-center tw">
										<div class="icons d-flex flex-row align-items-center">
											<i class="fa fa-twitter" aria-hidden="true"></i>
											<p>983 Followers</p>
										</div>
										<a href="#">Follow Us</a>
									</li>
									<li class="d-flex justify-content-between align-items-center yt">
										<div class="icons d-flex flex-row align-items-center">
											<i class="fa fa-youtube-play" aria-hidden="true"></i>
											<p>983 Subscriber</p>
										</div>
										<a href="#">Subscribe</a>
									</li>
									<li class="d-flex justify-content-between align-items-center rs">
										<div class="icons d-flex flex-row align-items-center">
											<i class="fa fa-rss" aria-hidden="true"></i>
											<p>983 Subscribe</p>
										</div>
										<a href="#">Subscribe</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End latest-post Area -->
	</div>

' .

'<'.'?php echo recuperer_fond( ' . argumenter_squelette("footer") . ', array(\'lang\' => ' . argumenter_squelette($GLOBALS["spip_lang"]) . '), array("compil"=>array(\'squelettes/news.html\',\'html_9cd7a1e904eb8a0eea0cfde581761cb9\',\'\',304,$GLOBALS[\'spip_lang\'])), _request("connect"));
?'.'>
	<!-- End footer Area -->
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/mn-accordion.js"></script>
	<script src="js/jquery-ui.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
');

	return analyse_resultat_skel('html_9cd7a1e904eb8a0eea0cfde581761cb9', $Cache, $page, 'squelettes/news.html');
}
?>