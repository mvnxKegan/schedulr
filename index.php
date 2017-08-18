<?php
	require_once("engine/class/includes.php");
	$string = "<{-testing-}> <{-testing-}> <{-testing-}> <{-testing-}> <{-testing-}> <{-testing-}> <{-testing-}> <{-testing-}> ";
	$start = "<{-";
	$end = "-}>";
	
	$tags = tags::getTextBetweenTags();
	
	
?>