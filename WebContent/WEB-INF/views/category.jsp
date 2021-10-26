<%@page import="java.util.Locale"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.service.ProductService"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Product"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Category"%>
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
							<span>tinfbe</span>
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
	
	<div class="slider-area">
        <div class="page-title">
            <div class="text text-center">
                <h2>Shop</h2>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center bg-transparent">
                        <li class="breadcrumb-item"><a href="home">Home</a></li>
                        <li class="breadcrumb-item active text-capitalize" aria-current="page"> Shop</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    
    <div class="category container-fluid">
        <div class="row">
            <div class="col-xl-3 col-lg-3 md-display-none sm-display-none xs-display-none">
                <div class="category__left-sidebar overflow-hidden">
                    <div>
                        <div class="sidebar-widget">
                            <h4 class="pb-3">Product Categories</h4>
                            <ul>
								<%
									for(Category pCategory : categoryService.getListParentCategory()) {
								%>
								<li class="accordian">
                                    <div class="accordian-title">
                                        <a href="#" class="pb-15"><%=pCategory.getName() %></a>
                                        <span>
                                            <svg class="svg__accordion" width="13px" height="13px" viewBox="0 0 24 24" aria-labelledby="plusIconTitle"
                                                stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <title id="plusIconTitle">Plus</title>
                                                <path d="M20 12L4 12M12 4L12 20 "/>
                                            </svg>
                                        </span>
                                    </div>
                                    <ul class="accordian-content">
										<%
											for(Category chCategory : categoryService.getListChildCategory(pCategory.getId())) {
										%>
										<li><a href="#" class="d-block pb-15"><%=chCategory.getName() %></a></li>
										<%
											}
										%>
									</ul>
                                </li>
								<%
									}
								%>
							</ul>
                        </div>
                        <div class="sidebar-widget">
                            <h4 class="pb-15">Choose Color</h4>
                            <ul class="color-selector">
                                <li>
                                    <div class="d-flex align-items-center mb-3">
                                        <input type="checkbox" class="option-input radio p-d-blue" name="example">
                                        <a href="#"><span class="pl-15">Dark blue</span></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center mb-3">
                                        <input type="checkbox" class="option-input radio p-l-black" name="example">
                                        <a href="#"><span class="pl-15 ">Light black</span></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center mb-3">
                                        <input type="checkbox" class="option-input radio p-gray" name="example">
                                        <a href="#"><span class="pl-15">Gray</span></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center mb-3">
                                        <input type="checkbox" class="option-input radio p-green" name="example">
                                        <a href="#"><span class="pl-15">Green</span></a>
                                    </div>
                                </li>
                                <li>
                                    <div class="d-flex align-items-center mb-3">
                                        <input type="checkbox" class="option-input radio p-pink" name="example">
                                        <a href="#"><span class="pl-15">Pink</span></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="sidebar-widget">
                            <h4 class="pb-15">Popular Tags</h4>
                            <ul class="search-tag">
                                <li><a href="#">Art<span>(3)</span></a></li>
                                <li><a href="#">Bathroom<span>(2)</span></a></li>
                                <li><a href="#">Bowls <span>(9)</span></a></li>
                                <li><a href="#">Clocks<span>(4)</span></a></li>
                                <li><a href="#">Decor<span>(2</span></a></li>
                                <li><a href="#">Dining<span>(9)</span></a></li>
                                <li><a href="#">Flowerpots<span>(6)</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                <div class="category__right">
                    <div class="shop-header-area">
                        <div>
                            <div class="row align-items-center mt-1 pb-3">
                                <div class="col-xl-4 col-lg-4 md-display-none sm-display-none xs-display-none">
                                    <div class="shop-title">
                                        <h6 class="mb-0">Showing all 12 results</h6>
                                    </div>
                                </div>
                                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12 d-sm-flex pr-0 align-items-center justify-content-end">
                                    <div class="view-mode d-flex align-items-center">
                                        <span class="mr-4">Views: </span>
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item">
                                                <a class="nav-link active p-tab-btn" id="list__product-grid--tab" data-toggle="tab" href="#list__product-grid" role="tab" aria-controls="list__product-grid" aria-selected="true" title="Grid">
                                                    <span class="icon-grid">
                                                        <i class="ri-layout-grid-fill"></i>
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link p-tab-btn" id="list__product-list--tab" data-toggle="tab" href="#list__product-list" role="tab" aria-controls="list__product-list " aria-selected="false" title="List">
                                                    <span class="icon-list">
                                                        <i class="ri-list-unordered"></i>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-product__category tab-content">
                        <div class="tab-pane active in" role="tabpanel" aria-labelledby="list__product-grid--tab" id="list__product-grid">
                            <div class="product-tab-grid row">
								<%
									for(Product product : productService.showAllProduct()) {
								%>
								<div class="col-xl-3 col-lg-3 col-md-3 col-sm-4 col-6">
                                    <div class="sm-product__item">
                                        <div class="product__img position-relative overflow-hidden">
                                            <div class="product__label product__label-sale position-absolute">
                                                <span class="label__sale text-white d-block mb-1">Sale</span>
                                            </div>
                                            <a class="position-relative d-block">
                                                <img src="imageServlet?imageName=<%=product.getImage() %>">
                                                <img src="imageServlet?imageName=<%=product.getImage() %>" class="hover-img position-absolute">
                                            </a>

                                        </div>
                                        <div class="product__info sm-product__info position-relative">
                                            <div class="sm-product__tag">
                                                <a href="#" target="_blank">bowls,</a>
                                                <a href="#" target="_blank">Dining</a>
                                            </div>
                                            <p class="sm-product__name"><%=product.getName() %></p>
                                            <div class="product__action position-relative">
                                                <div class="sm-product__price">
                                                    <span class="product__price-current"><%=format.format(product.getPrice()) %></span>
                                                    <span class="product__price-old"><%=format.format(product.getPrice()) %></span>
                                                </div>
                                                <div class="add-to-cart">
                                                    <a href="cart?action=buy&id=<%=product.getId() %>" class="text-dark">
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
                                                    <a title="Add to Wishlist" class="d-none">
                                                        <i class="ri-heart-fill product__like--icon-pill product__icon"></i>
                                                    </a>
                                                    <a href="productDetail?productID=<%=product.getId() %>" title="See More">
                                                        <i class="ri-search-eye-line product__see-more product__icon"></i>
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
                        <div class="tab-pane fade" role="tabpanel" aria-labelledby="list__product-list--tab" id="list__product-list">
                            <div class="product-tab-list row ">
								<%
									for(Product product : productService.showProductByCategoryId(1)) {
								%>
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pl-4 mb-50 ">
                                    <div class="product-tab-list--item ">
                                        <div class="row">
                                            <div class="product__img position-relative overflow-hidden col-xl-4 col-lg-4 col-md-4 col-sm-12 col-12 px-0">
                                                <div class="product__label product__label-new product-tab-list--label position-absolute">
                                                    <span class="label__new bg-dark text-white d-block">New</span>
                                                </div>
                                                <a href="#" class="position-relative d-block">
                                                    <img src="imageServlet?imageName=<%=product.getImage() %>" alt="Product Image">
                                            <img src="imageServlet?imageName=<%=product.getImage() %>" alt="Product Image" class="hover-img position-absolute">
                                                </a>
                                            </div>
                                            <div class="product__info product-tab-list--info position-relative col-xl-8 col-lg-8 col-md-8 col-sm-12 col-12 pl-4 ">
                                                <div class="product-tab-list--tag product__tag ">
                                                    <a href="#">bowls,</a>
                                                    <a href="#">Dining</a>
                                                </div>
                                                <p class="product__name product-tab-list--name"><%=product.getName() %></p>
                                                <div class="product__price product-tab-list--price">
                                                    <span class="product__price-current product-tab-list--price-current"><%=format.format(product.getPrice()) %></span>
                                                    <span class="product__price-old product-tab-list--price-old"><%=format.format(product.getPrice()) %></span>
                                                </div>
                                                <p class="product-tab-list--description">
                                                	<%=product.getDescription() %>
                                                </p>
                                                <p class="mb-1 product-tab-list--type">
                                                    – Light green crewneck sweatshirt.<br> 
                                                    – Hand pockets.<br> 
                                                    – Relaxed fit.
                                                </p>
                                                <div class="all-info d-sm-flex align-items-center">
                                                    <div class="quick-add-to-cart d-lg-flex align-items-center mt-1">
                                                        <a href="cart?action=buy&id=<%=product.getId() %>" class="sub-btn d-inline-block transition-3" title="Add To Cart">Add to cart</a>
                                                    </div>
                                                    <ul class="single-product-list-button d-flex align-items-center mt-4">
                                                        <button  class="bg-transparent">
                                                            <a href="wishlist?action=add&id=<%=product.getId() %>" class="d-block" title="Add To Wishlist">
                                                            	<span class="ri-heart-3-line"></span>
                                                            </a>
                                                        </button>
                                                        <button  class="bg-transparent">
                                                            <a href="productDetail?productID=<%=product.getId() %>" class="d-block" title="See More">
                                                            	<span><i class="ri-search-eye-line"></i></span>
                                                            </a>
                                                        </button>
                                                    </ul>
                                                </div>
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
        <div class="row mt-20 mb-50">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 d-flex justify-content-center">
                <a class="more-view-btn d-inline-block border-light-gray2 white-bg theme-color text-capitalize" href="#">Load more products</a>
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
                <div class="col-lg-4 col-md-6 col-sm-12 col-12 mt-lg-0">
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
                <div class="col-lg-4 col-md-6 col-sm-12 col-12 mt-lg-0">
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
                <div class="col-lg-4 col-md-6 col-sm-12 col-12 mt-lg-0">
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
        sr.reveal(`.service__item,.section-title`, {
            origin: 'top',
            interval: 100,
        })
        sr.reveal(`.product-banner-img,.subscribe-title,.carousel-caption`, {
            origin: 'left',
        })
        sr.reveal(`.subscribe-form,.product-banner-img--right`, {
            origin: 'right',
            interval: 100,
        })
        sr.reveal(`.sm-product__item,.card`, {
            origin: 'bottom',
            interval: 100,
        })
    </script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>
</html>