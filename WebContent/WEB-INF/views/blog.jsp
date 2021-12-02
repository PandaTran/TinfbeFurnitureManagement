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
<body>
	
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
					<div class="main-menu d-none d-xl-block" id="mainMenu">
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
									<a href="contactUs" class="header__navbar-item-link">Contact Us</a>
								</li>
								<li class="header__navbar-item main-menu--item">
									<a href="blog" class="header__navbar-item-link active">Blog</a>
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
						<label class="header__navbar-service--item header__navbar-item header__search md-display-none sm-display-none xs-display-none">
							<i class="header__navbar-service--icon ri-search-line" title="Search"></i>
						</label> 
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
                        <li class="breadcrumb-item active text-capitalize" aria-current="page">Blog</li>
                    </ol>
                </nav>
            </div>

        </div>
    </div>
    
    <div class="blog-sidebar-area section__area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12 pb-50">
                    <div class="blog-details-wrapper">
                        <div class="blog-details-content">
                            <h2 class="pb-4">Outsmart Today’s Downpour With These 14 Rainy Day</h2>
                            <img src="./assets/images/blog-details-img.jpg" alt="" class="width100">
                            <p class="pt-4 mb-4">Diga, Koma and Torus are three kitchen utensils designed for Ommo, a new design-oriented brand introduced at the Ambiente show in February 2016. Minimalist approach, bright colors, stainless steel and matte plastic, abstract
                                shapes and curved lines are the defining features of these products designed to be extremely functional, user-friendly and fun.</p>
                            <p class="">Diga is a two-color melamine salad bowl where vegetables can be washed, drained and served. The disk at the bottom of the bowl can be turned counterclock-wise to drain water when washing vegetables and it can be turned clockwise
                                to lock the drain and hold condiments in the bowl when serving.</p>
                            <blockquote class="blockquote mb-4" data-background="assets/images/quotes.png" style="background-image: url(&quot;assets/images/quotes.png&quot;);">
                                <p class="mb-0">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy.</p>
                            </blockquote>
                        </div>
                        <div class="blog-details-content2 pb-5">
                            <img src="./assets/images/blog-details-img.jpg" alt="" class="width100">
                            <p class="pt-5 mb-2">Koma and Torus are two tea infusers, each with an original design and a concealed function. Koma has a round base and a long stainless steel-trimmed handle which offers a comfortable grip and allows.</p>
                            <p class="mb-0">And the brushed steel cover opens and closes at the touch of a finger to easily fill and empty the infuser. The perfect way to enjoy brewing tea. Torus is donut-shaped and can cling to any cup. It is accompanied by a case that
                                can contain up to three different diffusers and can be used for dry storage of loose tea.</p>
                        </div>
                        <div class="bottom-line"></div>
                        <div class="blog-social-sharing d-lg-flex align-items-center justify-content-start justify-content-md-between pt-4 pb-4">
                            <ul class="social-link p-0">
                                <li class="d-block d-sm-inline-block">
                                    <span class="mr-3">Share to friends:</span>
                                </li>
                                <li class="d-inline-block pt-3" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Facebook">
                                    <a href="#"><i class="ri-facebook-fill"></i></a>
                                </li>
                                <li class="d-inline-block pt-3" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Twitter">
                                    <a href="#"><i class="ri-twitter-fill"></i></a>
                                </li>
                                <li class="d-inline-block pt-3" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Pinterest">
                                    <a href="#"><i class="ri-pinterest-line"></i></a>
                                </li>
                                <li class="d-inline-block pt-3" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Google-plus">
                                    <a href="#"><i class="ri-google-line"></i></a>
                                </li>
                                <li class="d-inline-block pt-3" data-toggle="tooltip" data-selector="true" data-placement="bottom" title="Linkedin">
                                    <a href="#"><i class="ri-linkedin-fill"></i></a>
                                </li>
                            </ul>
                            <div class="d-flex align-items-center justify-content-start justify-content-lg-end">
                                <div class="entry-counter d-flex align-items-center justify-content-end">
                                    <div class="post-comments mr-3" title="" data-toggle="tooltip" data-original-title="Total Comments">
                                        <span class="font-weight-bold pr-1"><i class="ri-chat-1-line"></i></span><span class="primary-color">0</span>
                                    </div>
                                    <div class="post-views mr-3" title="" data-toggle="tooltip" data-original-title="total views">
                                        <span class="font-weight-bold pr-1"><i class="ri-eye-line"></i></span>
                                        <span class="primary-color">550</span>
                                    </div>
                                    <div class="like-counter" title="" data-toggle="tooltip" data-original-title="Like this page">
                                        <a href="javascript:void(0)">
                                            <span class="font-weight-bold pr-1"><i class="ri-heart-3-line"></i></span>
                                            <span class="primary-color">0</span>
                                        </a>
                                    </div>
                                </div>
                                <ul class="p-tags theme-color pt-3">
                                    <li><span>Tags:</span></li>
                                    <li><a href="./product-detail.html" class="primary-color">Decor,</a></li>
                                    <li><a href="./product-detail.html" class="primary-color">Bedroom</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="bottom-line"></div>
                        <div class="blog-comment-area mt-5">
                            <h5 class="pb-2">Leave a Reply </h5>
                            <p>Your email address will not be published. Required fields are marked *</p>
                            <form action="#" class="reply-form contact-form">
                                <div class="comment">
                                    <label>Comment</label>
                                    <textarea name="message" class="form-control pt02" id="message"></textarea>
                                </div>
                                <div class="row">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <label class="mt-4">Name *</label>
                                        <div class="name">
                                            <input type="text" name="r-name" id="r-name" class="form-control" style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABHklEQVQ4EaVTO26DQBD1ohQWaS2lg9JybZ+AK7hNwx2oIoVf4UPQ0Lj1FdKktevIpel8AKNUkDcWMxpgSaIEaTVv3sx7uztiTdu2s/98DywOw3Dued4Who/M2aIx5lZV1aEsy0+qiwHELyi+Ytl0PQ69SxAxkWIA4RMRTdNsKE59juMcuZd6xIAFeZ6fGCdJ8kY4y7KAuTRNGd7jyEBXsdOPE3a0QGPsniOnnYMO67LgSQN9T41F2QGrQRRFCwyzoIF2qyBuKKbcOgPXdVeY9rMWgNsjf9ccYesJhk3f5dYT1HX9gR0LLQR30TnjkUEcx2uIuS4RnI+aj6sJR0AM8AaumPaM/rRehyWhXqbFAA9kh3/8/NvHxAYGAsZ/il8IalkCLBfNVAAAAABJRU5ErkJggg==&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;">
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                        <label class="mt-4">Email *</label>
                                        <div class="email">
                                            <input type="email" name="email" id="r-email" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pb-5">
                                        <label class="mt-4">Website *</label>
                                        <div class="name">
                                            <input type="text" name="r-name" id="w-name" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <a href="#" class="review-btn d-inline-block text-uppercase border-0">POST COMMENT</a>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 md-display-none sm-display-none xs-display-none">
                    <div class="blog-sidebar-accor pl-4">
                        <div class="sidebar-widget mb-4">
                            <div class="blog-search position-relative">
                                <input class="form-control" type="text" placeholder="Search ...">
                                <a class="position-absolute" href="#">
                                    <span class="icon-search">
                                    <i class="ri-search-2-line"></i>
                                </span>
                                </a>
                            </div>
                        </div>
                        <div class="sidebar-widget mb-4">
                            <h4 class="pb-2">Blog Categories</h4>
                            <ul>
                                <li><a class="pb-15 d-block" href="#">Music</a></li>
                                <li><a class="pb-15 d-block" href="#">Photography</a></li>
                                <li><a class="pb-15 d-block" href="#">Sofas &amp; Daybeds</a></li>
                                <li><a class="pb-15 d-block" href="#">Travel</a></li>
                                <li><a class="pb-15 d-block" href="#">Uncategorized</a></li>
                                <li><a class="pb-15 d-block" href="#">Wordpress</a></li>
                            </ul>
                        </div>
                        <div class="sidebar-widget mb-4">
                            <h4 class="pb-2">Recent Posts</h4>
                            <ul class="recent-post">
                                <li class="d-flex mb-4">
                                    <a href="#"><img src="./assets/images/post-img1.jpg" alt="blog" class="width100"></a>
                                    <div class="r-post-content ml-3">
                                        <h6 class="theme-color">
                                            <a href="#">Outsmart Today’s Downpour With These 14 Rainy Day</a>
                                        </h6>
                                        <span>May 23, 2020</span>
                                    </div>
                                </li>
                                <li class="d-flex mb-4">
                                    <a href="#"><img src="./assets/images/post-img2.jpg" alt="blog" class="width100"></a>
                                    <div class="r-post-content ml-3">
                                        <h6 class="theme-color">
                                            <a href="#">Outsmart Today’s Downpour With These 14 Rainy Day</a>
                                        </h6>
                                        <span>June 24, 2020</span>
                                    </div>
                                </li>
                                <li class="d-flex mb-4">
                                    <a href="#"><img src="./assets/images/post-img3.jpg" alt="blog" class="width100"></a>
                                    <div class="r-post-content ml-3">
                                        <h6 class="theme-color">
                                            <a href="#">Outsmart Today’s Downpour With These 14 Rainy Day</a>
                                        </h6>
                                        <span>Aug 26, 2020</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
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