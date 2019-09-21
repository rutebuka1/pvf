<?php

/*
 * Squelette : squelettes/rubrique=1.html
 * Date :      Sat, 21 Sep 2019 07:28:46 GMT
 * Compile :   Sat, 21 Sep 2019 07:38:40 GMT
 * Boucles :   _imy, _lnews
 */ 

function BOUCLE_imyhtml_b654dc611e22c57b2185a44d1c5b8e20(&$Cache, &$Pile, &$doublons, &$Numrows, $SP) {

	static $command = array();
	static $connect;
	$command['connect'] = $connect = '';
	if (!isset($command['table'])) {
		$command['table'] = 'articles';
		$command['id'] = '_imy';
		$command['from'] = array('articles' => 'spip_articles');
		$command['type'] = array();
		$command['groupby'] = array();
		$command['select'] = array("articles.id_article",
		"articles.titre",
		"articles.texte",
		"articles.lang");
		$command['orderby'] = array();
		$command['where'] = 
			array(
quete_condition_statut('articles.statut','publie,prop,prepa/auteur','publie',''), 
quete_condition_postdates('articles.date',''), 
			array('=', 'articles.id_rubrique', "1"));
		$command['join'] = array();
		$command['limit'] = '';
		$command['having'] = 
			array();
	}
	if (defined("_BOUCLE_PROFILER")) $timer = time()+(float)microtime();
	$t0 = "";
	// REQUETE
	$iter = IterFactory::create(
		"SQL",
		$command,
		array('squelettes/rubrique=1.html','html_b654dc611e22c57b2185a44d1c5b8e20','_imy',15,$GLOBALS['spip_lang'])
	);
	if (!$iter->err()) {
	lang_select($GLOBALS['spip_lang']);
	$SP++;
	// RESULTATS
	while ($Pile[$SP]=$iter->fetch()) {

		lang_select_public($Pile[$SP]['lang'], '', $Pile[$SP]['titre']);
		$t0 .= (
'
									<div class="col-lg-5 post-left">
										<div class="feature-img relative">
											<div class="overlay overlay-bg"></div>
											<img class="img-fluid" src="' .
extraire_attribut(
((!is_array($l = quete_logo('id_article', 'ON', $Pile[$SP]['id_article'],'', 0))) ? '':
 ("<img class=\"spip_logo spip_logos\" alt=\"\" src=\"$l[0]\"" . $l[2] .  ($l[1] ? " onmouseover=\"this.src='$l[1]'\" onmouseout=\"this.src='$l[0]'\"" : "") . ' />')),'src') .
'" alt="">
										</div>

									</div>
									<div class="col-lg-7 post-right">
										<a href="?page=news&id_article=' .
$Pile[$SP]['id_article'] .
'">
											<h4>' .
interdire_scripts(supprimer_numero(typo($Pile[$SP]['titre']), "TYPO", $connect, $Pile[0])) .
'</h4>
										</a>
										<ul class="meta">
											<li><a href="#"><span class="lnr lnr-user"></span>Mark wiens</a></li>
											<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
											<li><a href="#"><span class="lnr lnr-bubble"></span>06 Comments</a></li>
										</ul>
										<p>
                                                ' .
interdire_scripts(couper(propre($Pile[$SP]['texte'], $connect, $Pile[0]),'190','...')) .
'
										</p>
                                    </div>
                                    ');
		lang_select();
	}
	lang_select();
	$iter->free();
	}
	if (defined("_BOUCLE_PROFILER")
	AND 1000*($timer = (time()+(float)microtime())-$timer) > _BOUCLE_PROFILER)
		spip_log(intval(1000*$timer)."ms BOUCLE_imy @ squelettes/rubrique=1.html","profiler"._LOG_AVERTISSEMENT);
	return $t0;
}


function BOUCLE_lnewshtml_b654dc611e22c57b2185a44d1c5b8e20(&$Cache, &$Pile, &$doublons, &$Numrows, $SP) {

	static $command = array();
	static $connect;
	$command['connect'] = $connect = '';
	if (!isset($command['table'])) {
		$command['table'] = 'articles';
		$command['id'] = '_lnews';
		$command['from'] = array('articles' => 'spip_articles');
		$command['type'] = array();
		$command['groupby'] = array();
		$command['select'] = array("articles.id_article",
		"articles.titre",
		"articles.lang");
		$command['orderby'] = array();
		$command['where'] = 
			array(
quete_condition_statut('articles.statut','publie,prop,prepa/auteur','publie',''), 
quete_condition_postdates('articles.date',''), 
			array('=', 'articles.id_rubrique', "1"));
		$command['join'] = array();
		$command['limit'] = '';
		$command['having'] = 
			array();
	}
	if (defined("_BOUCLE_PROFILER")) $timer = time()+(float)microtime();
	$t0 = "";
	// REQUETE
	$iter = IterFactory::create(
		"SQL",
		$command,
		array('squelettes/rubrique=1.html','html_b654dc611e22c57b2185a44d1c5b8e20','_lnews',120,$GLOBALS['spip_lang'])
	);
	if (!$iter->err()) {
	lang_select($GLOBALS['spip_lang']);
	$SP++;
	// RESULTATS
	while ($Pile[$SP]=$iter->fetch()) {

		lang_select_public($Pile[$SP]['lang'], '', $Pile[$SP]['titre']);
		$t0 .= (
'


									<div class="single-list flex-row d-flex">
										<div class="thumb">
											<img src="img/m4.jpg" alt="">
										</div>
										<div class="details">
											<a href="?page=news&id_article=' .
$Pile[$SP]['id_article'] .
'">
												<h6>' .
interdire_scripts(supprimer_numero(typo($Pile[$SP]['titre']), "TYPO", $connect, $Pile[0])) .
'</h6>
											</a>
											<ul class="meta">
												<li><a href="#"><span class="lnr lnr-calendar-full"></span>03 April, 2018</a></li>
												<li><a href="#"><span class="lnr lnr-bubble"></span>06</a></li>
											</ul>
										</div>
									</div>
									');
		lang_select();
	}
	lang_select();
	$iter->free();
	}
	if (defined("_BOUCLE_PROFILER")
	AND 1000*($timer = (time()+(float)microtime())-$timer) > _BOUCLE_PROFILER)
		spip_log(intval(1000*$timer)."ms BOUCLE_lnews @ squelettes/rubrique=1.html","profiler"._LOG_AVERTISSEMENT);
	return $t0;
}

//
// Fonction principale du squelette squelettes/rubrique=1.html
// Temps de compilation total: 1.028 ms
//

function html_b654dc611e22c57b2185a44d1c5b8e20($Cache, $Pile, $doublons = array(), $Numrows = array(), $SP = 0) {

	if (isset($Pile[0]["doublons"]) AND is_array($Pile[0]["doublons"]))
		$doublons = nettoyer_env_doublons($Pile[0]["doublons"]);

	$connect = '';
	$page = (

'<'.'?php echo recuperer_fond( ' . argumenter_squelette("header") . ', array(\'lang\' => ' . argumenter_squelette($GLOBALS["spip_lang"]) . '), array("compil"=>array(\'squelettes/rubrique=1.html\',\'html_b654dc611e22c57b2185a44d1c5b8e20\',\'\',1,$GLOBALS[\'spip_lang\'])), _request("connect"));
?'.'>

		<div class="site-main-container">

			<!-- Start latest-post Area -->
			<section class="latest-post-area pb-120">
				<div class="container no-padding">
					<div class="row">
						<div class="col-lg-8 post-list">
							<!-- Start latest-post Area -->
							<div class="latest-post-wrap">
								<h4 class="cat-title">Latest News</h4>

								<div class="single-latest-post row align-items-center">
                                        ' .
BOUCLE_imyhtml_b654dc611e22c57b2185a44d1c5b8e20($Cache, $Pile, $doublons, $Numrows, $SP) .
'
								</div>
								<div class="load-more">
									<a href="#" class="primary-btn">Load More Posts</a>
								</div>

							</div>
							<!-- End latest-post Area -->
						</div>
						<div class="col-lg-4">
							<div class="sidebars-area">
								<div class="single-sidebar-widget editors-pick-widget">
									<h6 class="title">Inkuru zamamaza</h6>
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
									' .
BOUCLE_lnewshtml_b654dc611e22c57b2185a44d1c5b8e20($Cache, $Pile, $doublons, $Numrows, $SP) .
'
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

'<'.'?php echo recuperer_fond( ' . argumenter_squelette("footer") . ', array(\'lang\' => ' . argumenter_squelette($GLOBALS["spip_lang"]) . '), array("compil"=>array(\'squelettes/rubrique=1.html\',\'html_b654dc611e22c57b2185a44d1c5b8e20\',\'\',180,$GLOBALS[\'spip_lang\'])), _request("connect"));
?'.'>
');

	return analyse_resultat_skel('html_b654dc611e22c57b2185a44d1c5b8e20', $Cache, $page, 'squelettes/rubrique=1.html');
}
?>