
<%@page import="com.anhtien.tinfbefurnituremanagement.service.CategoryService"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Category"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Product"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.service.ProductService"%>
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
		ProductService productService = new ProductService();
		Locale locale = new Locale("vi","VN");
		NumberFormat format = NumberFormat.getCurrencyInstance(locale);
		format.setMinimumIntegerDigits(0);
		CategoryService categoryService = new CategoryService();
	%>
	<header id="header" class="header">
		<div class="container-fluid">
			<div class="row align-items-center justify-content-lg-between position-relative">
				<div class="col-xl-5 col-lg-5 col-md-4 col-sm-3 col-3 p-0 position-static">
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
									<a href="#" class="header__navbar-item-link active">Store</a>
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
							<span>Tinfbe<small class="logo__format">Fur</small></span>
						</a>
					</div>
				</div>
				<div class="col-xl-5 col-lg-5 col-md-4 col-sm-3 col-3 px-0 text-right">
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
	
	<div class="home-area">
        <div class="home__container container">
            <div class="background-overlay"></div>
            <div class="shape shape-bottom" data-negative="false">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none">
                    <path opacity="0.33"
                        d="M473,67.3c-203.9,88.3-263.1-34-320.3,0C66,119.1,0,59.7,0,59.7V0h1000v59.7 c0,0-62.1,26.1-94.9,29.3c-32.8,3.3-62.8-12.3-75.8-22.1C806,49.6,745.3,8.7,694.9,4.7S492.4,59,473,67.3z">
                    </path>
                    <path opacity="0.66"
                        d="M734,67.3c-45.5,0-77.2-23.2-129.1-39.1c-28.6-8.7-150.3-10.1-254,39.1 s-91.7-34.4-149.2,0C115.7,118.3,0,39.8,0,39.8V0h1000v36.5c0,0-28.2-18.5-92.1-18.5C810.2,18.1,775.7,67.3,734,67.3z">
                    </path>
                    <path
                        d="M766.1,28.9c-200-57.5-266,65.5-395.1,19.5C242,1.8,242,5.4,184.8,20.6C128,35.8,132.3,44.9,89.9,52.5C28.6,63.7,0,0,0,0 h1000c0,0-9.9,40.9-83.6,48.1S829.6,47,766.1,28.9z">
                    </path>
                </svg>
            </div>
            <div class="row align-items-center">
                <div class="home__data col-xl-8 col-lg-10 col-md-12 col-sm-12 col-12 offset-xl-2 offset-lg-1 text-center">
                    <h3>welcome to tinfbe furniture</h3>
                    <h1>Welcome To Furniture Store</h1>
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Autem commodi, illum neque asperiores earum assumenda natus vitae sed porro officia esse molestias a sunt itaque necessitatibus, corporis odit est id!</p>
                </div>
            </div>
        </div>
    </div>
    
     <div class="top-product-category-area overflow-hidden section__area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-6 pb-4">
                    <div class="top-product-category--item position-relative overflow-hidden">
                        <a href="category" class="d-block">
                            <img src="./assets/images/product-top-banner1.png" alt="" class="top-product-category--item-img">
                        </a>
                        <div class="top-product-category--name position-absolute transition-3">
                            <h6 class="mb-0"><a class="text-capitalize">Decor</a></h6>
                            <span>(20 items)</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                    <div class="top-product-category--item position-relative overflow-hidden">
                        <a href="category" class="d-block">
                            <img src="./assets/images/product-top-banner2.png" alt="" class="top-product-category--item-img">
                        </a>
                        <div class="top-product-category--name position-absolute transition-3">
                            <h6 class="mb-0"><a class="text-capitalize">Floor</a></h6>
                            <span>(20 items)</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                    <div class="top-product-category--item position-relative overflow-hidden">
                        <a href="category" class="d-block">
                            <img src="./assets/images/product-top-banner3.png" alt="" class="top-product-category--item-img">
                        </a>
                        <div class="top-product-category--name position-absolute transition-3">
                            <h6 class="mb-0"><a class="text-capitalize">Outdoor</a></h6>
                            <span>(20 items)</span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                    <div class="top-product-category--item position-relative overflow-hidden">
                        <a href="category" class="d-block">
                            <img src="./assets/images/product-top-banner4.png" alt="" class="top-product-category--item-img">
                        </a>
                        <div class="top-product-category--name position-absolute transition-3">
                            <h6 class="mb-0"><a class="text-capitalize">Ceiling Lights</a>
                            </h6>
                            <span>(20 items)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <section class="features section__area">
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-xl-6 col-lg-6 col-md-10 col-sm-12 col-12 offset-xl-3 offset-lg-3 offset-md-1">
                    <div class="section-title">
                        <h2>#Features</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas fugiat deleniti quisquam ex atque! Architecto molestiae facilis odit, voluptate, at minus adipisci voluptatibus quia officiis veritatis, doloribus quod saepe quidem!</p>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="feature__tab">
                    <div class="feature__heading">
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                                <a class="nav-link active" id="chairs__tab" data-toggle="tab" href="#chairs" role="tab" aria-controls="chairs" aria-selected="true">
                                    <span>Living</span>
                                    <sup>17</sup>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="tables__tab" data-toggle="tab" href="#tables" role="tab" aria-controls="tables" aria-selected="false">
                                    <span>Bedroom</span>
                                    <sup>17</sup>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="lightings__tab" data-toggle="tab" href="#lightings" role="tab" aria-controls="lightings" aria-selected="false">
                                    <span>Dining</span>
                                    <sup>17</sup>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="decor__tab" data-toggle="tab" href="#decor" role="tab" aria-controls="decor" aria-selected="false">
                                    <span>Storage</span>
                                    <sup>17</sup>
                                </a>
                            </li>
                            <li class="nav-item sm-display-none xs-display-none">
                                <a class="nav-link" id="accessories__tab" data-toggle="tab" href="#accessories" role="tab" aria-controls="accessories" aria-selected="false">
                                    <span>Decor</span>
                                    <sup>17</sup>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active in" role="tabpanel" aria-labelledby="chairs__tab" id="chairs">
                            <div class="feature__list">
                                <div class="row">
									<%
										for(Product product : productService.showProductByCategoryId(1)) {
									%>
									<div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                        <div class="feature__item product__item">
                                            <div class="feature__item-img product__img position-relative overflow-hidden">
                                                <div class="feature__item-label-sale product__label position-absolute">
                                                    <span class="text-white d-block mb-1">Sale</span>
                                                </div>
                                                <a class="position-relative d-block">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" class="hover-img position-absolute">
                                                </a>
                                            </div>
                                            <div class="feature__item-info product__info position-relative">
                                                <div class="feature__item-tag product__tag">
                                                    <a href="#">bowls,</a>
                                                    <a href="#">Dining</a>
                                                </div>
                                                <p class="feature__item-name product__name"><%=product.getName() %></p>
                                                <div class="feature__item-action product__action position-relative">
                                                    <div class="feature__item-price product__price">
                                                        <span class="feature__item-price--current product__price-current"><%=format.format(product.getPrice()) %></span>
                                                        <span class="feature__item-price--old product__price-old"><%=format.format(product.getPrice()) %></span>
                                                    </div>
                                                    <div class="add-to-cart">
                                                        <a href="cart?action=buy&id=<%=product.getId() %>">
                                                            <span class="add-to-cart--icon">
                                                            	<i class="ri-shopping-bag-3-line"></i>
                                                            </span>
                                                            <span class="add-to-cart-title">Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="feature__item-wishlist product__wishlist position-absolute">
                                                    <span class="feature__item-like feature__item-like--liked product__like">
                                                    <a href="wishlist?action=add&id=<%=product.getId() %>">
                                                        <i class="ri-heart-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="productDetail?productID=<%=product.getId() %>">
                                                        <i class="ri-search-eye-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="" title="Add to Wishlist" class="d-none">
                                                        <i class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon"></i>
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
                        <div class=" tab-pane fade" role="tabpanel" aria-labelledby="tables__tab" id="tables">
                            <div class="feature__list">
                                <div class="row">
                                	<%
										for(Product product : productService.showProductByCategoryId(2)) {
									%>
                                    <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                        <div class="feature__item product__item">
                                            <div class="feature__item-img product__img position-relative overflow-hidden">
                                                <div class="feature__item-label-sale product__label position-absolute">
                                                    <span class="text-white d-block mb-1">Sale</span>
                                                </div>
                                                <a href="#" class="position-relative d-block">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="hover-img position-absolute">
                                                </a>
                                            </div>
                                            <div class="feature__item-info product__info position-relative">
                                                <div class="feature__item-tag product__tag">
                                                    <a href="#">bowls,</a>
                                                    <a href="#">Dining</a>
                                                </div>
                                                <p class="feature__item-name product__name"><%=product.getName() %></p>
                                                <div class="feature__item-action product__action position-relative">
                                                    <div class="feature__item-price product__price">
                                                        <span class="feature__item-price--current product__price-current"><%=format.format(product.getPrice()) %></span>
                                                        <span class="feature__item-price--old product__price-old">0</span>
                                                    </div>
                                                    <div class="add-to-cart">
                                                       <a href="cart?action=buy&id=<%=product.getId() %>">
                                                            <span class="add-to-cart--icon">
                                                            	<i class="ri-shopping-bag-3-line"></i>
                                                            </span>
                                                            <span class="add-to-cart-title">Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="feature__item-wishlist product__wishlist position-absolute">
                                                    <span class="feature__item-like feature__item-like--liked product__like">
                                                    <a href="wishlist?action=add&id=<%=product.getId() %>">
                                                        <i class="ri-heart-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="productDetail?productID=<%=product.getId() %>">
                                                        <i class="ri-search-eye-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="#" title="Add to Wishlist" class="d-none">
                                                        <i class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon"></i>
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
                        <div class=" tab-pane fade" role="tabpanel" aria-labelledby="lightings__tab" id="lightings">
                            <div class="feature__list">
                                <div class="row">
                                	<%
										for(Product product : productService.showProductByCategoryId(3)) {
									%>
                                    <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                        <div class="feature__item product__item">
                                            <div class="feature__item-img product__img position-relative overflow-hidden">
                                                <div class="feature__item-label-sale product__label position-absolute">
                                                    <span class="text-white d-block mb-1">Sale</span>
                                                </div>
                                                <a href="#" class="position-relative d-block">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="hover-img position-absolute">
                                                </a>
                                            </div>
                                            <div class="feature__item-info product__info position-relative">
                                                <div class="feature__item-tag product__tag">
                                                    <a href="#">bowls,</a>
                                                    <a href="#">Dining</a>
                                                </div>
                                                <p class="feature__item-name product__name"><%=product.getName() %></p>
                                                <div class="feature__item-action product__action position-relative">
                                                    <div class="feature__item-price product__price">
                                                        <span class="feature__item-price--current product__price-current"><%=format.format(product.getPrice()) %></span>
                                                        <span class="feature__item-price--old product__price-old">0</span>
                                                    </div>
                                                    <div class="add-to-cart">
                                                       <a href="#" data-name="Wood design bedroom clock" data-price="9" class="shopping-cart">
                                                            <span class="add-to-cart--icon">
                                                            	<i class="ri-shopping-bag-3-line"></i>
                                                            </span>
                                                            <span class="add-to-cart-title">Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="feature__item-wishlist product__wishlist position-absolute">
                                                    <span class="feature__item-like feature__item-like--liked product__like">
                                                    <a href="wishlist?action=add&id=<%=product.getId() %>">
                                                        <i class="ri-heart-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="productDetail?productID=<%=product.getId() %>">
                                                        <i class="ri-search-eye-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="#" title="Add to Wishlist" class="d-none">
                                                        <i class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon"></i>
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
                        <div class=" tab-pane fade" role="tabpanel" aria-labelledby="decor__tab" id="decor">
                            <div class="feature__list">
                                <div class="row">
                                	<%
										for(Product product : productService.showProductByCategoryId(4)) {
									%>
                                    <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                        <div class="feature__item product__item">
                                            <div class="feature__item-img product__img position-relative overflow-hidden">
                                                <div class="feature__item-label-sale product__label position-absolute">
                                                    <span class="text-white d-block mb-1">Sale</span>
                                                </div>
                                                <a href="#" class="position-relative d-block">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="hover-img position-absolute">
                                                </a>
                                            </div>
                                            <div class="feature__item-info product__info position-relative">
                                                <div class="feature__item-tag product__tag">
                                                    <a href="#">bowls,</a>
                                                    <a href="#">Dining</a>
                                                </div>
                                                <p class="feature__item-name product__name"><%=product.getName() %></p>
                                                <div class="feature__item-action product__action position-relative">
                                                    <div class="feature__item-price product__price">
                                                        <span class="feature__item-price--current product__price-current"><%=format.format(product.getPrice()) %></span>
                                                        <span class="feature__item-price--old product__price-old">0</span>
                                                    </div>
                                                    <div class="add-to-cart">
                                                       <a href="cart?action=buy&id=<%=product.getId() %>">
                                                            <span class="add-to-cart--icon">
                                                            	<i class="ri-shopping-bag-3-line"></i>
                                                            </span>
                                                            <span class="add-to-cart-title">Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="feature__item-wishlist product__wishlist position-absolute">
                                                    <span class="feature__item-like feature__item-like--liked product__like">
                                                    <a href="wishlist?action=add&id=<%=product.getId() %>">
                                                        <i class="ri-heart-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="productDetail?productID=<%=product.getId() %>">
                                                        <i class="ri-search-eye-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="#" title="Add to Wishlist" class="d-none">
                                                        <i class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon"></i>
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
                        <div class=" tab-pane fade" role="tabpanel" aria-labelledby="accessories__tab" id="accessories">
                            <div class="feature__list">
                                <div class="row">
                                	<%
										for(Product product : productService.showProductByCategoryId(5)) {
									%>
                                    <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                        <div class="feature__item product__item">
                                            <div class="feature__item-img product__img position-relative overflow-hidden">
                                                <div class="feature__item-label-sale product__label position-absolute">
                                                    <span class="text-white d-block mb-1">Sale</span>
                                                </div>
                                                <a href="#" class="position-relative d-block">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="" class="hover-img position-absolute">
                                                </a>
                                            </div>
                                            <div class="feature__item-info product__info position-relative">
                                                <div class="feature__item-tag product__tag">
                                                    <a href="#">bowls,</a>
                                                    <a href="#">Dining</a>
                                                </div>
                                                <p class="feature__item-name product__name"><%=product.getName() %></p>
                                                <div class="feature__item-action product__action position-relative">
                                                    <div class="feature__item-price product__price">
                                                        <span class="feature__item-price--current product__price-current"><%=format.format(product.getPrice()) %></span>
                                                        <span class="feature__item-price--old product__price-old">0</span>
                                                    </div>
                                                    <div class="add-to-cart">
                                                       <a href="cart?action=buy&id=<%=product.getId() %>">
                                                            <span class="add-to-cart--icon">
                                                            	<i class="ri-shopping-bag-3-line"></i>
                                                            </span>
                                                            <span class="add-to-cart-title">Add To Cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="feature__item-wishlist product__wishlist position-absolute">
                                                    <span class="feature__item-like feature__item-like--liked product__like">
                                                    <a href="wishlist?action=add&id=<%=product.getId() %>">
                                                        <i class="ri-heart-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="productDetail?productID=<%=product.getId() %>">
                                                        <i class="ri-search-eye-line product__see-more product__icon"></i>
                                                    </a>
                                                    <a href="#" title="Add to Wishlist" class="d-none">
                                                        <i class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon"></i>
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
                    <div class="row my-4">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 d-flex justify-content-center">
                            <a class="more-view-btn d-inline-block border-light-gray2 white-bg theme-color text-capitalize" href="">view more products</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <div class="sale-off-area section__area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                    <div class="sale-off__item overflow-hidden">
                        <div class="sale-off__img position-relative">
                            <a href="#" class="d-block">
                                <img src="./assets/images/sale-off-img1.png" width="100%" alt="">
                            </a>
                            <div class="sale-off__text position-absolute">
                                <p class="mb-2">
                                    <a href="#">Products Essentials </a>
                                </p>
                                <h3>
                                    <a href="#">Sale Off Home Accessories</a>
                                </h3>
                                <div class="sale-off__price">
                                    <a href="#" class="slider-btn text-uppercase pb-1">
                                        <span>Buy now /</span>
                                        <span>$16.99</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                    <div class="sale-off__item overflow-hidden">
                        <div class="sale-off__img position-relative">
                            <a href="#" class="d-block">
                                <img src="./assets/images/sale-off-img2.png" width="100%" alt="">
                            </a>
                            <div class="sale-off__text sale-off__text-bottom position-absolute">
                                <p class="mb-2">
                                    <a href="#">Products Essentials </a>
                                </p>
                                <h3>
                                    <a href="#">Sale Off Home Accessories</a>
                                </h3>
                                <div class="sale-off__price">
                                    <a href="#" class="slider-btn text-uppercase pb-1">
                                        <span>Buy now /</span>
                                        <span>$16.99</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 sm-display-none xs-display-none">
                    <div class="sale-off__item overflow-hidden">
                        <div class="sale-off__img position-relative">
                            <a href="#" class="d-block">
                                <img src="./assets/images/sale-off-img3.png" width="100%" alt="">
                            </a>
                            <div class="sale-off__text position-absolute">
                                <p class="mb-2">
                                    <a href="#">Products Essentials </a>
                                </p>
                                <h3>
                                    <a href="#">Sale Off Home Accessories</a>
                                </h3>
                                <div class="sale-off__price">
                                    <a href="#" class=" slider-btn text-uppercase pb-1">
                                        <span>Buy now /</span>
                                        <span>$16.99</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="subscribe-area section__area">
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
    <script>
        window.sr = ScrollReveal({
            reset: true,
            distance: '60px',
            duration: 2800,

        });
        sr.reveal(`.service__item,.section-title,.top-product-category-area`, {
            origin: 'top',
            interval: 100,
        })
        sr.reveal(`.subscribe-title,.carousel-caption`, {
            origin: 'left',
        })
        sr.reveal(`.subscribe-form,.sale-off__item`, {
            origin: 'right',
            interval: 100,
        })
        sr.reveal(`.product__item`, {
            origin: 'bottom',
            interval: 100,
        })
    </script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>
</html>