<?php

/*
 * Squelette : ../prive/objets/editer/liens.html
 * Date :      Mon, 08 Apr 2019 18:48:14 GMT
 * Compile :   Mon, 16 Sep 2019 12:17:12 GMT
 * Boucles :   
 */ 
//
// Fonction principale du squelette ../prive/objets/editer/liens.html
// Temps de compilation total: 0.182 ms
//

function html_693e253d23353590fd2ab64ccd85e5a2($Cache, $Pile, $doublons = array(), $Numrows = array(), $SP = 0) {

	if (isset($Pile[0]["doublons"]) AND is_array($Pile[0]["doublons"]))
		$doublons = nettoyer_env_doublons($Pile[0]["doublons"]);

	$connect = '';
	$page = (
(($t1 = strval(interdire_scripts((((entites_html(table_valeur(@$Pile[0], (string)'lien', null),true) == interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'objet', null),true)))) ?'' :' '))))!=='' ?
		($t1 . (	'
<div class="ajax">
	' .
	executer_balise_dynamique('FORMULAIRE_EDITER_LIENS',
	array(interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'table_source', null),true)),interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'objet', null),true)),interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'id_objet', null),true)),interdire_scripts(((entites_html(table_valeur(@$Pile[0], (string)'editable', null),true) == 'non') ? '':' '))),
	array('../prive/objets/editer/liens.html','html_693e253d23353590fd2ab64ccd85e5a2','',3,$GLOBALS['spip_lang'])) .
	'</div>
')) :
		'') .
(($t1 = strval(interdire_scripts((((entites_html(table_valeur(@$Pile[0], (string)'lien', null),true) == interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'objet', null),true)))) ?' ' :''))))!=='' ?
		($t1 . (	'
<div class="ajax">
	' .
	executer_balise_dynamique('FORMULAIRE_EDITER_LIENS',
	array(interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'objet', null),true)),interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'id_objet', null),true)),interdire_scripts(entites_html(table_valeur(@$Pile[0], (string)'table_source', null),true)),interdire_scripts(((entites_html(table_valeur(@$Pile[0], (string)'editable', null),true) == 'non') ? '':' '))),
	array('../prive/objets/editer/liens.html','html_693e253d23353590fd2ab64ccd85e5a2','',3,$GLOBALS['spip_lang'])) .
	'</div>
')) :
		''));

	return analyse_resultat_skel('html_693e253d23353590fd2ab64ccd85e5a2', $Cache, $page, '../prive/objets/editer/liens.html');
}
?>