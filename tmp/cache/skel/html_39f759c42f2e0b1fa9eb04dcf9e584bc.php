<?php

/*
 * Squelette : ../plugins-dist/petitions/prive/configurer/petitionner.html
 * Date :      Mon, 08 Apr 2019 18:58:28 GMT
 * Compile :   Mon, 16 Sep 2019 12:17:12 GMT
 * Boucles :   
 */ 
//
// Fonction principale du squelette ../plugins-dist/petitions/prive/configurer/petitionner.html
// Temps de compilation total: 0.188 ms
//

function html_39f759c42f2e0b1fa9eb04dcf9e584bc($Cache, $Pile, $doublons = array(), $Numrows = array(), $SP = 0) {

	if (isset($Pile[0]["doublons"]) AND is_array($Pile[0]["doublons"]))
		$doublons = nettoyer_env_doublons($Pile[0]["doublons"]);

	$connect = '';
	$page = (
'<div class=\'ajax\'>
' .
executer_balise_dynamique('FORMULAIRE_ACTIVER_PETITION_ARTICLE',
	array(@$Pile[0]['id_article']),
	array('../plugins-dist/petitions/prive/configurer/petitionner.html','html_39f759c42f2e0b1fa9eb04dcf9e584bc','',2,$GLOBALS['spip_lang'])) .
'</div>');

	return analyse_resultat_skel('html_39f759c42f2e0b1fa9eb04dcf9e584bc', $Cache, $page, '../plugins-dist/petitions/prive/configurer/petitionner.html');
}
?>