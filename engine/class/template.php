<?php
	class templates {
		public function htmlBody(){
			$DB = DB::getInstance();
			
			$html = '';
			$html .= '<!DOCTYPE html><html lang="en"><head>';
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
			$getContent = "select * from ccp_content_items where _category_id = 1";
			
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
			
			$DB = $DB->query($getContent);
			foreach($DB->results() as $content) {
				$html .= $content->content;
			}
			
			
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
			$DB = $DB->query("select * from ccp_script_code");
			foreach($DB->results() as $js) {
				$include_js = explode(",", $js->import_js);
				foreach($include_js as $include){
					$html .= '<script type="text/javascript" src="'. $include .'"></script>';
				}
			}
			$html .= '</body></html>';
			echo $html;
		}
	}
?>