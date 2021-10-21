
<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Product"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.NumberFormat"%>
<%@page
	import="com.anhtien.tinfbefurnituremanagement.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--Bootstrap CSS-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">

<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">
<title>TINFBE.COM | Elevate The Style Of Your Home</title>
<link rel="shortcut icon" href="./assets/images/shortcut-icon.png">

<!--Link CSS-->
<link rel="stylesheet" href="./assets/css/style.css">
<link rel="stylesheet" href="./assets/css/responsive.css">
</head>
<body>

	<%
		ProductService productService = new ProductService();
		Locale locale = new Locale("vi", "VN");
		NumberFormat format = NumberFormat.getCurrencyInstance(locale);
		format.setMinimumIntegerDigits(0);
	%>
	<jsp:include page="header.jsp"></jsp:include>
	
	<%
		for (Product product : productService.getDetailProduct(Integer.parseInt(request.getParameter("productID")))) {
	%>
	<div class="slider-area over-hidden">	
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12  col-lg-12  col-md-12  col-sm-12 col-12">
					<div class="page-title">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb bg-transparent">
								<li class="breadcrumb-item"><a href="home">Home</a></li>
								<li class="breadcrumb-item"><a href="category">Shop</a></li>
								<li class="breadcrumb-item active text-capitalize"
									aria-current="page"><%=product.getName() %></li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="product__detail">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-6 col-ld-6 col-md-6 col-sm-12 col-12">
					<div class="product-left-img-tab d-flex">
						<div id="carousel__product-detail" class="carousel slide"
							data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item product__detail-img active">
									<img src="imageServlet?imageName=<%=product.getImage() %>" class="rounded"
										alt="Product Image">
								</div>
								<div class="carousel-item product__detail-img">
									<img src="./assets/images/product__chair2-hover.png"
										class="rounded" alt="Product Image">
								</div>
								<div class="carousel-item product__detail-img">
									<img src="./assets/images/product__chair1.png" class="rounded"
										alt="Product Image">
								</div>
							</div>
							<ol class="carousel-indicators list-inline">
								<li class="list-inline-item active"><a
									id="carousel-selector-0" class="selected" data-slide-to="0"
									data-target="#carousel__product-detail"> <img
										src="imageServlet?imageName=<%=product.getImage() %>" class="img-fluid"
										alt="Product Image">
								</a></li>
								<li class="list-inline-item"><a id="carousel-selector-1"
									data-slide-to="1" data-target="#carousel__product-detail">
										<img src="./assets/images/product__chair2-hover.png"
										class="img-fluid" alt="Product Image">
								</a></li>
								<li class="list-inline-item"><a id="carousel-selector-2"
									data-slide-to="2" data-target="#carousel__product-detail">
										<img src="./assets/images/product__chair1.png"
										class="img-fluid" alt="Product Image">
								</a></li>
							</ol>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
					<div class="product-view-info">
						<div class="product-left-img-info">
							<div class="single-product-tag">
								<a href="category" class="primary-color mr-1">Decor,</a> <a
									href="category" class="primary-color">Flowerpots</a>
							</div>
							<h3><%=product.getName() %></h3>
							<div class="rating rating-shop mb-15 ">
								<ul class="d-inline-flex p-0">
									<li><span><i class="ri-star-s-fill"></i></span></li>
									<li><span><i class="ri-star-s-fill"></i></span></li>
									<li><span><i class="ri-star-s-fill"></i></span></li>
									<li><span><i class="ri-star-s-fill"></i></span></li>
									<li><span><i class="ri-star-s-line"></i></span></li>
								</ul>
								<span class="add-review"><a href="#">2 customer
										reviews</a></span>
							</div>
							<div class="p-info-img-price">
								<span class="d-block"><%=format.format(product.getPrice()) %></span>
							</div>
							<p><%=product.getDescription() %></p>
							<p class="pb-15">
								– Light green crewneck sweatshirt.<br> 
								– Hand pockets.<br>
								– Relaxed fit.
							</p>
							<div class="all-info d-sm-flex align-items-center pb-50">
                                <div class="all-info d-sm-flex align-items-center">
                                    <div class="quick-add-to-cart d-lg-flex align-items-center">
                                        <button class="sub-btn d-inline-block mt-4 mr-4 transition-3">
                                            <a href="cart?action=buy&id=<%=product.getId() %>" class="cart__item">Add To Cart</a>
                                        </button>
                                    </div>
                                </div>
                            </div>
							<div class="sku mt-20 ">
								<span class="text-uppercase">SKU: <span>3-1</span></span>
							</div>
							<div class="mega-product pt-2 pr-150">
								<ul>
									<li class="theme-color"><span>Categories:</span></li>
									<li><a href="category">Chair &amp; Tables,</a></li>
									<li><a href="category">Chest of Drawers,</a></li>
									<li><a href="category">Deco,</a></li>
									<li><a href="category">Floor,</a></li>
									<li><a href="category">Home Accessories,</a></li>
									<li><a href="category">Lighting,</a></li>
									<li><a href="category">Outdoor,</a></li>
									<li><a href="category">Tables lamp,</a></li>
									<li><a href="category">Wall lights,</a></li>
									<li><a href="category">Bedroom</a></li>
									<li><a href="category">Chair &amp; Tables H6,</a></li>
								</ul>
							</div>
							<ul class="p-tags theme-color mt-2 pb-15 border-b-light-gray">
								<li><span>Tags:</span></li>
								<li><a href="category">Decor,</a></li>
								<li><a href="category">Bedroom</a></li>
							</ul>
						</div>
						<div class="social-link-view-info d-sm-flex mt-20">
							<span class="pr-15 d-block">Share this product</span>
							<ul>
								<li title="Facebook"><a href="#"><i
										class="ri-facebook-fill"></i></a></li>
								<li title="Twitter"><a href="#"><i
										class="ri-twitter-fill"></i></a></li>
								<li title="Pinterest"><a href="#"><i
										class="ri-pinterest-line"></i></a></li>
								<li title="Google-plus"><a href="#"><i
										class="ri-google-line "></i></a></li>
								<li title="Linkedin"><a href="#"><i
										class="ri-linkedin-fill"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	%>
	<div class="container-fluid">
		<div class="product__description-review">
			<nav class="d-flex justify-content-center">
				<div class="nav review-tabs product-view-tab" id="nav-tab"
					role="tablist">
					<a class="nav-item nav-link px-0 mr-5 pb-1 active show"
						id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
						aria-controls="nav-home" aria-selected="true">Description</a> <a
						class="nav-item nav-link px-0 mr-5 pb-1" id="nav-review-tab"
						data-toggle="tab" href="#nav-review" role="tab"
						aria-controls="nav-review" aria-selected="false">Reviews (2)</a>
				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade mt-20 active show" id="nav-home"
					role="tabpanel" aria-labelledby="nav-home-tab">
					<div class="describe-area">
						<div class="product-details-text">
							<h6 class="mb-25">Detail Products</h6>
							<p>Designed by Hans J. Wegner in 1949 as one of the first
								models created especially for Carl Hansen &amp; Son, and
								produced since 1950. The last of a series of chairs Wegner
								designed based on inspiration from antique Chinese armchairs.
								The gently rounded top together with the back and seat offers a
								variety of comfortable seating positions, ideal for both long
								visits to the dining table and relaxed lounging. A light chair,
								easy to move around the dining table and about the room.!</p>
							<h6 class="mb-25 mt-20">Detail Products</h6>
							<p>– The characteristic “Y” provides comfortable back support
								and stability to the steam-bent top, also inspiring the chair’s
								names</p>
							<p>– The Wishbone Chair” or “The Y-Chair”</p>
							<p>– An excellent example of Wegner’s constant striving
								towards organic simplicity to create sculptural beauty, comfort
								and outstanding stability.</p>
							<p>– Qui sequitur mutationem consuetudium lectorum.</p>
							<p>– Claritas est etiam processus dynamicus.</p>
							<p>– Qui sequitur mutationem consuetudium lectorum.</p>
							<p class="mt-20">It has survived not only five centuries, but
								also the leap into electronic typesetting, remaining essentially
								unchanged. It was popularised in the 1960s with the release.</p>
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="nav-review" role="tabpanel"
					aria-labelledby="nav-review-tab">
					<div class="review-comments-area pt-100">
						<ul
							class="d-flex align-items-center border-b-light-gray pt-30 pb-50">
							<li><img class="avatar-img width100 height100"
								src="./assets/images/avatar1.png"></li>
							<li class="review-text ml-4"><span> <strong>Admin</strong>
									<em>(verified owner)</em> – <span>July 16, 2018:</span>
							</span> <span class="mt-3 d-block">5 star</span></li>
						</ul>
						<ul
							class="d-flex align-items-center border-b-light-gray pt-30 pb-50">
							<li><img class="avatar-img width100 height100"
								src="./assets/images/avatar1.png"></li>
							<li class="review-text ml-4"><span> <strong>Admin</strong>
									<em>(verified owner)</em> – <span>July 16, 2018:</span>
							</span>
								<p class="mt-20 mb-0">Love this color and type These bottles
									are perfect for my purpose, which is to display souvenir beach
									sand in a shadow box with other small items from my seashell
									collection. I bought the three inchers. I found the quality
									quite satisfactory.thank you for this product.</p></li>
						</ul>
					</div>
					<div class="reply-form contact-form-right mb-15 mt-20">
						<form action="#">
							<div class="comment">
								<label>Your Review</label>
								<textarea name="message" class="form-control mt-10" id="message"></textarea>
							</div>
							<div class="name-and-email">
								<label class="mt-20">Name *</label>
								<div class="name">
									<input type="text" name="r-name" id="r-name">
								</div>
								<label class="mt-20 ">Email *</label>
								<div class="email ">
									<input type="email" name="email" id="r-email">
								</div>
							</div>
							<div class="save-info my-4">
								<input class="p-0" type="checkbox"
									aria-label="Checkbox for following text input"> <span
									class="mb-0">Save my name, email, and website in this
									browser for the next time I comment. </span>
							</div>
							<a href="#"
								class="review-btn d-inline-block transition text-uppercase">Submit</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section class="features ">
		<div class="container-fluid ">
			<div class="row ">
				<div
					class="col-xl-6 col-lg-6 col-md-10 col-sm-12 col-12 offset-xl-3 offset-lg-3 offset-md-1">
					<div class="section-title text-center ">
						<h2 class="pb-20 ">#Related products</h2>
						<p>Nam liber tempor cum soluta nobis eleifend option congue
							nihil. Doming id quod mazim placerat facer possim assum. Typi non
							habent claritatem insitam.</p>
					</div>
				</div>
			</div>
			<div class="row px-2 mt-20 mb-50 ">
				<div class="col-lg-3 col-md-3 col-sm-6 col-6 ">
					<div class="feature__item product__item ">
						<div
							class="feature__item-img product__img position-relative overflow-hidden ">
							<div
								class="feature__item-label-sale product__label position-absolute ">
								<span class="text-white d-block mb-1 ">Sale</span>
							</div>
							<a href="# " class="position-relative d-block "> <img
								src="assets/images/product__lighting2.png " alt=" " class=" ">
								<img src="assets/images/product__lighting2-hover.png " alt=" "
								class="hover-img position-absolute ">
							</a>
						</div>
						<div class="feature__item-info product__info position-relative ">
							<div class="feature__item-tag product__tag ">
								<a href="# ">bowls,</a> <a href="# ">Dining</a>
							</div>
							<p class="feature__item-name product__name ">Designs Woolrich
								Klettersack</p>
							<div
								class="feature__item-action product__action position-relative ">
								<div class="feature__item-price product__price ">
									<span
										class="feature__item-price--current product__price-current ">$34.32</span>
									<span class="feature__item-price--old product__price-old ">$345.56</span>
								</div>
								<div class="add-to-cart ">
									<a href="# " class="text-dark "> <span
										class="add-to-cart--icon "><i
											class="ri-shopping-bag-3-line "></i></span> <span
										class="add-to-cart-title ">Add To Cart</span>
									</a>
								</div>
							</div>
							<div
								class="feature__item-wishlist product__wishlist position-absolute ">
								<span
									class="feature__item-like feature__item-like--liked product__like ">
									<a href=" "> <i
										class="ri-heart-line product__see-more product__icon "></i>
								</a> <a href="# "> <i
										class="ri-search-eye-line product__see-more product__icon "></i>
								</a> <a href=" " title="Add to Wishlist " class="d-none "> <i
										class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon "></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-6 ">
					<div class="feature__item product__item ">
						<div
							class="feature__item-img product__img position-relative overflow-hidden ">
							<div
								class="feature__item-label-seller product__label position-absolute ">
								<span class="text-white d-block mb-1 ">Seller</span>
							</div>
							<a href="# " class="position-relative d-block "> <img
								src="assets/images/product__chair1.png " alt=" " class=" ">
								<img src="assets/images/product__chair1-hover.png " alt=" "
								class="hover-img position-absolute ">
							</a>
						</div>
						<div class="feature__item-info product__info position-relative ">
							<div class="feature__item-tag product__tag ">
								<a href="# ">bowls,</a> <a href="# ">Dining</a>
							</div>
							<p class="feature__item-name product__name ">Designs Woolrich
								Klettersack</p>
							<div
								class="feature__item-action product__action position-relative ">
								<div class="feature__item-price product__price ">
									<span
										class="feature__item-price--current product__price-current ">$34.32</span>
									<span class="feature__item-price--old product__price-old ">$345.56</span>
								</div>
								<div class="add-to-cart ">
									<a href="# " class="text-dark "> <span
										class="add-to-cart--icon "><i
											class="ri-shopping-bag-3-line "></i></span> <span
										class="add-to-cart-title ">Add To Cart</span>
									</a>
								</div>
							</div>
							<div
								class="feature__item-wishlist product__wishlist position-absolute ">
								<span
									class="feature__item-like feature__item-like--liked product__like ">
									<a href=" "> <i
										class="ri-heart-line product__see-more product__icon "></i>
								</a> <a href="# "> <i
										class="ri-search-eye-line product__see-more product__icon "></i>
								</a> <a href=" " title="Add to Wishlist " class="d-none "> <i
										class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon "></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-6 ">
					<div class="feature__item product__item ">
						<div
							class="feature__item-img product__img position-relative overflow-hidden ">
							<div
								class="feature__item-label-new product__label position-absolute ">
								<span class="text-dark d-block mb-1 ">New</span>
							</div>
							<a href="# " class="position-relative d-block "> <img
								src="assets/images/product__clock1.png " alt=" " class=" ">
								<img src="assets/images/product__clock1-hover.png " alt=" "
								class="hover-img position-absolute ">
							</a>
						</div>
						<div class="feature__item-info product__info position-relative ">
							<div class="feature__item-tag product__tag ">
								<a href="# ">bowls,</a> <a href="# ">Dining</a>
							</div>
							<p class="feature__item-name product__name ">Designs Woolrich
								Klettersack</p>
							<div
								class="feature__item-action product__action position-relative ">
								<div class="feature__item-price product__price ">
									<span
										class="feature__item-price--current product__price-current ">$34.32</span>
									<span class="feature__item-price--old product__price-old ">$345.56</span>
								</div>
								<div class="add-to-cart ">
									<a href="# " class="text-dark "> <span
										class="add-to-cart--icon "><i
											class="ri-shopping-bag-3-line "></i></span> <span
										class="add-to-cart-title ">Add To Cart</span>
									</a>
								</div>
							</div>
							<div
								class="feature__item-wishlist product__wishlist position-absolute ">
								<span
									class="feature__item-like feature__item-like--liked product__like ">
									<a href=" "> <i
										class="ri-heart-line product__see-more product__icon "></i>
								</a> <a href="# "> <i
										class="ri-search-eye-line product__see-more product__icon "></i>
								</a> <a href=" " title="Add to Wishlist " class="d-none "> <i
										class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon "></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-6 col-6">
					<div class="feature__item product__item">
						<div
							class="feature__item-img product__img position-relative overflow-hidden">
							<div
								class="feature__item-label-sale product__label position-absolute">
								<span class=" text-white d-block mb-1">Sale</span>
							</div>
							<a href="#" class="position-relative d-block"> <img
								src="assets/images/product__lighting1.png"> <img
								src="assets/images/product__lighting1.png"
								class="hover-img position-absolute">
							</a>
						</div>
						<div class="feature__item-info product__info position-relative">
							<div class="feature__item-tag product__tag">
								<a href="#">bowls,</a> <a href="#">Dining</a>
							</div>
							<p class="feature__item-name product__name">Designs Woolrich
								Klettersack</p>
							<div
								class="feature__item-action product__action position-relative">
								<div class="feature__item-price product__price">
									<span
										class="feature__item-price--current product__price-current">$34.32</span>
									<span class="feature__item-price--old product__price-old">$345.56</span>
								</div>
								<div class="add-to-cart">
									<a href="#" class="text-dark"> <span
										class="add-to-cart--icon"><i
											class="ri-shopping-bag-3-line"></i></span> <span
										class="add-to-cart-title">Add To Cart</span>
									</a>
								</div>
							</div>
							<div
								class="feature__item-wishlist product__wishlist position-absolute">
								<span
									class="feature__item-like feature__item-like--liked product__like">
									<a href=""> <i
										class="ri-heart-line product__see-more product__icon"></i>
								</a> <a href="#"> <i
										class="ri-search-eye-line product__see-more product__icon"></i>
								</a> <a href="" title="Add to Wishlist" class="d-none"> <i
										class="ri-heart-fill feature__item-like--icon-pill product__like--icon-pill product__icon"></i>
								</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div class="subscribe-area">
		<div class="container">
			<div class="row">
				<div
					class="col-xl-8 col-lg-10 col-md-12 col-sm-12 col-12 offset-xl-2 offset-lg-1">
					<div class="section-title subscribe-title text-center">
						<h2>Sign Up For Our Newsletter</h2>
						<p>Subscribe to the Homess mailing list to receive updates on
							new arrivals, special offers and other discount information.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div
					class="col-xl-10 col-lg-12 col-md-12 col-sm-12 col-12 offset-xl-1">
					<div class="subscribe-form text-center">
						<form action="#">
							<input type="text"
								class="sub-name form-control text-center bg-transparent mt-4"
								name="name" id="name"
								placeholder="Subscribe to our newsletter..."> <a
								href="#" class="sub-btn d-inline-block border-0"
								style="margin-top: 50px;">Subscribe</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<!--Scroll Up-->
	<a href="#" class="scrollup" id="scroll-up"> <i
		class="ri-arrow-up-line scrollup__icon"></i>
	</a>
	<!--Bootstrap JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<!--Link JS-->
	<script src="./assets/js/main.js"></script>
	<!--Scroll Reveal JS-->
	<script
		src="https://unpkg.com/scrollreveal@3.3.2/dist/scrollreveal.min.js"></script>
	<script>
		window.sr = ScrollReveal({
			reset : true,
			distance : '60px',
			duration : 2800,

		});
		sr.reveal(`.service__item,.section-title`, {
			origin : 'top',
			interval : 100,
		})
		sr.reveal(`.product-banner-img,.subscribe-title,.carousel-caption`, {
			origin : 'left',
		})
		sr.reveal(`.subscribe-form,.product-banner-img--right`, {
			origin : 'right',
			interval : 100,
		})
		sr.reveal(`.sm-product__item,.card`, {
			origin : 'bottom',
			interval : 100,
		})

		/* ===== INCREASE/DECREASE INPUT ====== */
		$(document).ready(
				function() {
					$('#addtocart').on(
							'click',
							function() {

								var button = $(this);
								var cart = $('#cart');
								var cartTotal = cart.attr('data-totalitems');
								var newCartTotal = parseInt(cartTotal) + 1;

								button.addClass('sendtocart');
								setTimeout(function() {
									button.removeClass('sendtocart');
									cart.addClass('shake').attr(
											'data-totalitems', newCartTotal);
									setTimeout(function() {
										cart.removeClass('shake');
									}, 500)
								}, 1000)
							})
				})
	</script>
	<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>
</html>