<?php
class tags {
	function getTextBetweenTags($tag, $html, $strict=0){
	/*** a new dom object ***/
	$dom = new domDocument;

	/*** load the html into the object ***/
	if($strict==1) {
		$dom->loadXML($html);
	}
	else {
		$dom->loadHTML($html);
	}

	/*** discard white space ***/
	$dom->preserveWhiteSpace = false;

	/*** the tag by its tag name ***/
	$content = $dom->getElementsByTagname($tag);

	/*** the array to return ***/
	$out = array();
	foreach ($content as $item) {
		/*** add node value to the out array ***/
		$out[] = $item->nodeValue;
	}
	/*** return the results ***/
	return $out;
	}
	
}
?>