<%@page import="com.anhtien.tinfbefurnituremanagement.service.ProductService"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.service.CategoryService"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Category"%>
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
				<div class="col-xl-5 col-lg-4 col-md-3 col-sm-2 col-2 p-0 position-static">
					<label for="mobile-menu__area" class="mobile-menu__nav d-block d-xl-none">
						<i class="ri-menu-2-line mobile-menu__icon"></i>
					</label> 
					<input type="checkbox" class="mobile-menu__input" id="mobile-menu__area" hidden> 
					<label for="mobile-menu__area" class="overlay"></label>
					<div class="mobile-menu wrapper d-block d-xl-none">
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
									<a href="aboutUs" class="header__navbar-item-link">About Us</a>
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
									<a href="contactUs" class="header__navbar-item-link active">Contact Us</a>
								</li>
								<li class="header__navbar-item main-menu--item">
									<a href="blog" class="header__navbar-item-link">Blog</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="col-xl-2 col-lg-3 col-md-6 col-sm-8 col-8 d-flex align-items-center justify-content-center">
					<div class="logo d-flex">
						<a href="home" title="Tinfbe.com | Furniture Store"> 
							<img src="./assets/images/shortcut-icon.png" alt="Tinfbe.com | Furniture Store"> 
							<span>Tinfbe<small class="logo__format">Fur</small></span>
						</a>
					</div>
				</div>
				<div class="col-xl-5 col-lg-5 col-md-3 col-sm-2 col-2 px-0 text-right">
					<div class="header__navbar-list header__navbar-service">
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
						<label for="login-register__area" class="header__navbar-service--item header__navbar-item header__login md-display-none sm-display-none xs-display-none">
							<c:if test="${sessionScope.username == null }">
								<a href="login"> 
									<i class="header__navbar-service--icon ri-user-3-line" title="Login"></i> 
								</a>
								<a href="login"><span>Login/Register</span></a>
							</c:if>
							<c:if test="${sessionScope.username != null}">
								<a href="logout">
									<i class="header__navbar-service--icon ri-logout-circle-r-line" title="Logout"></i>
								</a>
								<span class="ml-1">${sessionScope.name }</span>
							</c:if>
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
                <h2>Contact</h2>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center bg-transparent">
                        <li class="breadcrumb-item">
                            <a href="home">Home</a>
                        </li>
                        <li class="breadcrumb-item active text-capitalize" aria-current="page"> Contact Us</li>
                    </ol>
                </nav>
            </div>

        </div>
    </div>
    
    <div class="map-area section__area">
        <div class="container-fluid">
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.3852994171757!2d108.23912354970538!3d16.045483544283037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421763da018dc7%3A0xbe331ab1acad1d43!2zMTAwIFTDtG4gVGjhuqV0IFRoaeG7h3AsIELhuq9jIE3hu7kgQW4sIE5nxakgSMOgbmggU8ahbiwgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1630205417997!5m2!1svi!2s"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </div>
    
    <div class="contact-area section__area-bottom">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="contact-form-left">
                        <div class="section-title text-left">
                            <h3 class="mb-4">Our Main Office</h3>
                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dolores, doloremque numquam quo porro alias molestias unde eaque odit assumenda, voluptas aut libero facilis quod, fugit minima quas asperiores necessitatibus! Ipsa?</p>
                            <ul class="hot-line d-flex align-items-center mt-25 pb-25 px-0">
                                <li>
                                    <span class="d-block mr-15">
                                       <img src="./assets/images/hotline.png" alt="">
                                    </span>
                                </li>
                                <li>
                                    <p class="mb-1">Hotline Free 24/24:</p>
                                    <span>(+84) 123 456 7890</span>
                                </li>
                            </ul>
                        </div>
                        <div class="c-contact d-sm-flex">
                            <span class="pr-1">Address: </span>
                            <p>100 Tôn Thất Thiệp, Quận Ngũ Hành Sơn, Thành Phố Đà Nẵng</p>
                        </div>
                        <div class="c-email d-sm-flex">
                            <span class="pr-1">Email: </span>
                            <p>anhtien04062001@gmail.com</p>
                        </div>
                        <div class="c-number d-sm-flex">
                            <span class="pr-1">Number Phone: </span>
                            <p>(84) 123 456 789, (84) 987 654 321</p>
                        </div>
                        <div class="c-fax d-sm-flex">
                            <span class="pr-1">Fax: </span>
                            <p>(+84) 123 456 7890 – (+84) 123 456 7891</p>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="contact-form-right">
                        <h3 class="mb-4">Drop Us A Message</h3>
                        <form action="#">
                            <div class="contact-form">
                                <label>Name</label>
                                <div class="name">
                                    <input type="text" class="form-control" name="r-name" id="r-name" style="background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%; cursor: auto; ">
                                </div>
                                <label class="mt-20">Email</label>
                                <div class="email">
                                    <input type="email" class="form-control" name="email" id="r-email">
                                </div>
                                <label class="mt-20">Subject</label>
                                <div class="subject">
                                    <input type="text" class="form-control" name="subject" id="subject">
                                </div>
                                <label class="mt-20">Your Message</label>
                                <textarea name="message" class="form-control" id="message"></textarea>
                            </div>
                            <a href="#" class="review-btn d-inline-block transition mt-20 text-uppercase ">send message</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="subscribe-area section__area-bottom">
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
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!--Link JS-->
    <script src="./assets/js/main.js"></script>
    <!--Scroll Reveal JS-->
    <script src="https://unpkg.com/scrollreveal@3.3.2/dist/scrollreveal.min.js"></script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>
</html>