<?php
	class templates {
		
		public function getSession(){
			try{
				$template = $_GET['login'];
				
				if($template === "backend"){
					echo "logged in";
				}
				else if($template === "login"){ //If Connection successful, log in DB
					echo "login";
				}
			} catch(Exception $e){
				
			}
		}
		
		public function getCSS(){
			$GLOBALS = $GLOBALS;
			
			$DB = DB::getInstance();
			
			$html = '';
			$html .= '<!DOCTYPE html><html lang="en"><head>';
			
			
			$html .= '
			<style>
				:root {
				  --first-color: #FECE1A;
				  --Second-color: #181A1C;
				  --third-color: #F4F8F9;

				  --black-color: #000000;
				  --white-color: #FFF;
				  --gray-color: #f0f0f0;
				  
				  --error-color: #CF0000;
				}
			</style>
			';
			$DB = $DB->query("select * from ccp_style_design");
			foreach($DB->results() as $css) {
				$include_css = explode(",", $css->import_css);
				foreach($include_css as $include){
					$html .= '<link rel="stylesheet" type="text/css" href="'. $include .'" />';
				}
			}
			
			$DB = $DB->query("select * from ccp_style_design");
			foreach($DB->results() as $template) {
				$html .= '
					<meta charset=utf-8>
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<title>hello</title>
					<!-- Load Roboto font -->
					<link href="http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
					<!-- Load css styles -->
					</head>
					<body>
				';
			}
			/*
			  --first-color: ;
			  --Second-color: ;
			  --third-color: ;
			  --black-color: ;
			  --white-color: ;
			  --gray-color: ;
			  --error-color: ;
			*/
			echo $html;
		}
		public function getJS(){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			
			$DB = $DB->query("select * from ccp_script_code");
			foreach($DB->results() as $js) {
				$include_js = explode(",", $js->import_js);
				foreach($include_js as $include){
					$html .= '<script type="text/javascript" src="'. $include .'"></script>';
				}
			}
			
			echo $html;
		}
		public function getNavigation(){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			
			$html .= '
				<div class="navbar">
					<div class="navbar-inner">
						<div class="container">
							<a href="#" class="brand">
								<img src="images/logo.png" width="120" height="40" alt="Logo" />
								<!-- This is website logo -->
							</a>
							<!-- Navigation button, visible on small resolution -->
							<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
								<i class="icon-menu"></i>
							</button>
							<!-- Main navigation -->
							<div class="nav-collapse collapse pull-right">
								<ul class="nav" id="top-navigation">
									<li class="active"><a href="#home">Home</a></li>
									<li><a href="#service">Services</a></li>
									<li><a href="#portfolio">Portfolio</a></li>
									<li><a href="#about">About</a></li>
									<li><a href="#clients">Clients</a></li>
									<li><a href="#price">Price</a></li>
									<li><a href="#contact">Contact</a></li>
								</ul>
							</div>
							<!-- End main navigation -->
						</div>
					</div>
				</div>
			';
			
			echo $html;
		}
		public function getPage(){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			
			
			echo $html;
		}

		public function getFooter(){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			
			$html .= '
				<div class="footer">
					<p>&copy; 2013 Theme by Kegan Blake, and CCP Development</p>
				</div>
				<div class="scrollup">
					<a href="#">
						<i class="icon-up-open"></i>
					</a>
				</div>
			';
			templates::getJS();
			$html .= '</body></html>';
			echo $html;
		}

		public function getBanner($categoryID){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			$viewID = '';
			
			$DB = $DB->query("select * from ccp_banner_item where _category_id = '". $categoryID ."'");
			foreach($DB->results() as $banner) {
				$html .= '
					<div class="da-slide">
						<h2 class="fittext2">'. $banner->title .'</h2>
						<h4>'. $banner->sub_title .'</h4>
						'. $banner->content .'
						<div class="da-img">
							<img src="'. $banner->image .'" alt="image01" width="320">
						</div>
					</div>
				';
			}
			$DB = $DB->query("select * from ccp_banner_category where _id = '". $categoryID ."'");
			foreach($DB->results() as $bannerCategory) {
				$viewID .= $bannerCategory->view_id;
			}
			
			templates::getView($html, $viewID);
		}
		public function getContentCategory($categoryID){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			$viewID = '';
			
			//Get Content Category requested
			$DB = $DB->query("select * from ccp_content_items where _category_id = '". $categoryID ."'");
			foreach($DB->results() as $banner) {
				$html .= '';
				$viewID = $banner->view_id;
			}
			
			//get content Items related to Category
			templates::getContent($categoryID, $viewID);
		}
		public function getContent($categoryID, $viewID){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			
			//Get Content Items
			$DB = $DB->query("select * from ccp_content_items where _category_id = 1");
			foreach($DB->results() as $content) {
				$html .= $content->content;
			}
			
			
			//Send content Items into view
			templates::getView($html, $viewID);
			
		}
		public function getBlog($categoryID){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			$viewID = '';
			
			$DB = $DB->query("select * from ccp_banner_item where _category_id = '". $categoryID ."'");
			foreach($DB->results() as $banner) {
				$html .= '
					<div class="da-slide">
						<h2 class="fittext2">'. $banner->title .'</h2>
						<h4>'. $banner->sub_title .'</h4>
						'. $banner->content .'
						<div class="da-img">
							<img src="'. $banner->image .'" alt="image01" width="320">
						</div>
					</div>
				';
			}
			$DB = $DB->query("select * from ccp_banner_category where _id = '". $categoryID ."'");
			foreach($DB->results() as $bannerCategory) {
				$viewID .= $bannerCategory->view_id;
			}
			
			templates::getView($html, $viewID);
		}
		public function getForm($categoryID){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			$viewID = '';
			
			$DB = $DB->query("select * from ccp_banner_item where _category_id = '". $categoryID ."'");
			foreach($DB->results() as $banner) {
				$html .= '
					<div class="da-slide">
						<h2 class="fittext2">'. $banner->title .'</h2>
						<h4>'. $banner->sub_title .'</h4>
						'. $banner->content .'
						<div class="da-img">
							<img src="'. $banner->image .'" alt="image01" width="320">
						</div>
					</div>
				';
			}
			$DB = $DB->query("select * from ccp_banner_category where _id = '". $categoryID ."'");
			foreach($DB->results() as $bannerCategory) {
				$viewID .= $bannerCategory->view_id;
			}
			
			templates::getView($html, $viewID);
		}
		
		public function getView($viewContent, $viewID){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			
			$DB = $DB->query("select * from ccp_views_table where _id = '". $viewID ."'");
			foreach($DB->results() as $view) {//
			
				$html .= '
					'. $view->topWrapper .'
					'. $viewContent .'
					'. $view->bottomWrapper .'
					<script>'. $view->view_js .'</script>
					<style>'. $view->view_css .'</style>
					'. $view->bottomWrapper .'
				';
			}
			echo $html;
		}
		
		public function htmlBody(){
			$DB = DB::getInstance();
			
			templates::getCSS();
			templates::getNavigation();
			templates::getBanner('1');
			templates::getContentCategory('2');
			templates::getFooter();
		}
		
	}
?>