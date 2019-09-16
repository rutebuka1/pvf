<?php

/*
 * Squelette : ../prive/squelettes/navigation/article_edit.html
 * Date :      Mon, 08 Apr 2019 18:48:14 GMT
 * Compile :   Mon, 16 Sep 2019 12:16:27 GMT
 * Boucles :   
 */ 
//
// Fonction principale du squelette ../prive/squelettes/navigation/article_edit.html
// Temps de compilation total: 0.014 ms
//

function html_dd0db58b6a04aeb208bca3e769d2c442($Cache, $Pile, $doublons = array(), $Numrows = array(), $SP = 0) {

	if (isset($Pile[0]["doublons"]) AND is_array($Pile[0]["doublons"]))
		$doublons = nettoyer_env_doublons($Pile[0]["doublons"]);

	$connect = '';
	$page = '';

	return analyse_resultat_skel('html_dd0db58b6a04aeb208bca3e769d2c442', $Cache, $page, '../prive/squelettes/navigation/article_edit.html');
}
?>