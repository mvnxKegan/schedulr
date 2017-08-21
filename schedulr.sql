-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2017 at 08:44 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schedulr`
--

-- --------------------------------------------------------

--
-- Table structure for table `ccp_banner_category`
--

CREATE TABLE `ccp_banner_category` (
  `_id` int(11) NOT NULL,
  `_order_by` varchar(255) DEFAULT NULL,
  `view_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_banner_item`
--

CREATE TABLE `ccp_banner_item` (
  `_id` int(11) NOT NULL,
  `_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_blog_category`
--

CREATE TABLE `ccp_blog_category` (
  `_id` int(11) NOT NULL,
  `_order_by` varchar(255) DEFAULT NULL,
  `view_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_blog_item`
--

CREATE TABLE `ccp_blog_item` (
  `_id` int(11) NOT NULL,
  `_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_content_category`
--

CREATE TABLE `ccp_content_category` (
  `_id` int(11) NOT NULL,
  `_parent_id` int(11) DEFAULT NULL,
  `_order_by` varchar(255) NOT NULL,
  `view_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccp_content_category`
--

INSERT INTO `ccp_content_category` (`_id`, `_parent_id`, `_order_by`, `view_id`, `title`, `description`) VALUES
(1, NULL, 'none', 0, 'banner', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ccp_content_items`
--

CREATE TABLE `ccp_content_items` (
  `_id` int(11) NOT NULL,
  `_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccp_content_items`
--

INSERT INTO `ccp_content_items` (`_id`, `_category_id`, `title`, `content`) VALUES
(1, 1, 'banner', '<div id="da-slider" class="da-slider">\r\n	<div class="triangle"></div>\r\n	<!-- mask elemet use for masking background image -->\r\n	<div class="mask"></div>\r\n	<!-- All slides centred in container element -->\r\n	<div class="container">\r\n		<!-- Start first slide -->\r\n		<div class="da-slide">\r\n			<h2 class="fittext2">Welcome to pluton theme</h2>\r\n			<h4>Clean & responsive</h4>\r\n			<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane.</p>\r\n			<a href="#" class="da-link button">Read more</a>\r\n			<div class="da-img">\r\n				<img src="engine/template/web/images/Slider01.png" alt="image01" width="320">\r\n			</div>\r\n		</div>\r\n		<!-- End first slide -->\r\n		<!-- Start second slide -->\r\n		<div class="da-slide">\r\n			<h2>Easy management</h2>\r\n			<h4>Easy to use</h4>\r\n			<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\r\n			<a href="#" class="da-link button">Read more</a>\r\n			<div class="da-img">\r\n				<img src="engine/template/web/images/Slider02.png" width="320" alt="image02">\r\n			</div>\r\n		</div>\r\n		<!-- End second slide -->\r\n		<!-- Start third slide -->\r\n		<div class="da-slide">\r\n			<h2>Revolution</h2>\r\n			<h4>Customizable</h4>\r\n			<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\r\n			<a href="#" class="da-link button">Read more</a>\r\n			<div class="da-img">\r\n				<img src="engine/template/web/images/Slider03.png" width="320" alt="image03">\r\n			</div>\r\n		</div>\r\n		<!-- Start third slide -->\r\n		<!-- Start cSlide navigation arrows -->\r\n		<div class="da-arrows">\r\n			<span class="da-arrows-prev"></span>\r\n			<span class="da-arrows-next"></span>\r\n		</div>\r\n		<!-- End cSlide navigation arrows -->\r\n	</div>\r\n</div>\r\n'),
(2, 1, 'number 2', '<div class="section primary-section" id="service">\r\n            <div class="container">\r\n                <!-- Start title section -->\r\n                <div class="title">\r\n                    <h1>What We Do?</h1>\r\n                    <!-- Section''s title goes here -->\r\n                    <p>Duis mollis placerat quam, eget laoreet tellus tempor eu. Quisque dapibus in purus in dignissim.</p>\r\n                    <!--Simple description for section goes here. -->\r\n                </div>\r\n                <div class="row-fluid">\r\n                    <div class="span4">\r\n                        <div class="centered service">\r\n                            <div class="circle-border zoom-in">\r\n                                <img class="img-circle" src="images/Service1.png" alt="service 1">\r\n                            </div>\r\n                            <h3>Modern Design</h3>\r\n                            <p>We Create Modern And Clean Theme For Your Business Company.</p>\r\n                        </div>\r\n                    </div>\r\n                    <div class="span4">\r\n                        <div class="centered service">\r\n                            <div class="circle-border zoom-in">\r\n                                <img class="img-circle" src="images/Service2.png" alt="service 2" />\r\n                            </div>\r\n                            <h3>Powerfull Theme</h3>\r\n                            <p>We Create Modern And Powerful Theme With Lots Animation And Features</p>\r\n                        </div>\r\n                    </div>\r\n                    <div class="span4">\r\n                        <div class="centered service">\r\n                            <div class="circle-border zoom-in">\r\n                                <img class="img-circle" src="images/Service3.png" alt="service 3">\r\n                            </div>\r\n                            <h3>Clean Code</h3>\r\n                            <p>We Create Modern And Powerful Html5 And CSS3 Code Easy For Read And Customize.</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        '),
(3, 1, 'number 3', ' <div class="section secondary-section " id="portfolio">\r\n            <div class="triangle"></div>\r\n            <div class="container">\r\n                <div class=" title">\r\n                    <h1>Have You Seen our Works?</h1>\r\n                    <p>Duis mollis placerat quam, eget laoreet tellus tempor eu. Quisque dapibus in purus in dignissim.</p>\r\n                </div>\r\n                <ul class="nav nav-pills">\r\n                    <li class="filter" data-filter="all">\r\n                        <a href="#noAction">All</a>\r\n                    </li>\r\n                    <li class="filter" data-filter="web">\r\n                        <a href="#noAction">Web</a>\r\n                    </li>\r\n                    <li class="filter" data-filter="photo">\r\n                        <a href="#noAction">Photo</a>\r\n                    </li>\r\n                    <li class="filter" data-filter="identity">\r\n                        <a href="#noAction">Identity</a>\r\n                    </li>\r\n                </ul>\r\n                <!-- Start details for portfolio project 1 -->\r\n                <div id="single-project">\r\n                    <div id="slidingDiv" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio01.png" alt="project 1" />\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 1 -->\r\n                    <!-- Start details for portfolio project 2 -->\r\n                    <div id="slidingDiv1" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio02.png" alt="project 2">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>Life is a song - sing it. Life is a game - play it. Life is a challenge - meet it. Life is a dream - realize it. Life is a sacrifice - offer it. Life is love - enjoy it.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 2 -->\r\n                    <!-- Start details for portfolio project 3 -->\r\n                    <div id="slidingDiv2" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio03.png" alt="project 3">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>How far you go in life depends on your being tender with the young, compassionate with the aged, sympathetic with the striving and tolerant of the weak and strong. Because someday in your life you will have been all of these.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 3 -->\r\n                    <!-- Start details for portfolio project 4 -->\r\n                    <div id="slidingDiv3" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio04.png" alt="project 4">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Project for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>Life''s but a walking shadow, a poor player, that struts and frets his hour upon the stage, and then is heard no more; it is a tale told by an idiot, full of sound and fury, signifying nothing.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 4 -->\r\n                    <!-- Start details for portfolio project 5 -->\r\n                    <div id="slidingDiv4" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio05.png" alt="project 5">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>We need to give each other the space to grow, to be ourselves, to exercise our diversity. We need to give each other space so that we may both give and receive such beautiful things as ideas, openness, dignity, joy, healing, and inclusion.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 5 -->\r\n                    <!-- Start details for portfolio project 6 -->\r\n                    <div id="slidingDiv5" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio06.png" alt="project 6">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>I went to the woods because I wished to live deliberately, to front only the essential facts of life, and see if I could not learn what it had to teach, and not, when I came to die, discover that I had not lived.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 6 -->\r\n                    <!-- Start details for portfolio project 7 -->\r\n                    <div id="slidingDiv6" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio07.png" alt="project 7">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>Always continue the climb. It is possible for you to do whatever you choose, if you first get to know who you are and are willing to work with a power that is greater than ourselves to do it.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 7 -->\r\n                    <!-- Start details for portfolio project 8 -->\r\n                    <div id="slidingDiv7" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio08.png" alt="project 8">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>What if you gave someone a gift, and they neglected to thank you for it - would you be likely to give them another? Life is the same way. In order to attract more of the blessings that life has to offer, you must truly appreciate what you already have.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 8 -->\r\n                    <!-- Start details for portfolio project 9 -->\r\n                    <div id="slidingDiv8" class="toggleDiv row-fluid single-project">\r\n                        <div class="span6">\r\n                            <img src="images/Portfolio09.png" alt="project 9">\r\n                        </div>\r\n                        <div class="span6">\r\n                            <div class="project-description">\r\n                                <div class="project-title clearfix">\r\n                                    <h3>Webste for Some Client</h3>\r\n                                    <span class="show_hide close">\r\n                                        <i class="icon-cancel"></i>\r\n                                    </span>\r\n                                </div>\r\n                                <div class="project-info">\r\n                                    <div>\r\n                                        <span>Client</span>Some Client Name</div>\r\n                                    <div>\r\n                                        <span>Date</span>July 2013</div>\r\n                                    <div>\r\n                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>\r\n                                    <div>\r\n                                        <span>Link</span>http://examplecomp.com</div>\r\n                                </div>\r\n                                <p>I learned that we can do anything, but we can''t do everything... at least not at the same time. So think of your priorities not in terms of what activities you do, but when you do them. Timing is everything.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <!-- End details for portfolio project 9 -->\r\n                    <ul id="portfolio-grid" class="thumbnails row">\r\n                        <li class="span4 mix web">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio01.png" alt="project 1">\r\n                                <a href="#single-project" class="more show_hide" rel="#slidingDiv">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix photo">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio02.png" alt="project 2">\r\n                                <a href="#single-project" class="show_hide more" rel="#slidingDiv1">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix identity">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio03.png" alt="project 3">\r\n                                <a href="#single-project" class="more show_hide" rel="#slidingDiv2">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix web">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio04.png" alt="project 4">\r\n                                <a href="#single-project" class="show_hide more" rel="#slidingDiv3">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix photo">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio05.png" alt="project 5">\r\n                                <a href="#single-project" class="show_hide more" rel="#slidingDiv4">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix identity">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio06.png" alt="project 6">\r\n                                <a href="#single-project" class="show_hide more" rel="#slidingDiv5">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix web">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio07.png" alt="project 7" />\r\n                                <a href="#single-project" class="show_hide more" rel="#slidingDiv6">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix photo">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio08.png" alt="project 8">\r\n                                <a href="#single-project" class="show_hide more" rel="#slidingDiv7">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                        <li class="span4 mix identity">\r\n                            <div class="thumbnail">\r\n                                <img src="images/Portfolio09.png" alt="project 9">\r\n                                <a href="#single-project" class="show_hide more" rel="#slidingDiv8">\r\n                                    <i class="icon-plus"></i>\r\n                                </a>\r\n                                <h3>Thumbnail label</h3>\r\n                                <p>Thumbnail caption...</p>\r\n                                <div class="mask"></div>\r\n                            </div>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        '),
(4, 1, 'number 3', '<div class="section primary-section" id="about">\r\n            <div class="triangle"></div>\r\n            <div class="container">\r\n                <div class="title">\r\n                    <h1>Who We Are?</h1>\r\n                    <p>Duis mollis placerat quam, eget laoreet tellus tempor eu. Quisque dapibus in purus in dignissim.</p>\r\n                </div>\r\n                <div class="row-fluid team">\r\n                    <div class="span4" id="first-person">\r\n                        <div class="thumbnail">\r\n                            <img src="images/Team1.png" alt="team 1">\r\n                            <h3>John Doe</h3>\r\n                            <ul class="social">\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-facebook-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-twitter-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-linkedin-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                            </ul>\r\n                            <div class="mask">\r\n                                <h2>Copywriter</h2>\r\n                                <p>When you stop expecting people to be perfect, you can like them for who they are.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class="span4" id="second-person">\r\n                        <div class="thumbnail">\r\n                            <img src="images/Team2.png" alt="team 1">\r\n                            <h3>John Doe</h3>\r\n                            <ul class="social">\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-facebook-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-twitter-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-linkedin-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                            </ul>\r\n                            <div class="mask">\r\n                                <h2>Designer</h2>\r\n                                <p>When you stop expecting people to be perfect, you can like them for who they are.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <div class="span4" id="third-person">\r\n                        <div class="thumbnail">\r\n                            <img src="images/Team3.png" alt="team 1">\r\n                            <h3>John Doe</h3>\r\n                            <ul class="social">\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-facebook-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-twitter-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                                <li>\r\n                                    <a href="">\r\n                                        <span class="icon-linkedin-circled"></span>\r\n                                    </a>\r\n                                </li>\r\n                            </ul>\r\n                            <div class="mask">\r\n                                <h2>Photographer</h2>\r\n                                <p>When you stop expecting people to be perfect, you can like them for who they are.</p>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class="about-text centered">\r\n                    <h3>About Us</h3>\r\n                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</p>\r\n                </div>\r\n                <h3>Skills</h3>\r\n                <div class="row-fluid">\r\n                    <div class="span6">\r\n                        <ul class="skills">\r\n                            <li>\r\n                                <span class="bar" data-width="80%"></span>\r\n                                <h3>Graphic Design</h3>\r\n                            </li>\r\n                            <li>\r\n                                <span class="bar" data-width="95%"></span>\r\n                                <h3>Html & Css</h3>\r\n                            </li>\r\n                            <li>\r\n                                <span class="bar" data-width="68%"></span>\r\n                                <h3>jQuery</h3>\r\n                            </li>\r\n                            <li>\r\n                                <span class="bar" data-width="70%"></span>\r\n                                <h3>Wordpress</h3>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                    <div class="span6">\r\n                        <div class="highlighted-box center">\r\n                            <h1>We''re Hiring</h1>\r\n                            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, ullamcorper suscipit lobortis nisl ut aliquip consequat. I learned that we can do anything, but we can''t do everything...</p>\r\n                            <button class="button button-sp">Join Us</button>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        '),
(5, 1, 'number 5', '<div class="section secondary-section">\r\n            <div class="triangle"></div>\r\n            <div class="container centered">\r\n                <p class="large-text">Elegance is not the abundance of simplicity. It is the absence of complexity.</p>\r\n                <a href="#" class="button">Purshase now</a>\r\n            </div>\r\n        </div>\r\n        '),
(6, 1, 'number 6', '<div id="clients">\r\n            <div class="section primary-section">\r\n                <div class="triangle"></div>\r\n                <div class="container">\r\n                    <div class="title">\r\n                        <h1>What Client Say?</h1>\r\n                        <p>Duis mollis placerat quam, eget laoreet tellus tempor eu. Quisque dapibus in purus in dignissim.</p>\r\n                    </div>\r\n                    <div class="row">\r\n                        <div class="span4">\r\n                            <div class="testimonial">\r\n                                <p>"I''ve worked too hard and too long to let anything stand in the way of my goals. I will not let my teammates down and I will not let myself down."</p>\r\n                                <div class="whopic">\r\n                                    <div class="arrow"></div>\r\n                                    <img src="images/Client1.png" class="centered" alt="client 1">\r\n                                    <strong>John Doe\r\n                                        <small>Client</small>\r\n                                    </strong>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="span4">\r\n                            <div class="testimonial">\r\n                                <p>"In motivating people, you''ve got to engage their minds and their hearts. I motivate people, I hope, by example - and perhaps by excitement, by having productive ideas to make others feel involved."</p>\r\n                                <div class="whopic">\r\n                                    <div class="arrow"></div>\r\n                                    <img src="images/Client2.png" class="centered" alt="client 2">\r\n                                    <strong>John Doe\r\n                                        <small>Client</small>\r\n                                    </strong>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                        <div class="span4">\r\n                            <div class="testimonial">\r\n                                <p>"Determine never to be idle. No person will have occasion to complain of the want of time who never loses any. It is wonderful how much may be done if we are always doing."</p>\r\n                                <div class="whopic">\r\n                                    <div class="arrow"></div>\r\n                                    <img src="images/Client3.png" class="centered" alt="client 3">\r\n                                    <strong>John Doe\r\n                                        <small>Client</small>\r\n                                    </strong>\r\n                                </div>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                    <p class="testimonial-text">\r\n                        "Perfection is Achieved Not When There Is Nothing More to Add, But When There Is Nothing Left to Take Away"\r\n                    </p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class="section third-section">\r\n            <div class="container centered">\r\n                <div class="sub-section">\r\n                    <div class="title clearfix">\r\n                        <div class="pull-left">\r\n                            <h3>Our Clients</h3>\r\n                        </div>\r\n                        <ul class="client-nav pull-right">\r\n                            <li id="client-prev"></li>\r\n                            <li id="client-next"></li>\r\n                        </ul>\r\n                    </div>\r\n                    <ul class="row client-slider" id="clint-slider">\r\n                        <li>\r\n                            <a href="">\r\n                                <img src="images/clients/ClientLogo01.png" alt="client logo 1">\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href="">\r\n                                <img src="images/clients/ClientLogo02.png" alt="client logo 2">\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href="">\r\n                                <img src="images/clients/ClientLogo03.png" alt="client logo 3">\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href="">\r\n                                <img src="images/clients/ClientLogo04.png" alt="client logo 4">\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href="">\r\n                                <img src="images/clients/ClientLogo05.png" alt="client logo 5">\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href="">\r\n                                <img src="images/clients/ClientLogo02.png" alt="client logo 6">\r\n                            </a>\r\n                        </li>\r\n                        <li>\r\n                            <a href="">\r\n                                <img src="images/clients/ClientLogo04.png" alt="client logo 7">\r\n                            </a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        '),
(7, 1, 'number 7', ' <div id="price" class="section secondary-section">\r\n            <div class="container">\r\n                <div class="title">\r\n                    <h1>Price</h1>\r\n                    <p>Duis mollis placerat quam, eget laoreet tellus tempor eu. Quisque dapibus in purus in dignissim.</p>\r\n                </div>\r\n                <div class="price-table row-fluid">\r\n                    <div class="span4 price-column">\r\n                        <h3>Basic</h3>\r\n                        <ul class="list">\r\n                            <li class="price">$19,99</li>\r\n                            <li><strong>Free</strong> Setup</li>\r\n                            <li><strong>24/7</strong> Support</li>\r\n                            <li><strong>5 GB</strong> File Storage</li>\r\n                        </ul>\r\n                        <a href="#" class="button button-ps">BUY</a>\r\n                    </div>\r\n                    <div class="span4 price-column">\r\n                        <h3>Pro</h3>\r\n                        <ul class="list">\r\n                            <li class="price">$39,99</li>\r\n                            <li><strong>Free</strong> Setup</li>\r\n                            <li><strong>24/7</strong> Support</li>\r\n                            <li><strong>25 GB</strong> File Storage</li>\r\n                        </ul>\r\n                        <a href="#" class="button button-ps">BUY</a>\r\n                    </div>\r\n                    <div class="span4 price-column">\r\n                        <h3>Premium</h3>\r\n                        <ul class="list">\r\n                            <li class="price">$79,99</li>\r\n                            <li><strong>Free</strong> Setup</li>\r\n                            <li><strong>24/7</strong> Support</li>\r\n                            <li><strong>50 GB</strong> File Storage</li>\r\n                        </ul>\r\n                        <a href="#" class="button button-ps">BUY</a>\r\n                    </div>\r\n                </div>\r\n                <div class="centered">\r\n                    <p class="price-text">We Offer Custom Plans. Contact Us For More Info.</p>\r\n                    <a href="#contact" class="button">Contact Us</a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        '),
(8, 1, 'number 8', '<div class="section third-section">\r\n            <div class="container newsletter">\r\n                <div class="sub-section">\r\n                    <div class="title clearfix">\r\n                        <div class="pull-left">\r\n                            <h3>Newsletter</h3>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div id="success-subscribe" class="alert alert-success invisible">\r\n                    <strong>Well done!</strong>You successfully subscribet to our newsletter.</div>\r\n                <div class="row-fluid">\r\n                    <div class="span5">\r\n                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>\r\n                    </div>\r\n                    <div class="span7">\r\n                        <form class="inline-form">\r\n                            <input type="email" name="email" id="nlmail" class="span8" placeholder="Enter your email" required />\r\n                            <button id="subscribe" class="button button-sp">Subscribe</button>\r\n                        </form>\r\n                        <div id="err-subscribe" class="error centered">Please provide valid email address.</div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        ');
INSERT INTO `ccp_content_items` (`_id`, `_category_id`, `title`, `content`) VALUES
(9, 1, 'number 9', '<div id="contact" class="contact">\r\n            <div class="section secondary-section">\r\n                <div class="container">\r\n                    <div class="title">\r\n                        <h1>Contact Us</h1>\r\n                        <p>Duis mollis placerat quam, eget laoreet tellus tempor eu. Quisque dapibus in purus in dignissim.</p>\r\n                    </div>\r\n                </div>\r\n                <div class="map-wrapper">\r\n                    <div class="map-canvas" id="map-canvas">Loading map...</div>\r\n                    <div class="container">\r\n                        <div class="row-fluid">\r\n                            <div class="span5 contact-form centered">\r\n                                <h3>Say Hello</h3>\r\n                                <div id="successSend" class="alert alert-success invisible">\r\n                                    <strong>Well done!</strong>Your message has been sent.</div>\r\n                                <div id="errorSend" class="alert alert-error invisible">There was an error.</div>\r\n                                <form id="contact-form" action="php/mail.php">\r\n                                    <div class="control-group">\r\n                                        <div class="controls">\r\n                                            <input class="span12" type="text" id="name" name="name" placeholder="* Your name..." />\r\n                                            <div class="error left-align" id="err-name">Please enter name.</div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class="control-group">\r\n                                        <div class="controls">\r\n                                            <input class="span12" type="email" name="email" id="email" placeholder="* Your email..." />\r\n                                            <div class="error left-align" id="err-email">Please enter valid email adress.</div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class="control-group">\r\n                                        <div class="controls">\r\n                                            <textarea class="span12" name="comment" id="comment" placeholder="* Comments..."></textarea>\r\n                                            <div class="error left-align" id="err-comment">Please enter your comment.</div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <div class="control-group">\r\n                                        <div class="controls">\r\n                                            <button id="send-mail" class="message-btn">Send message</button>\r\n                                        </div>\r\n                                    </div>\r\n                                </form>\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class="container">\r\n                    <div class="span9 center contact-info">\r\n                        <p>123 Fifth Avenue, 12th,Belgrade,SRB 11000</p>\r\n                        <p class="info-mail">ourstudio@somemail.com</p>\r\n                        <p>+11 234 567 890</p>\r\n                        <p>+11 286 543 850</p>\r\n                        <div class="title">\r\n                            <h3>We Are Social</h3>\r\n                        </div>\r\n                    </div>\r\n                    <div class="row-fluid centered">\r\n                        <ul class="social">\r\n                            <li>\r\n                                <a href="">\r\n                                    <span class="icon-facebook-circled"></span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href="">\r\n                                    <span class="icon-twitter-circled"></span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href="">\r\n                                    <span class="icon-linkedin-circled"></span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href="">\r\n                                    <span class="icon-pinterest-circled"></span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href="">\r\n                                    <span class="icon-dribbble-circled"></span>\r\n                                </a>\r\n                            </li>\r\n                            <li>\r\n                                <a href="">\r\n                                    <span class="icon-gplus-circled"></span>\r\n                                </a>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        ');

-- --------------------------------------------------------

--
-- Table structure for table `ccp_email_templates`
--

CREATE TABLE `ccp_email_templates` (
  `_id` int(11) NOT NULL,
  `_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `subject` varchar(255) NOT NULL,
  `email_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_email_template_category`
--

CREATE TABLE `ccp_email_template_category` (
  `_id` int(11) NOT NULL,
  `_parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_form_category`
--

CREATE TABLE `ccp_form_category` (
  `_id` int(11) NOT NULL,
  `_parent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_form_template`
--

CREATE TABLE `ccp_form_template` (
  `_id` int(11) NOT NULL,
  `form_category_id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `fields` text NOT NULL,
  `email_to` text NOT NULL,
  `email_cc` text,
  `email_bcc` text,
  `send_client` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_pages`
--

CREATE TABLE `ccp_pages` (
  `_id` int(11) NOT NULL,
  `_content_category_id` int(11) NOT NULL,
  `_banner_category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url_key` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccp_pages`
--

INSERT INTO `ccp_pages` (`_id`, `_content_category_id`, `_banner_category_id`, `title`, `url_key`, `description`) VALUES
(1, 1, 1, 'Home Page', 'home', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ccp_script_code`
--

CREATE TABLE `ccp_script_code` (
  `_id` int(11) NOT NULL,
  `_template_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `import_js` text,
  `custom_js` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccp_script_code`
--

INSERT INTO `ccp_script_code` (`_id`, `_template_id`, `title`, `import_js`, `custom_js`) VALUES
(1, 1, 'plunten Theme', ',engine/template/web/js/jquery.js,\r\nengine/template/web/js/jquery.mixitup.js, \r\nengine/template/web/js/bootstrap.js,\r\nengine/template/web/js/modernizr.custom.js,\r\nengine/template/web/js/jquery.bxslider.js,\r\nengine/template/web/js/jquery.cslider.js,\r\nengine/template/web/js/jquery.placeholder.js,\r\nengine/template/web/js/jquery.inview.js,\r\nengine/template/web/js/app.js', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ccp_style_design`
--

CREATE TABLE `ccp_style_design` (
  `_id` int(11) NOT NULL,
  `_template_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `import_css` text NOT NULL,
  `max_device_width_42mm` longtext,
  `max_device_width_218px` longtext,
  `max_device_width_480px` longtext,
  `max_device_width_568px` longtext,
  `max_device_width_667px` longtext,
  `max_device_width_736px` longtext,
  `max_device_width_799px` longtext,
  `max_device_width_800px` longtext,
  `max_device_width_1024px` longtext,
  `max_device_width_1280px` longtext,
  `max_device_width_1600px` longtext,
  `max_device_width_2000px` longtext,
  `generic` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccp_style_design`
--

INSERT INTO `ccp_style_design` (`_id`, `_template_id`, `title`, `import_css`, `max_device_width_42mm`, `max_device_width_218px`, `max_device_width_480px`, `max_device_width_568px`, `max_device_width_667px`, `max_device_width_736px`, `max_device_width_799px`, `max_device_width_800px`, `max_device_width_1024px`, `max_device_width_1280px`, `max_device_width_1600px`, `max_device_width_2000px`, `generic`) VALUES
(1, 1, 'plunten Theme', ',engine/template/web/css/bootstrap.css,\r\nengine/template/web/css/bootstrap-responsive.css,\r\nengine/template/web/css/style.css,\r\nengine/template/web/css/pluton.css,\r\nengine/template/web/css/jquery.cslider.css,\r\nengine/template/web/css/animate.css', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ccp_template`
--

CREATE TABLE `ccp_template` (
  `_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `gui_type` enum('0','1') NOT NULL,
  `active` enum('0','1') NOT NULL,
  `site_name` varchar(15) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `refresh` varchar(255) NOT NULL,
  `viewport` varchar(255) NOT NULL,
  `base_url` varchar(255) NOT NULL,
  `color_1` varchar(10) NOT NULL,
  `color_2` varchar(10) NOT NULL,
  `color_3` varchar(255) NOT NULL,
  `color_4` varchar(255) NOT NULL,
  `color_5` varchar(255) NOT NULL,
  `color_6` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ccp_template`
--

INSERT INTO `ccp_template` (`_id`, `title`, `description`, `gui_type`, `active`, `site_name`, `favicon`, `logo`, `author`, `refresh`, `viewport`, `base_url`, `color_1`, `color_2`, `color_3`, `color_4`, `color_5`, `color_6`) VALUES
(1, 'pluton Theme', NULL, '1', '1', 'Schedulr', 'none', 'none', 'Kegan Blake', 'something', 'something', 'http://localhost:1104/schedulr/', 'black', 'white', 'black', 'white', 'black', 'white');

-- --------------------------------------------------------

--
-- Table structure for table `ccp_views_table`
--

CREATE TABLE `ccp_views_table` (
  `_id` int(11) NOT NULL,
  `_category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `preview` varchar(255) DEFAULT NULL,
  `view_js` text,
  `view_css` text,
  `view_wrapper_html` text,
  `funcction_php` text,
  `view_css_item_id` int(11) DEFAULT NULL,
  `view_css_item_class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ccp_view_category`
--

CREATE TABLE `ccp_view_category` (
  `_id` int(11) NOT NULL,
  `_parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ccp_banner_category`
--
ALTER TABLE `ccp_banner_category`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_banner_item`
--
ALTER TABLE `ccp_banner_item`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_blog_category`
--
ALTER TABLE `ccp_blog_category`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_blog_item`
--
ALTER TABLE `ccp_blog_item`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_content_category`
--
ALTER TABLE `ccp_content_category`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_content_items`
--
ALTER TABLE `ccp_content_items`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_email_templates`
--
ALTER TABLE `ccp_email_templates`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_email_template_category`
--
ALTER TABLE `ccp_email_template_category`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_form_category`
--
ALTER TABLE `ccp_form_category`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_form_template`
--
ALTER TABLE `ccp_form_template`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_pages`
--
ALTER TABLE `ccp_pages`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_script_code`
--
ALTER TABLE `ccp_script_code`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_style_design`
--
ALTER TABLE `ccp_style_design`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_template`
--
ALTER TABLE `ccp_template`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_views_table`
--
ALTER TABLE `ccp_views_table`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ccp_view_category`
--
ALTER TABLE `ccp_view_category`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ccp_form_category`
--
ALTER TABLE `ccp_form_category`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ccp_script_code`
--
ALTER TABLE `ccp_script_code`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ccp_style_design`
--
ALTER TABLE `ccp_style_design`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
--
-- AUTO_INCREMENT for table `ccp_views_table`
--
ALTER TABLE `ccp_views_table`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ccp_view_category`
--
ALTER TABLE `ccp_view_category`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
