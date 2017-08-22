<?php
	class templates {
		
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
			$content = '';
			
			//Open Header
			$html .= '<div class="navbar"><div class="navbar-inner"><div class="container">';
			
			//Get Header Logo
			$DB = $DB->query("select * from ccp_template");
			foreach($DB->results() as $template) {
				$html .= '<a href="'. $template->base_url .'" class="brand"><img src="'. $template->logo .'" width="120" height="40" alt="Logo" /></a>';
			}
			
			$html .= '<div class="nav-collapse collapse pull-right"><ul class="nav" id="top-navigation">';
			//Get Header Navigation
			$DB = $DB->query("select * from ccp_pages");
			foreach($DB->results() as $navigation) {
				$html .= '<li><a href="'. $navigation->url_key .'">'. $navigation->title .'</a></li>';
				$content .= templates::getPage($navigation->_id);
			}
			$html .= '</ul></div>';
			
			//Mobile Menu Button
			$html .= '
				<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<i class="icon-menu"></i>
				</button>
			';
			
			//Close Header
			$html .= '</div></div></div>';
			$html .= $content;
			echo $html;
		}
		public function getPage($pageID){
			$GLOBALS = $GLOBALS;
			$DB = DB::getInstance();
			$html = '';
			$viewID = '';
			$bannerItems = '';
			$pContent = '';
			$cContent = '';
			
			$DB = $DB->query("select * from ccp_pages where _id = '". $pageID ."'");
			foreach($DB->results() as $page) {
				//Get Banner Category View ID
				$DB = $DB->query("select * from ccp_banner_category where _id = '". $page->_banner_category_id ."'");
				foreach($DB->results() as $bannerCategory) {$viewID = $bannerCategory->view_id;}
				//Get Banner Items
				$DB = $DB->query("select * from ccp_banner_item where _category_id = '". $page->_banner_category_id ."'");
				foreach($DB->results() as $banner) {
					$bannerItems .= '
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
				//send through View
				$html .= templates::getView($bannerItems, $viewID);
				
				
				
				//Get Parent Content Category
				$DB = $DB->query("select * from ccp_content_category where _id = '". $page->_content_category_id ."'");
				if($DB->results()){
					foreach($DB->results() as $parentCategory) {
						$html .= '
							<div class="section primary-section" id="service">
								<div class="container">
									<div class="title">
										<h1>'. $parentCategory->title .'</h1>
										<p>'. $parentCategory->description .'</p>
									</div>
								</div>
							</div>
						';
						
						//Get Parent Content
						$DB = $DB->query("select * from ccp_content_items where _category_id = '". $parentCategory->_id ."'");
						if($DB->results()){
							foreach($DB->results() as $parentContent) {
								$pContent .= '
									<div class="span4">
										<div class="centered service">
											<div class="circle-border zoom-in">
												<img class="img-circle" src="'. $parentContent->content .'" alt="service 3">
											</div>
											'. $parentContent->content .'
										</div>
									</div>
								';
							}
						}
						//Send through View
						$viewID .= $parentCategory->view_id;
						$html .= templates::getView($pContent, $viewID);
					}
				}
				
				
			}
			
			return $html;
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
			return $html;
		}
		
		public function htmlBody(){
			$DB = DB::getInstance();
			
			templates::getCSS();
			templates::getNavigation();
			templates::getFooter();
		}
		
	}
?>