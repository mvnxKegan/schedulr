<?php
	//GetConfig
	global $config;
	$config = parse_ini_file("engine/configuration/config.ini");


	// Include Base Classes
	require_once("engine/class/db.php");
	require_once("engine/class/template.php");
	// Get Class Instance's
	
	$ccs = templates::htmlBody();