<?php
	//Get Configuration Details
	global $config;
	$config = parse_ini_file('engine/configuration/config.ini');
	
	//Start Session
	//Get Security Details
	//Get Log Information
	
	//Get Database Class, and start it
	require_once("engine/class/tags.php");
	
	//Get Template Information
	//require_once("engine/class/template.php");
	
	//Get Database Class, and start it
	require_once("engine/class/db.php");
	$DB = DB::getInstance();
	
	//Get Company Detail Class
	//Get Marketing Class
	//Get Social Media Manager Class
	//Get Communications Class
	//
	//
	//Find Custom Modules
?>