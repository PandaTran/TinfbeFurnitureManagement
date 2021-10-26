<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Product"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
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
		Locale locale = new Locale("vi","VN");
		NumberFormat format = NumberFormat.getCurrencyInstance(locale);
		format.setMinimumIntegerDigits(0);
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
									<a href="home" class="header__navbar-item-link active">Home</a>
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
								<span> <c:out value="${sessionScope.username }"/> </span>
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
	
	<div class="home-carousel">
        <div id="home__carousel" class="carousel slide content" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./assets/images/home__carousel(1).png">
                </div>
                <div class="carousel-item">
                    <img src="./assets/images/home__carousel(2).png">
                </div>
                <div class="carousel-item">
                    <img src="./assets/images/home__carousel(3).png">
                </div>
                <div class="carousel-item">
                    <img src="./assets/images/home__carousel(4).png">
                </div>
            </div>
            <div class="text text-right sm-display-none xs-display-none">
                <h6>Accessories Decor <span>2021</span></h6>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.Tenetur minima velit aut impedit enim saepe voluptatum fuga rerum beatae molestias magnam, laboriosam id!</p>
                <a href="login" class="btn">Login Now</a>
            </div>
            <div class="footer">
                <div class="prevNext">
                    <a class="left carousel-control" href="#home__carousel" data-slide="prev">
                        <span class="sr-only"><i class="ri-arrow-left-s-line"></i></span>
                    </a>
                    <a class="right carousel-control" href="#home__carousel" data-slide="next">
                        <span class="sr-only"><i class="ri-arrow-right-s-line"></i></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <section class="service">
        <div class="container-fluid">
            <div class="service__list">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                        <div class="service__item">
                            <a href="aboutUs" class="service__link" target="_blank">
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
                            <a href="aboutUs" class="service__link" target="_blank">
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
                            <a href="aboutUs" class="service__link" target="_blank">
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
    
    <div class="product-banner-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-5 col-lg-5 md-display-none sm-display-none xs-display-none">
                    <div class="product-banner-img" style="visibility: visible;">
                        <a href="product" class="d-block">
                            <img src="./assets/images/banner-newarrivals.png" alt="Product Image" class="width100 height100">
                        </a>
                    </div>
                </div>
                <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12">
                    <div class="product-banner--list-product">
                        <div class="m-2">
                            <div class="col-xl-8 col-lg-10 col-md-12 col-sm-12 col-12 offset-xl-2 offset-lg-1">
                                <div class="section-title text-center">
                                    <h2>New Arrivals </h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas fugiat deleniti quisquam ex atque! Architecto molestiae facilis odit, voluptate, at minus adipisci voluptatibus quia officiis veritatis, doloribus quod
                                        saepe quidem!</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12 offset-xl-2 offset-lg-1 text-center mb-4">
                            <a class="more__btn" href="product">
                                <svg>
                                    <rect x="0" y="0" fill="none" width="130" height="50"/>
                                </svg> See More
                            </a>
                        </div>
                        <div class=row>
							<%
								for (Product product : productService.showProductByCategoryId(1)) {
							%>
							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                                <div class="sm-product__item">
                                    <div class="product__img position-relative overflow-hidden">
                                        <a href="productDetail?productID=<%=product.getId() %>" class="position-relative d-block">
                                            <img src="imageServlet?imageName=<%=product.getImage() %>" alt="Product Image">
                                            <img src="imageServlet?imageName=<%=product.getImage() %>" alt="Product Image" class="hover-img position-absolute">
                                        </a>
                                    </div>
                                    <div class="product__info sm-product__info position-relative">
                                        <div class="sm-product__tag">
                                            <a href="category">bowls,</a>
                                            <a href="category">Living</a>
                                        </div>
                                        <a class="sm-product__name" href="productDetail?productID=<%=product.getId() %>"><%=product.getName() %></a>
                                        <div class="product__action position-relative">
                                            <div class="sm-product__price">
                                                <span class="product__price-current"><%=format.format(product.getPrice()) %></span>
                                                <span class="product__price-old"></span>
                                            </div>
                                            <div class="add-to-cart">
                                                <a href="cart?action=buy&id=<%=product.getId() %>">
                                                    <span class="sm-add-to-cart--icon">
                                                    	<i class="ri-shopping-bag-3-line"></i>
                                                    </span>
                                                    <span class="sm-add-to-cart-title">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__wishlist position-absolute">
                                            <span class="product__like">
                                                <a href="wishlist?action=add&id=<%=product.getId() %>" title="Add to Wishlist">
                                                    <i class="ri-heart-line product__like--icon-empty product__icon"></i>
                                                </a>
                                                <a href="#" title="Add to Wishlist" class="d-none">
                                                    <i class="ri-heart-fill product__like--icon-pill product__icon"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<%
								}
							%>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="help-you-area">
        <div class="container-fluid">
            <div class="help-you-bg">
                <div class="container">
                    <div class="row align-items-end">
                        <div class="col-xl-10 col-lg-12 col-md-12 col-sm-12 col-12 offset-xl-1">
                            <div class="help-you-content text-center">
                                <span>Get in Touch With Us</span>
                                <h3 class="py-3">How Can We Help You?</h3>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit, a, ratione animi assumenda aspernatur quam ea, possimus neque est necessitatibus doloribus molestiae culpa! Voluptatibus harum iste esse voluptates ullam quaerat!
                                </p>
                                <a href="blog" class="text-link-format d-inline-block text-uppercase mt-2">See More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="product-banner-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12">
                    <div class=" product-banner--list-product">
                        <div class="m-2">
                            <div class="col-xl-8 col-lg-10 col-md-12 col-sm-12 col-12 offset-xl-2 offset-lg-1">
                                <div class="section-title text-center">
                                    <h2>Best Sellers Product </h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas fugiat deleniti quisquam ex atque! Architecto molestiae facilis odit, voluptate, at minus adipisci voluptatibus quia officiis veritatis, doloribus quod
                                        saepe quidem!</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12 offset-xl-2 offset-lg-1 text-center mb-4">
                            <a class="more__btn" href="product">
                                <svg>
                                    <rect x="0" y="0" fill="none" width="130" height="50"/>
                                </svg> See More
                            </a>
                        </div>
                        <div class=row>
							<%
								for (Product product : productService.showProductByCategoryId(2)) {
							%>
							<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
                                <div class="sm-product__item">
                                    <div class="product__img position-relative overflow-hidden">
                                        <a href="productDetail?productID=<%=product.getId() %>" class="position-relative d-block">
                                            <img src="imageServlet?imageName=<%=product.getImage() %>" alt="Product Image">
                                            <img src="imageServlet?imageName=<%=product.getImage() %>" alt="Product Image" class="hover-img position-absolute">
                                        </a>
                                    </div>
                                    <div class="product__info sm-product__info position-relative">
                                        <div class="sm-product__tag">
                                            <a href="category">bowls,</a>
                                            <a href="category">Living</a>
                                        </div>
                                        <a href="productDetail?productID=<%=product.getId() %>" class="sm-product__name"><%=product.getName() %></a>
                                        <div class="product__action position-relative">
                                            <div class="sm-product__price">
                                                <span class="product__price-current"><%=format.format(product.getPrice()) %></span>
                                                <span class="product__price-old"></span>
                                            </div>
                                            <div class="add-to-cart">
                                                <a href="cart?action=buy&id=<%=product.getId() %>">
                                                    <span class="sm-add-to-cart--icon">
                                                    	<i class="ri-shopping-bag-3-line"></i>
                                                    </span>
                                                    <span class="sm-add-to-cart-title">Add To Cart</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="product__wishlist position-absolute">
                                            <span class="product__like">
                                                <a href="wishlist?action=add&id=<%=product.getId() %>" title="Add to Wishlist">
                                                    <i class="ri-heart-line product__like--icon-empty product__icon"></i>
                                                </a>
                                                <a href="#" title="Add to Wishlist" class="d-none">
                                                    <i class="ri-heart-fill product__like--icon-pill product__icon"></i>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<%
								}
							%>
						</div>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-5 md-display-none sm-display-none xs-display-none">
                    <div class="product-banner-img--right" style="visibility: visible;">
                        <a href="product" class="d-block">
                            <img src="./assets/images/banner-bestseller..png" alt="" class="width100 height100">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
     <div class="subscribe-area-bg">
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
    
    <div class="blog-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-10 col-sm-12 col-12 offset-xl-3 offset-lg-3 offset-md-1">
                    <div class="section-title text-center">
                        <h2>From Our Blog </h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure magnam veritatis maiores, delectus quisquam error, aperiam voluptas labore dolore, nemo perferendis. Animi ipsa assumenda, ad nostrum magni eligendi adipisci alias?</p>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 mt-lg-0">
                    <div class="card">
                        <div class="card-header pt-4 border-0">
                            <div class="media">
                                <div class="media-body">
                                    <p class="mb-0">Eleya Kyamack</p>
                                    <small class="font-italic">VP Business Insights</small>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-sm-5">
                            <div class="row">
                                <div class="col">
                                    <p class="card-body-content">" Growth of data is exponential and our ability to get true insight that matter was challenging with classic, traditional Bi tools. Vertix allow us to unserstand what is driving exceptions so we can take action " </p>
                                </div>
                            </div>
                        </div>
                        <hr class="my-0">
                        <div class="card-footer border-0">
                            <div class="row">
                                <ul class="d-flex justify-content-center">
                                    <li>
                                        <a href=""><i class="ri-twitter-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-facebook-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-google-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-linkedin-fill"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 mt-lg-0">
                    <div class="card">
                        <div class="card-header pt-4 border-0">
                            <div class="media">
                                <div class="media-body">
                                    <p class="mb-0">Eleya Kyamack</p>
                                    <small class="font-italic">VP Business Insights</small>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-sm-5">
                            <div class="row">
                                <div class="col">
                                    <p class="card-body-content">" Growth of data is exponential and our ability to get true insight that matter was challenging with classic, traditional Bi tools. Vertix allow us to unserstand what is driving exceptions so we can take action " </p>
                                </div>
                            </div>
                        </div>
                        <hr class="my-0">
                        <div class="card-footer border-0">
                            <div class="row">
                                <ul class="d-flex justify-content-center">
                                    <li>
                                        <a href=""><i class="ri-twitter-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-facebook-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-google-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-linkedin-fill"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 md-display-none col-sm-12 col-12 mt-lg-0">
                    <div class="card">
                        <div class="card-header pt-4 border-0">
                            <div class="media">
                                <div class="media-body">
                                    <p class="mb-0">Eleya Kyamack</p>
                                    <small class="font-italic">VP Business Insights</small>
                                </div>
                            </div>
                        </div>
                        <div class="card-body px-sm-5">
                            <div class="row">
                                <div class="col">
                                    <p class="card-body-content">" Growth of data is exponential and our ability to get true insight that matter was challenging with classic, traditional Bi tools. Vertix allow us to unserstand what is driving exceptions so we can take action " </p>
                                </div>
                            </div>
                        </div>
                        <hr class="my-0">
                        <div class="card-footer border-0">
                            <div class="row">
                                <ul class="d-flex justify-content-center">
                                    <li>
                                        <a href=""><i class="ri-twitter-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-facebook-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-google-fill"></i></a>
                                    </li>
                                    <li>
                                        <a href=""><i class="ri-linkedin-fill"></i></a>
                                    </li>
                                </ul>
                            </div>
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
    <script>
        window.sr = ScrollReveal({
            reset: true,
            distance: '60px',
            duration: 2800,

        });
        sr.reveal(`.section-title,.home-carousel .carousel-inner .carousel-item img`, {
            origin: 'top',
            interval: 100,
        })
        sr.reveal(`.product-banner-img,.subscribe-title,.carousel-caption`, {
            origin: 'left',
        })
        sr.reveal(`.subscribe-form,.product-banner-img--right,.home-carousel .text`, {
            origin: 'right',
            interval: 100,
        })
        sr.reveal(`.card`, {
            origin: 'bottom',
            interval: 100,
        })
    </script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>
</html>