<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="preview_dotnet_templates_newlook_index" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <title>TourTravel | One Page Responsive Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Css Files -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/plugins.css" rel="stylesheet" type="text/css">
    <link href="css/homePopup.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <link href="css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css">
    <link href="css/animate.css" rel="stylesheet" type="text/css">
    <!-- Font Awesome -->
    <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet'
        type='text/css'>
    <script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">
        </div>
    </div>
    <!--//Preloader -->
    <!-- #page -->
    <div id="page">
        <!-- header section -->
        <div id="topping">
        </div>
        <section id="top">
            <header> 
            	<div class="container">                                   
                    <!-- logo -->
                    <div id="logo">
                        <a href="#topping">Tour<strong>Travel</strong></a>
         			</div>
                    <!-- menu -->
                    <nav class="navmenu">
                        <ul>
                            <li class="scrollable"><a href="#topping">Home</a></li>  
                            <li class="scrollable"><a href="#about">About us</a></li>
                            <li class="scrollable"><a href="#services">Services</a></li>
                            <li class="scrollable"><a href="#staff">Staff</a></li>
                            <li class="scrollable"><a href="#portfolio">Gallery</a></li>      
                            <li class="scrollable"><a href="#contact">Contact</a></li>
                        </ul>
                    </nav><!-- end menu --> 
                    <div class="clear"></div>
            	</div>
            </header>               
        </section>
        <!-- //end header section -->
        <!-- home content -->
        <section id="home">
            	
        	<!--Slider-->
            <div class="full_slider">
                <div id="fullwidth_slider" class="flexslider">                	
                    <ul class="slides">
                        <li> 
                        	<div class="slideshow-overlay"></div>                                    
                            <img src="images/slider/1.jpg" alt="" class="slide_bg" />
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
                                    	Enjoy our Services
                                        <div class="title">TourTravel</div>
                                        <br>Ultimate Luxury
                                    </div>
                                </div>                              
                            </div>                        
                        </li>
                        <li>
                        	<div class="slideshow-overlay"></div>
                            <img src="images/slider/2.jpg" alt="" class="slide_bg" />                            	
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
	                                    Enjoy our Services
                                        <div class="title">Around World</div>
                                        <br>Ultimate Luxury
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="slideshow-overlay"></div>
                            <img src="images/slider/3.jpg" alt="" class="slide_bg" />                            	
                            <div class="full_slider_caption">
                                <div class="container">
                                	<div class="cont">
                                    	Enjoy our Services
                                        <div class="title">New Look</div>
                                        <br>Ultimate Luxury
                                    </div>
                                </div>
                            </div>
                        </li>                                                       
                    </ul>
                </div>
             </div>          
            <!--//Slider-->            
        </section>
        <!-- //end home content -->
        <!-- Tab Section -->
        <!-- // end tab section -->
        <!-- booking section -->
        <div class="color-container">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h3>
                            Trendy Now <small><a href="#">view all</a></small></h3>
                        <ul class="booking-list">
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_rio_internacional_de_luxe_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY RIO INTERNACIONAL de luxe" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                The London NYC</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-half-empty"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$230</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_serra_golf_library_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY SERRA GOLF library" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                The Benjamin</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$257</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_rio_internacional_rooftop_pool_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY RIO INTERNACIONAL rooftop pool" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                Warwick New York Hotel</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$322</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3>
                            Hot Deals <small><a href="#">view all</a></small></h3>
                        <ul class="booking-list">
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/lhotel_porto_bay_sao_paulo_suite_lhotel_living_room_800x600.jpg"
                                                alt="Image Alternative text" title="LHOTEL PORTO BAY SAO PAULO suite lhotel living room" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                Bryant Park Hotel</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-half-empty"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$480</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_serra_golf_suite_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY SERRA GOLF suite" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                The Kimberly Hotel</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$369</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_serra_golf_living_room_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY SERRA GOLF living room" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                Waldorf Astoria New York</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tour traveln class="booking-item-price">
                                            $278</TourTraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3>
                            Special for You <small><a href="#">view all</a></small></h3>
                        <ul class="booking-list">
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_rio_internacional_de_luxe_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY RIO INTERNACIONAL de luxe" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                The London NYC</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-half-empty"></i></li>
                                                <li><i class="fa fa-star-o"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$182</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_serra_golf_suite_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY SERRA GOLF suite" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                The Kimberly Hotel</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$267</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="booking-item booking-item-small">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <img src="images/hotel_porto_bay_serra_golf_library_800x600.jpg" alt="Image Alternative text"
                                                title="hotel PORTO BAY SERRA GOLF library" />
                                        </div>
                                        <div class="col-xs-5">
                                            <h5 class="booking-item-title">
                                                The Benjamin</h5>
                                            <ul class="icon-group booking-item-rating-stars">
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star"></i></li>
                                                <li><i class="fa fa-star-half-empty"></i></li>
                                            </ul>
                                        </div>
                                        <div class="col-xs-3">
                                            <tourtraveln class="booking-item-price-from">from</tourtraveln>
                                            <tourtraveln class="booking-item-price">$234</tourtraveln>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- // end booking section -->
        <!-- start content -->
        <section class="page_section">         
            <!-- section header -->
            <header class="head_section center_section">
                <div class="container">
                    <h1>Welcome to TourTravel</h1>
                    <div class="separator"></div>
                    <p>A travel document is an identity document issued by a government or international treaty organization to facilitate the movement of individuals or small groups of persons across international boundaries. Travel documents usually assure other governments that the bearer may return to the issuing country, and are often issued in booklet form to allow other governments to place visas as well as entry and exit stamps into them.</p>
                </div><!-- end .container -->
</header>
            <!-- //section header -->
                      
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/mal.jpg">
                                </div>
                                <h3>Book your next Malaysia holiday!</h3>
                                <div class="separator"></div>
                            	<p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/goa.jpg">
                                </div>
                                <h3>GOA Hotels</h3>
                                <div class="separator"></div>
                            	<p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="icon-banner">
                        	<a href="javascript:void(0);">
                                <div class="icon">
                                	<img alt="" src="images/ticket book.jpg">
                                </div>
                                <h3>Flight Tickets</h3>
                                <div class="separator"></div>
                            	<p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p>
                            </a>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end start content -->
        <!-- about content-->
        <section class="page_section" id="about">                     
            <!-- section content -->   
            <div class="container wow fadeInUp">            				
                <div class="about_block bg_gray mb30">                	              	
                    <div class="col_cont">                    	                     	
                        <div class="wrap_cont">                        	
                            <header class="head_section">                            	                         	
                            	<h2>Our Travel center</h2>
                                <TourTraveln>History</TourTraveln>
                              <div class="separator left"></div>                              	
                            </header>
                            <p>Whether you're taking a long vacation, working abroad or just looking for something out of the ordinary, with a multi-city ticket from STA Travel, you can travel further and discover more of this amazing planet.</p> 
							<p>Create a trip that is uniquely yours or choose from our sample Round the World and multi-stop routes. Whatever you're looking for, our travel experts can help you create your perfect multi-city adventure. </p>
                            <asp:HyperLink ID="rd1" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>                            
                        </div>
                    </div>                     
                    <div class="col_img"></div>	
                    <div class="clear"></div>
                </div>
            </div>                                	
			<!-- //section content --> 
        </section>
        <!-- //end about content-->
        <!-- services content -->
        <section class="page_section" id="services">
            <div class="container block-wrap wow fadeInUp">
            	<div class="row carousel-box">
                	<div class="col-md-3">
                    	<div class="control-block bg_black block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                           	  <h2>Our FEATURED</h2>
                                <Tour Traveln>SERVICES</Tour Traveln>
                              <div class="separator left"></div>
                            </header>
                            <p>Take a look at some of our favourite multi-stop and Round the World flights.</p>
							<p>We recommend the following order for journey and services:</p>
                        	<div class="customNavigation">
                            	<a class="btn-prev"><i class="fa fa-angle-left"></i></a>
                            	<a class="btn-next"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                    	<div class="owl-carousel">
                        	<div class="item-service block">                            	                       	 
								<img src="images/mal.jpg" alt="">
                            	<div class="cont">
                                    <h4>WHAT IS MULTI-STOP?</h4>
                                    <div class="separator"></div>
                                    <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                    <asp:HyperLink ID="rd2" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>
                                    
                                </div>
                            </div>
                            <div class="item-service block">
                            	<img src="images/goa.jpg" alt="">
                            	<div class="cont">
                                    <h4>CAN I STILL BOOK?</h4>
                                    <div class="separator"></div>
                                    <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                    <asp:HyperLink ID="rd3" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>
                                </div>
                            </div>
                            <div class="item-service block">                            
                            	<img src="images/ticket book.jpg" alt="">
                            	<div class="cont">
                                    <h4>FLY AROUND THE WORLD?</h4>
                                    <div class="separator"></div>
                                    <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good.</p>
                                    <asp:HyperLink ID="rd4" class="shortcode_button" runat="server" NavigateUrl="#">Read More</asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end services content-->
        <!-- team content -->
        <section class="page_section" id="staff">
            <div class="container block-wrap wow fadeInUp">
            	<div class="row carousel-box carousel-full">
                	<div class="col-md-3">
                    	<div class="control-block bg_colored block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                            	<Tour Traveln>Our Talented</Tour Traveln>
                            <h2>Staff</h2>
                                <div class="separator left"></div>
                            </header>
                            <p>Our experienced and talented staff will take care of you.</p>
                        	<div class="customNavigation">
                            	<a class="btn-prev"><i class="fa fa-angle-left"></i></a>
                            	<a class="btn-next"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                    	<div class="owl-carousel">
                            <div class="item-team">
                            	<div class="row">
                                    <div class="col-md-4 col-sm-4">
                                    	<div class="img block">
                                        	<img src="images/still.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8">
                                        <div class="cont block">
                                            <h4>DO I HAVE TO FLY AROUND THE WORLD?</h4>
                                            <div class="separator left"></div>
                                            <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good. </p>
											<p>We understand that everyone wants to see the world differently. If you want a traditional Round the World ticket, awesome, but if you want to focus on a smaller area and really do it justice, that’s cool too.</p>
                                            <div class="social">
                                            	<a href="#" class="soc-f">T</a>
                                                <a href="#" class="soc-t">r</a>
                                                <a href="#" class="soc-g">a</a>
                                                <a href="#" class="soc-n">v</a>
                                                <a href="#" class="soc-v">e</a>
                                                <a href="#" class="soc-r">l</a>
                                                <a href="#" class="soc-i">i</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> 
                            <div class="item-team">
                            	<div class="row">
                                    <div class="col-md-4 col-sm-4">
                                        <div class="img block">
                                        	<img src="images/still2.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8">
                                        <div class="cont block">
                                           <h4>DO I HAVE TO FLY AROUND THE WORLD?</h4>
                                            <div class="separator left"></div>
                                            <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good. </p>
											<p>We understand that everyone wants to see the world differently. If you want a traditional Round the World ticket, awesome, but if you want to focus on a smaller area and really do it justice, that’s cool too.</p>                                        <div class="social">
                                            	<a href="#" class="soc-f">T</a>
                                                <a href="#" class="soc-t">r</a>
                                                <a href="#" class="soc-g">a</a>
                                                <a href="#" class="soc-n">v</a>
                                                <a href="#" class="soc-v">e</a>
                                                <a href="#" class="soc-r">l</a>
                                                <a href="#" class="soc-i">i</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item-team">
                            	<div class="row">
                                    <div class="col-md-4 col-sm-4">
                                        <div class="img block">
                                        	<img src="images/still3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8">
                                        <div class="cont block">
                                             <h4>DO I HAVE TO FLY AROUND THE WORLD?</h4>
                                            <div class="separator left"></div>
                                            <p>If you’re asking whether you’ll disappear into the ether if your ticket doesn’t complete a full circuit of the Earth, then the answer is ‘no’, you’re good. </p>
											<p>We understand that everyone wants to see the world differently. If you want a traditional Round the World ticket, awesome, but if you want to focus on a smaller area and really do it justice, that’s cool too.</p>
                                            <div class="social">
                                            	<a href="#" class="soc-f">T</a>
                                                <a href="#" class="soc-t">r</a>
                                                <a href="#" class="soc-g">a</a>
                                                <a href="#" class="soc-n">v</a>
                                                <a href="#" class="soc-v">e</a>
                                                <a href="#" class="soc-r">l</a>
                                                <a href="#" class="soc-i">i</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end team content -->
        <!-- portfolio content-->
        <section class="page_section" id="portfolio">
            <!-- section header -->
            <header class="head_section center_section">
                <div class="container">
                    <h2>Our Awesome Services</h2>
                    <div class="separator"></div>
                    <p>Our unique airline partnerships mean you always get the lowest fares around with great flexibility.</p>
                </div><!-- end .container -->
</header>
            <!-- //section header --> 
            
            <!-- section content --> 
            <div class="portfolio-block">           
                <div class="container wow fadeInUp">
                    <ul class="portfolio-menu" id="filters">
                        <li class="active"><a data-filter="*">All</a></li>
                        <li><a data-filter=".fly">fly</a></li>
                        <li><a data-filter=".hotel">hotel</a></li>
                        <li><a data-filter=".air">air</a></li>
                        <li><a data-filter=".car">car</a></li>
                    </ul>
                    <div class="row portfolio-list image-grid">
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly air car">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>air fly</h4>
                                        <div class="separator"></div>
                                        <p>Traditional air fly.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 hotel air">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>cultur hotel</h4>
                                        <div class="separator"></div>
                                        <p>Traditional cultur hotel.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 air">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Legs fly</h4>
                                        <div class="separator"></div>
                                        <p>Traditional Legs fly.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 car air">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>car</h4>
                                        <div class="separator"></div>
                                        <p>car Style Hotels.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 hotel">
                           <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>cultur hotel</h4>
                                        <div class="separator"></div>
                                        <p>Special cultur hotel</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly hotel">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Traditional fly</h4>
                                        <div class="separator"></div>
                                        <p>Traditional fly.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 air hotel">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>air hotel</h4>
                                        <div class="separator"></div>
                                        <p>Total air hotel.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Traditional fly</h4>
                                        <div class="separator"></div>
                                        <p>Traditional Body fly</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="item col-md-4 col-sm-4 col-xs-12 fly car">
                            <a href="images/1.jpg" class="prettyPhoto" data-rel="prettyPhoto[portfolio55]">
                                <img src="images/1x.jpg" alt="">
                                <div class="caption">
                                    <div class="info">
                                        <h4>Facial Treatment</h4>
                                        <div class="separator"></div>
                                        <p>Full Facial Treatment.</p>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="app-item"><a class="shortcode_button add-item">Load More</a></div>  
                </div>                                                                    
			</div>
            <!-- //section content -->    
        </section>
        <!-- //end portfolio content-->
        <!-- pricing content-->
        <section class="page_section">      
            <!-- section content -->
            <div class="container wow fadeInUp">
            	<div class="pricing_block bg_gray">
                    <!-- section header -->
                    <header class="head_section center_section">
                        <h2>Our Packages</h2>
                        <div class="separator"></div>
                        <p>Indulge in one of our packages and enjoy a stay filled with our most popular Style Hotels.</p>
                    </header>
                    <!-- //section header --> 
                    <div class="price-item">
                        <div class="type"><Tour Traveln>One Day Tour Travel Package</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>$120</Tour Traveln> month</div>
                        <div class="cont">
                            <ul>
                                <li>Deluxe accommodation</li>
                                <li>Hot Stones flys</li>
                                <li>Body Style Hotels</li>
                                <li>Hydrohotel</li>
                                <li>Hands & Feet</li>    
                            </ul>
                        </div>
                        <a href="#" class="shortcode_button">Buy Now</a>
                    </div>
                    <div class="price-item optimal">
                        <div class="type"><Tour Traveln>Overnight Tour Travel Package</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>$200</Tour Traveln> month</div>
                        <div class="cont">
                            <ul>
                                <li>Deluxe accommodation</li>
                                <li>Hot Stones flys</li>
                                <li>Body Style Hotels</li>
                                <li>Hydrohotel</li>
                                <li>Hands & Feet</li>    
                            </ul>
                        </div>
                        <a href="#" class="shortcode_button">Buy Now</a>
                    </div>
                    <div class="price-item">
                        <div class="type"><Tour Traveln>Three Nights Package</Tour Traveln></div>
                        <div class="pricelist"><Tour Traveln>$300</Tour Traveln> month</div>
                        <div class="cont">
                            <ul>
                                <li>Deluxe accommodation</li>
                                <li>Hot Stones flys</li>
                                <li>Body Style Hotels</li>
                                <li>Hydrohotel</li>
                                <li>Hands & Feet</li>                                
                            </ul>
                        </div>
                        <a href="#" class="shortcode_button">Buy Now</a>
                    </div>
                </div>
            </div>
			<!-- //section content --> 
        </section>
        <!-- //end pricing content-->
        <!-- news content-->
        <section class="page_section">
            <div class="container block-wrap wow fadeInUp">
            	<div class="row carousel-box carousel-full">
                	<div class="col-md-3">
                    	<div class="control-block bg_black block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                           	  <h2>Recent</h2>
                                <Tour Traveln>News</Tour Traveln>
                              <div class="separator left"></div>
                            </header>
                            <p>The Oasis, our Tour Travel guest-only lounge and restaurant, overlooks the beautiful gardens of The Hotel.</p>
                        	<div class="customNavigation">
                            	<a class="btn-prev"><i class="fa fa-angle-left"></i></a>
                            	<a class="btn-next"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9">
                    	<div class="owl-carousel">
                            <div class="item-full">
                            	<div class="row">
                                    <div class="col-md-4 col-sm-4"> 
                                        <div class="img block">
                                        	<img src="images/still3.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8">
                                        <div class="cont block">
                                            <h4>The Oasis</h4>
                                            <div class="separator left"></div>
                                            <p>The Oasis, our Tour Travel guest-only lounge and restaurant, overlooks the beautiful gardens of The Hotel. The buffet at The Oasis is available on an a la carte basis for $20, plus tax and gratuity.</p>
                                            <a href="#" class="shortcode_button">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item-full">
                            	<div class="row">
                                    <div class="col-md-4 col-sm-4">
                                        <div class="img block">
                                        	<img src="images/still2.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-8">
                                        <div class="cont block">
                                            <h4>New Service</h4>
                                            <div class="separator left"></div>
                                            <p>Guests can relax at The Oasis while enjoying a variety of fresh lunch choices and decadent desserts prepared by our award-winning culinary team. . The buffet menu features refreshing juices, salads, and healthy wraps. Also enjoy our selection of cocktails and wines for an additional charge. </p>
                                            <a href="#" class="shortcode_button">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end news content-->
        <!-- contact content-->
        <section class="page_section" id="contact">
            <div class="container block-wrap wow fadeInUp">
            	<div class="row">
                	<div class="col-md-3">
                    	<div class="info-block bg_colored block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                              <h2>WRITE US</h2>
                                <div class="separator left"></div>
                            </header>
                            <p>We value your opinion regarding our service and facilities. Please feel free to contact us with your thoughts.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                    	<div class="contact_form block">
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div id="note"></div>
                                </div>   
                            </div> 
                            <div id="fields"> 
                                <form id="ajax-contact-form" class="row" action="#">                        
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="name" placeholder="Name" title="Name">
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="email" placeholder="Email" title="Email">
                                    </div>
                                    <div class="clear"></div>
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="phone" placeholder="Phone" title="Phone">
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        <input class="inp" type="text" name="subject" placeholder="Subject" title="Subject">
                                    </div>
                                    <div class="clear"></div>
                                    <div class="col-md-12">
                                        <textarea class="inp" rows="4" name="message" placeholder="Message" title="Message"></textarea>
                                    </div>
                                    <div class="col-md-12"><input class="shortcode_button" type="submit" value="Send message"></div>
                                </form> 
                            </div> 
                        </div>                
                    </div>
                    <div class="col-md-3">
                    	<div class="info-block bg_black block">
                        	<header class="head_section">
                            	<div class="icon-write">
                                  <i class="pe-5x pe-va pe-7s-diamond"></i> 
                                </div> 
                              <h2>CONTACT</h2>
                                <Tour Traveln>DETAILS</Tour Traveln>
                              <div class="separator left"></div>
                            </header>
                            <p>Address: 86, Fifth Avenue St. </p>
                            <p>New York, NY </p>
                            <p>United States</p>
                            <p>Phone: +1 (800) 447 33 21</p>
                            <p>Fax: +1 (800) 447 33 21</p>
                            <p>Email: info@yoursite.com </p>
                        </div>
                    </div>
                </div>
            </div><!-- end .container -->
        </section>
        <!-- //end contact content-->
        <!-- map section-->
        <div class="map-canvas">
            <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d193572.00379171042!2d-73.97800350000001!3d40.70563080000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s87-89+E+4th+St%2C+New+York%2C+NY+10003%2C+Stati+Uniti!5e0!3m2!1sit!2sit!4v1416499866904">
            </iframe>
        </div>
        <!-- /end map section -->
        <!--footer-->
        <div class="footer">
            <!-- footer_bottom -->
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Recent Posts</h3>
                            </div>
                            <ul class="list-posts">
                                <li>
                                    <p>
                                        Enjoy a classic manicure or pedicure with a chocolate sugar exfoliation, chocolate
                                        mask for the feet.</p>
                                    <tourtraveln class="date">13, Nov. 2015</tourtraveln>
                                    <a href="#">By Admin</a> </li>
                                <li>
                                    <p>
                                        We value your opinion regarding our service and facilities.</p>
                                    <tourtraveln class="date">14, Nov. 2015</tourtraveln>
                                    <a href="#">By Admin</a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Opening Hours</h3>
                            </div>
                            <div class="working_hours">
                                <ul>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Monday - Tuesday</tourtraveln>
                                        <tourtraveln>
                                        06.00 - 22.00</Tour Traveln> </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Friday</tourtraveln>
                                        <tourtraveln>06.00 - 23.00</tourtraveln>
                                    </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Saturday</tourtraveln>
                                        <tourtraveln>06.00 - 23.30</tourtraveln>
                                    </li>
                                    <li>
                                        <tourtraveln><i class="fa fa-clock-o"></i>Sunday</tourtraveln>
                                        <tourtraveln>06.00 - 21.00</tourtraveln>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="footer_block">
                            <div class="title">
                                <h3>
                                    Newsletter Signup</h3>
                            </div>
                            <p>
                                Signup to our weekly newsletter and receive our great promotions. We'll keep you
                                updated.</p>
                            <div class="ns_block">
                                <input type="text" class="ns_input" placeholder="Email address" title="Email address">
                                <input type="submit" class="shortcode_button" value="Sign Up">
                            </div>
                            <div class="social">
                                <a href="#" class="soc-f">T</a> <a href="#" class="soc-t">o</a> <a href="#" class="soc-g">
                                    u</a> <a href="#" class="soc-n">r</a> <a href="#" class="soc-v">wo</a> <a href="#"
                                        class="soc-r">r</a> <a href="#" class="soc-i">ld</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="copyright">
                    &copy; Copyright 2016. TourTravel All Rights Reserved.
                </div>
            </div>
            <!-- //footer_bottom -->
        </div>
        <!--//footer-->
    </div>
    <!-- end #page -->
    <header class="fixed-menu"></header>
    <!-- javascript files-->
    <script type="text/javascript" src="js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="js/sorting.js"></script>
    <script src="js/homePopupLoad.js" type="text/javascript"></script>
    <script src="js/homePopup.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/plugins.js"></script>
    <script type="text/javascript" src="js/current.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <!-- animation on scrolling-->
    <script>
        new WOW().init();
    </script>
    </form>
</body>
</html>
