<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Category"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.service.ProductService"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.service.CategoryService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">

    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <title>TINFBE.COM | Elevate The Style Of Your Home </title>
    <link rel="shortcut icon" href="./assets/images/shortcut-icon.png">

    <!--Link CSS-->
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="stylesheet" href="./assets/css/responsive.css">
</head>
<body class="light-theme">
	<%
		CategoryService categoryService = new CategoryService();
		ProductService productService = new ProductService();
	%>
	<header id="header" class="header">
		<div class="container-fluid">
			<div class="row align-items-center justify-content-lg-between position-relative">
				<div class="col-xl-5 col-lg-5 col-md-4 col-sm-3 col-3 p-0 position-static">
					<label for="mobile-menu__area" class="mobile-menu__nav d-lg-none">
						<i class="ri-menu-2-line mobile-menu__icon"></i>
					</label> 
					<input type="checkbox" class="mobile-menu__input" id="mobile-menu__area" hidden> 
					<label for="mobile-menu__area" class="overlay"></label>
					<div class="mobile-menu wrapper">
						<label class="mobile-menu__close" for="mobile-menu__area">
							<i class="ri-close-line" style="font-size: 20px;"></i>
						</label>
						<div class="d-flex justify-content-center">
							<div class="search w-75 d-flex align-items-center">
								<span class="ri-search-2-line"></span> 
								<input type="text" class="form-control" placeholder="What do you looking for...">
							</div>
						</div>
						<div class="mobile-menu__accordion">
							<div class="accordian">
								<div class="accordian-title">
									<a href="home" class="d-block position-relative pb-4">Home</a>
									<i class="ri-home-smile-line accordion-icon"></i>
								</div>
							</div>
							<div class="accordian">
								<div class="accordian-title">
									<a href="#" class="pb-4">Collections</a> <span><svg
											class="svg__accordion" width="13px" height="13px"
											viewBox="0 0 24 24" aria-labelledby="plusIconTitle"
											stroke-width="2" stroke-linecap="round"
											stroke-linejoin="round">
                                            <title id="plusIconTitle">Plus</title>
                                            <path
												d="M20 12L4 12M12 4L12 20" />
                                        </svg></span>
								</div>
								<ul class="accordian-content">
									<li><a href="category" class="d-block pb-15">New Arrivals</a></li>
									<li><a href="category" class="d-block pb-15">All Furniture</a></li>
									<li><a href="category" class="d-block pb-15">Best Sellers</a></li>
								</ul>
							</div>
							<div class="accordian">
								<div class="accordian-title">
									<a href="#" class="pb-4">Store</a> 
									<span>
										<svg class="svg__accordion" width="13px" height="13px" viewBox="0 0 24 24" aria-labelledby="plusIconTitle"
											stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <title id="plusIconTitle">Plus</title>
                                            <path d="M20 12L4 12M12 4L12 20" />
                                        </svg>
                                    </span>
								</div>
								<ul class="accordian-content">
									<%
										for (Category parentCategory : categoryService.getListParentCategory()) {
									%>
									<li>
										<a href="category" class="d-block pb-15"><%=parentCategory.getName()%></a>
									</li>
									<%
										}
									%>
								</ul>
							</div>
							<div class="accordian">
								<div class="accordian-title">
									<a href="contactUs" class="d-block position-relative pb-4">Contact Us</a> 
									<i class="ri-contacts-book-line accordion-icon"></i>
								</div>
							</div>
							<div class="accordian">
								<div class="accordian-title">
									<a href="login" class="d-block position-relative pb-4">Login/Register</a>
									<i class="ri-user-line accordion-icon"></i>
								</div>
							</div>
							<div class="accordian">
								<div class="accordian-title">
									<a href="aboutUs" class="d-block position-relative pb-4">About Us</a>
								</div>
							</div>
							<div class="accordian">
								<div class="accordian-title">
									<a href="wishlist" class="d-block position-relative pb-4">Wishlist</a>
									<i class="ri-heart-3-line accordion-icon"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="main-menu md-display-none sm-display-none xs-display-none" id="mainMenu">
						<nav class="header__navbar">
							<ul class="header__navbar-list main-menu--list">
								<li class="header__navbar-item main-menu--item">
									<a href="home" class="header__navbar-item-link">Home</a>
								</li>
								<li class="header__navbar-item main-menu--item">
									<a href="aboutUs" class="header__navbar-item-link active">About Us</a>
								</li>
								<li class="header__navbar-item main-menu--item">
									<a href="#" class="header__navbar-item-link">Store</a>
									<div class="header__dropdown-menu full__dropdown-menu">
										<div class="row">
											<ul class="sublist col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
												<%
													for (Category pCategory : categoryService.getListParentCategory()) {
												%>
												<li class="sublist__item">
													<div class="sublist__item--title">
														<a href="category" class="sublist__item--link sublist__item--link--title">
															<%=pCategory.getName()%>
														</a>
													</div>
													<ul class="sublist__item--list">
														<%
															for (Category chCategory : categoryService.getListChildCategory(pCategory.getId())) {
														%>
															<li class="subnav__item">
																<a href="product" class="sublist__item--link subnav__link"> 
																	<span><%=chCategory.getName()%></span>
																</a>
															</li>
														<%
															}
														%>
													</ul>
												</li>
												<%
													}
												%>
											</ul>
											<a href="product" class="header__menu-img--hover col-xl-3 col-lg-3 md-display-none sm-display-none xs-display-none">
												<img src="./assets/images/store__main-menu.png" class="header__dropdown-img width100 mt-4" alt="Product Image">
											</a>
										</div>
									</div>
								</li>
								<li class="header__navbar-item main-menu--item">
									<a href="contactUs" class="header__navbar-item-link">Contact Us</a>
								</li>
								<li class="header__navbar-item main-menu--item">
									<a href="blog" class="header__navbar-item-link">Blog</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-xl-2 col-lg-2 col-md-4 col-sm-6 col-6 d-flex align-items-center justify-content-center">
					<div class="logo d-flex">
						<a href="home" title="Tinfbe.com | Furniture Store"> 
							<img src="./assets/images/shortcut-icon.png" alt="Tinfbe.com | Furniture Store"> 
							<span>tinfbe</span>
						</a>
					</div>
				</div>
				<div class="col-xl-5 col-lg-5 col-md-4 col-sm-3 col-3 px-0 text-right">
					<div class="header__navbar-list header__navbar-service">
						<label for="login-register__area" class="header__navbar-service--item header__navbar-item header__login md-display-none sm-display-none xs-display-none">
							<a href="login"> 
								<i class="header__navbar-service--icon ri-user-3-line" title="Login"></i> 
								<span class="login-register"> Login/Register </span>
							</a>
						</label> 
						<label class="header__navbar-service--item header__navbar-item header__search md-display-none sm-display-none xs-display-none" for="header__search-target">
                            <i class="header__navbar-service--icon ri-search-line" title="Search"></i>
                        </label>
                        <input type="checkbox" class="header__search-input" id="header__search-target" hidden>
                        <label for="header__search-target" class="overlay"></label>
                        <div class="header-search-details">
                            <label class="mobile-menu__close" for="header__search-target">
                                <i class="ri-close-line" style="font-size: 20px;"></i>
                            </label>
                            <div class="header-search-content text-center">
                                <h3 class="">Search in:</h3>
                                <ul class="d-md-flex justify-content-between mt-5 md-display-none sm-display-none xs-display-none">
                                    <li><a class="active" href="">All categories</a></li>
                                    <li><a href="">Chair &amp; Tables</a></li>
                                    <li><a href="">Floor</a></li>
                                    <li><a href="">Home Accessories</a></li>
                                    <li><a href="">Ceiling lights</a></li>
                                </ul>  
                                <form action="#" class="position-relative pt-5">
                                    <input class="form-control" type="text" placeholder="Search Products...">
                                    <a class="position-absolute" href="#"><span class="icon-search"></span></a>
                                </form>
                            </div>
                        </div>
						<label class="header__navbar-service--item header__navbar-item header__heart md-display-none sm-display-none xs-display-none">
                            <button class="bg-transparent p-0" id="wishlist" data-target="#wishlist">
                                <a href="wishlist">
                                    <i class="header__navbar-service--icon ri-heart-3-line" title="Wishlist"></i>
                                </a>
                            </button>
                        </label>
                        <label for="shopping-cart__area" class="header__navbar-service--item header__navbar-item header__cart">
                            <button class="header__cart-wrap cart bg-transparent p-0" id="cart" data-target="#cart">
                                <a href="cart">
                                    <i class="header__navbar-service--icon header__cart--icon ri-shopping-basket-2-line" title="Cart"></i>
                                    <sup>
                                    	<c:out value="${sessionScope.cartNum }"/>
                                    </sup>
                                </a>
                            </button>
                        </label>
						<label class="header__navbar-service--item header__navbar-item md-display-none sm-display-none xs-display-none">
							<img src="./assets/images/moon.png" alt="" id="dark-mode__icon" class="w-75">
						</label>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div class="slider-area">
        <div class="page-title">
            <div class="text text-center">
                <h2>About Us</h2>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center bg-transparent">
                        <li class="breadcrumb-item"><a href="home">Home</a>
                        </li>
                        <li class="breadcrumb-item active text-capitalize" aria-current="page">About Us</li>
                    </ol>
                </nav>
            </div>

        </div>
    </div>
    
    <div class="about-us-des-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12 mt-4">
                    <div id="about__us-chart"></div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="about-us-content">
                        <p class="pb-10">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters</p>
                        <p>Diga, Koma and Torus are three kitchen utensils designed for Ommo, a new design-oriented brand introduced at the Ambiente show in February 2016. </p>
                        <p>Minimalist approach, bright colors, stainless steel and matte plastic, abstract shapes and curved lines are the defining features of these products designed to be extremely functional, user-friendly and fun. Diga is a two-color
                            melamine salad bowl where vegetables can be washed, drained and served. The disk at the bottom of the bowl can be turned counterclockwise to drain water when washing vegetables and it can be turned clockwise to lock the drain
                            and and can be used for dry storage of loose tea.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="about-us-banner-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class="slideInLeft mb-2">
                        <img src="./assets/images/banner1-about-us.jpg" alt="" class="width100">
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                    <div class=" slideInRight mb-2">
                        <img src="./assets/images/banner2-about-us.jpg" alt="" class="width100">
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="about-us-des-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-10 col-lg-10 col-md-12 col-sm-12 col-12 offset-xl-1 offset-lg-1">
                    <div class="about-us-content">
                        <p>Diga is a two-color melamine salad bowl where vegetables can be washed, drained and served. The disk at the bottom of the bowl can be turned counterclockwise to drain water when washing vegetables and it can be turned clockwise
                            to lock the drain and hold condiments in the bowl when serving. Koma and Torus are two tea infusers, each with an original design and a concealed function. Koma has a round base and a long stainless steel-trimmed handle which
                            offers a comfortable grip and allows.And the brushed steel cover opens and closes at the touch of a finger to easily fill and empty the infuser. The perfect way to enjoy brewing tea. Torus is donut-shaped and can cling to any
                            cup. It is accompanied by a case that can contain up to three different diffusers and can be used for dry storage of loose tea.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="about-us-video-area mb-50">
        <div class="container-fluid">
            <div class="about-us-video about-video-bg d-flex align-items-center justify-content-center" data-background="./assets/images/about-us-banner.png" style="background-image: url(&quot;./assets/images/about-us-banner.png&quot;);">
                <a data-fancybox="" href="#">
                    <div class="video-play-wrap position-relative">
                        <div class="video-mark">
                            <div class="wave-pulse wave-pulse-1"></div>
                            <div class="wave-pulse wave-pulse-2"></div>
                        </div>
                        <div class="video-play position-relative text-center white-bg theme-color">
                            <i class="ri-play-fill"></i>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
    
    <section class="service">
        <div class="container-fluid">
            <div class="service__list">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                        <div class="service__item">
                            <a href="./about-us.html" class="service__link" target="_blank">
                                <img src="./assets/images/service__addtocart.png" alt="Tinfbe Furniture.png" class="service__img">
                                <div class="service__info">
                                    <p class="service__title">Find Your Product</p>
                                    <p class="service__msg">Duis autem vel eum iriure dolor in hendrerit vulputate velit esse molestie consequat.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                        <div class="service__item">
                            <a href="./about-us.html" class="service__link" target="_blank">
                                <img src="./assets/images/service__ship.png" alt="Tinfbe Furniture.png" class="service__img">
                                <div class="service__info">
                                    <p class="service__title">Freeship Anywhere</p>
                                    <p class="service__msg">Duis autem vel eum iriure dolor in hendrerit vulputate velit esse molestie consequat.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 md-display-none col-sm-12 col-12">
                        <div class="service__item">
                            <a href="./about-us.html" class="service__link" target="_blank">
                                <img src="./assets/images/service__payment.png" alt="Tinfbe Furniture.png" class="service__img">
                                <div class="service__info">
                                    <p class="service__title">Payment Done</p>
                                    <p class="service__msg">Duis autem vel eum iriure dolor in hendrerit vulputate velit esse molestie consequat.</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
	<div class="subscribe-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-lg-10 col-md-12 col-sm-12 col-12 offset-xl-2 offset-lg-1">
                    <div class="section-title subscribe-title text-center">
                        <h2>Sign Up For Our Newsletter</h2>
                        <p>Subscribe to the Homess mailing list to receive updates on new arrivals, special offers and other discount information.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-10 col-lg-12 col-md-12 col-sm-12 col-12 offset-xl-1">
                    <div class="subscribe-form text-center">
                        <form action="#">
                            <input type="text" class="sub-name form-control text-center bg-transparent mt-4" name="name" id="name" placeholder="Subscribe to our newsletter...">
                            <a href="#" class="sub-btn d-inline-block border-0" style="margin-top: 50px;">Subscribe</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
	<jsp:include page="footer.jsp"></jsp:include>
	<!--Scroll Up-->
    <a href="#" class="scrollup" id="scroll-up">
        <i class="ri-arrow-up-line scrollup__icon"></i>
    </a>
    <!--Apex Chart-->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="./assets/js/main.js"></script>
    <!--Scroll Reveal JS-->
    <script src="https://unpkg.com/scrollreveal@3.3.2/dist/scrollreveal.min.js"></script>
    <script>
        window.sr = ScrollReveal({
            reset: true,
            distance: '60px',
            duration: 2800,

        });
        sr.reveal(`.slideInLeft,.subscribe-title,.progress__about-us`, {
            origin: 'left',
            interval: 100,
        })
        sr.reveal(`.slideInRight,.subscribe-form,.about-us-content`, {
            origin: 'right',
        })
        sr.reveal(`.service`, {
            origin: 'top',
            interval: 100,
        })
    </script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script>
        /* ---- ABOUT US CHART ---- */
        var aboutus__options = {
            series: [{
                name: "Store Customers",
                data: [40, 70, 50, 90, 36, 80, 30, 91, 60],
            }, {
                name: "Online Customers",
                data: [10, 41, 35, 51, 49, 62, 69, 91, 148],
            }, ],
            chart: {
                height: 350,
                type: "line",
                zoom: {
                    enabled: false,
                },
            },
            dataLabels: {
                enabled: false,
            },
            stroke: {
                curve: "straight",
            },
            grid: {
                row: {
                    colors: ["#f3f3f3", "transparent"],
                    opacity: 0.5,
                },
            },
            xaxis: {
                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep"],
            },
        };

        var aboutus__chart = new ApexCharts(document.querySelector("#about__us-chart"), aboutus__options);
        aboutus__chart.render();
    </script>
</body>
</html>