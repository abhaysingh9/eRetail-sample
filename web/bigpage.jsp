<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%! int pid;%>
<%
    if (session.isNew()) {
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STARTUP</title>
        <link rel="stylesheet" href="css/style1.css" media="screen" type="text/css" />
    </head>
    <body>
        <div class="container">
            <a href="index.html">
            <h6> Please be legit</h6>
            </a>
        </div>
    </body>
</html>
<% }
    else{
         %>
<html lang="en-US" dir="ltr">
<head>
	<title>Checkout our collection</title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/jquery.jscrollpane.css" type="text/css" media="all" />
	<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
	<script src="js/DD_belatedPNG-min.js" type="text/javascript"></script>
	<script src="js/jquery.jscrollpane.min.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>
</head>
<body>
	
		<div id="wrapper-bottom">
			<div class="shell">
				<div id="header">
					<h1><a title="Home" href="bigpage.jsp">STARTUP STORE</a></h1>
                                        <p class="shopping-cart"><a class="cart" href="cart.jsp" title="Your Shopping Cart">Cart</a></p>
					
					<!--"END Search"-->
                                   
					<div class="cl"></div>
					<!-- Navigation -->
					<div id="navigation">
						<ul>
							<li><a title="Feed" href="feed.jsp">Feed</a></li>
							<li><a title="logout" href="logout.jsp">logout</a></li>
							<li><a title="Blog" href="https://www.google.co.in/url?sa=t&rct=j&q=&esrc=s&source=web&cd=3&cad=rja&uact=8&ved=0CDQQFjACahUKEwit8t7u2tzGAhUh5aYKHerrCuI&url=http%3A%2F%2Ffrustventp.blogspot.com%2F&ei=qRimVe35O6HKmwXq16uQDg&usg=AFQjCNHy3NImTE8baO4CgYzjI5sf7-kGvg&sig2=0D7i9nqHtQVy3NQcvS9g-A&bvm=bv.97653015,d.dGY">Blog</a></li>
							<li><a title="About Us" href="aboutus.html">About Us</a></li>							
						</ul>						
					</div>	
					<div class="cl"></div>				
	
					<div class="cl"></div>
				</div>
				<!-- END Header -->
				<!-- Main -->
				<div id="main">
					<!-- Slider -->
				
					<div id="content">
                                            
						<!-- Featured Products -->
						<div class="products-holder">
							<div class="top"></div>
							<div class="middle">													
								<div class="label">
                                                                    <h3>FEATURED PRODUCTS</h3>									
								</div>
								<div class="cl"></div>	
								<div class="product">																										
									<a title="Details" href="detail.jsp"><img src="css/images/paperclip.jpg" alt="paperclip" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>XR-34</span></p>
                                                                                <%pid=1215;    session.setAttribute("pid", pid); %>
										<p>Product code: <span>1215</span></p>
									</div>	
									<div class="price-box">
										<p>$<span class="price"> 01<sup>.69</sup></span></p>
										<p class="per-peace">Per Pic</p>
									</div>
									<div class="cl"></div>																														
								</div>
								<div class="product" >																										
									<a title="Details" href="detail.jsp"><img src="css/images/pen.jpg" alt="pen" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>PgK</span></p>
										<p>Product code: <span>3275</span></p>
                                                                                <%pid=3275;    session.setAttribute("pid", pid); %>
									</div>	
									<div class="price-box">
										<p>$<span class="price"> 00<sup>.99</sup></span></p>
										<p class="per-peace">Per Peace</p>
									</div>
									<div class="cl"></div>																											
								</div>
								<div class="product">																												
									<a title="Details" href="detail.jsp"><img src="css/images/markers.jpg" alt="markers" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>XZ-8</span></p>
										<p>Product code: <span>1456</span></p>
                                                                                <%pid=1456;    session.setAttribute("pid", pid); %>
									</div>	
									<div class="price-box">
										<p>$<span class="price"> 01<sup>.69</sup></span></p>
										<p class="per-peace">Per Peace</p>
									</div>
									<div class="cl"></div>																															
								</div>
								<div class="product">																												
									<a title="Details" href="detail.jsp"><img src="css/images/eraser.jpg" alt="eraser" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>small</span></p>
										<p>Product code: <span>3256</span></p>
                                                                                <%pid=3256;    session.setAttribute("pid", pid); %>
									</div>	
									<div class="price-box">
										<p>$<span class="price"> 00<sup>.29</sup></span></p>
										<p class="per-peace">Per Peace</p>
									</div>
									<div class="cl"></div>																														
								</div>
								<div class="product">																											
									<a title="Details" href="detail.jsp"><img src="css/images/marker.jpg" alt="marker" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>BX</span></p>
										<p>Product code: <span>1003</span></p>
                                                                                <%pid=1003;    session.setAttribute("pid", pid); %>
									</div>	
									<div class="price-box">
										<p>$<span class="price"> 01<sup>.25</sup></span></p>
										<p class="per-peace">Per Peace</p>
									</div>
									<div class="cl"></div>																														
								</div>
								<div class="product">																											
									<a title="Details" href="detail.jsp"><img src="css/images/sharpener.jpg" alt="sharpener" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>XZ-4</span></p>
                                                                                <%pid=1457;    session.setAttribute("pid", pid); %>
									</div>	
									<div class="price-box">
										<p>$<span class="price"> 04<sup>.99</sup></span></p>
										<p class="per-peace">Per Peace</p>
									</div>
									<div class="cl"></div>																															
								</div>										
								<div class="product">																												
									<a title="Details" href="detail.jsp"><img src="css/images/pens.jpg" alt="pens" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>gJ</span></p>
                                                                                <%pid=3269;    session.setAttribute("pid", pid); %>
									</div>	
									<div title="Details" class="price-box">
										<p>$<span class="price"> 01<sup>.25</sup></span></p>
										<p class="per-peace">Per Peace</p>
									</div>
									<div class="cl"></div>																															
								</div>
								<div class="product">																												
									<a title="Details" href="detail.jsp"><img src="css/images/perforator.jpg" alt="perforator" /></a>
									<div class="desc">
										<p class="name">Product Name</p>
										<p>Model: <span>XR-34</span></p>
										<%pid=1215;    session.setAttribute("pid", pid); %>
									</div>	
									<div class="price-box">
										<p>$<span class="price"> 00<sup>.59</sup></span></p>
										<p class="per-peace">Per Peace</p>
									</div>
									<div class="cl"></div>																									
								</div>
								<div class="cl"></div>
							</div>
							<div class="bottom"></div>									
						</div>
						<!-- END Featured Products -->
						<!-- Best Sellers -->
						<div class="products-holder">
							<div class="top"></div>
							<div class="best-sellers middle">									
								<div class="label">								
									<h3>Best Sellers</h3>																		
								</div>
								<div class="cl"></div>
								<!-- Scroll Pane -->
								<div class="left-border"></div>
								<div class="scroll-pane horizontal-only">																
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/paperclip.jpg" alt="paperclip" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>XR-34</span></p>
											<p>Product code: <span>1215</span></p>
                                                                                        <%pid=1215;    session.setAttribute("pid", pid); %>
										</div>	
										<div class="price-box">
											<p>$<span class="price"> 01<sup>.69</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																																	
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/pen.jpg" alt="pen" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>PgK</span></p>
											<%pid=3275;    session.setAttribute("pid", pid); %>
										</div>	
										<div class="price-box">
											<p>$<span class="price"> 00<sup>.99</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																									
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/markers.jpg" alt="markers" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>XZ-8</span></p>
											<p>Product code: <span>1456</span></p>
                                                                                        <%pid=1456;    session.setAttribute("pid", pid); %>
										</div>	
										<div class="price-box">
											<p>$<span class="price"> 01<sup>.69</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																																	
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/eraser.jpg" alt="eraser" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>small</span></p>
											<p>Product code: <span>3256</span></p>
                                                                                        <%pid=3256;    session.setAttribute("pid", pid); %>
										</div>	
										<div class="price-box">
											<p>$<span class="price"> 00<sup>.29</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																																
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/pen.jpg" alt="pen" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>PgK</span></p>
											<p>Product code: <span>3275</span></p>
                                                                                        <%pid=3275;    session.setAttribute("pid", pid); %>
                                                                                </div>	
										<div class="price-box">
											<p>$<span class="price"> 00<sup>.99</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																									
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/markers.jpg" alt="markers" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>XZ-8</span></p>
											<p>Product code: <span>1456</span></p>
                                                                                        <%pid=1456;    session.setAttribute("pid", pid); %>
										</div>	
										<div class="price-box">
											<p>$<span class="price"> 01<sup>.69</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																																	
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/eraser.jpg" alt="eraser" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>mall</span></p>
											<p>Product code: <span>3256</span></p>
                                                                                        <%pid=3256;    session.setAttribute("pid", pid); %>
										</div>	
										<div class="price-box">
											<p>$<span class="price"> 00<sup>.29</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																																
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/markers.jpg" alt="markers" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>XZ-8</span></p>
											<p>Product code: <span>1456</span></p>
                                                                                        <%pid=1456;    session.setAttribute("pid", pid); %>
										</div>	
										<div title="Details" class="price-box">
											<p>$<span class="price"> 01<sup>.69</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																																	
									</div>
									<div class="product">																														
										<a title="Details" href="detail.jsp"><img src="css/images/eraser.jpg" alt="eraser" /></a>
										<div class="desc">
											<p class="name">Product Name</p>
											<p>Model: <span>mall</span></p>
											<p>Product code: <span>3256</span></p>
                                                                                        <%pid=3256;    session.setAttribute("pid", pid); %>
										</div>	
										<div class="price-box">
											<p>$<span class="price"> 00<sup>.29</sup></span></p>
											<p class="per-peace">Per Peace</p>
										</div>																																
									</div>																													
								</div>
								<!-- END Scroll Pane -->
								<div class="right-border"></div>
								<div class="cl"></div>								
							</div>
							<div class="bottom"></div>							
						</div>							
						<!-- END Best Sellers -->
						
					</div>
					<!-- END Content -->
				</div>
				<!-- END Main -->
			</div>
		</div>

	<!-- END Wrapper -->

</body>
</html>
<%
    }
    %>