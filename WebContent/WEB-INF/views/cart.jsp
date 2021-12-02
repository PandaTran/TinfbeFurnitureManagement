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
	<jsp:include page="header.jsp"></jsp:include>
	
	<c:if test="${sessionScope.cart != null && sessionScope.username != null}">
		<div class="slider-area">
	        <div class="page-title">
	            <div class="text text-center">
	                <h2>Cart</h2>
	                <nav aria-label="breadcrumb">
	                    <ol class="breadcrumb justify-content-center bg-transparent">
	                        <li class="breadcrumb-item"><a href="home">Home</a>
	                        </li>
	                        <li class="breadcrumb-item active text-capitalize" aria-current="page">Cart</li>
	                    </ol>
	                </nav>
	            </div>
	
	        </div>
	    </div>
	    <div class="cart-area section__area" id="cart" tabindex="-1" role="dialog" aria-hidden="true">
	        <div class="container">
	            <div class="cart-table text-center">
	                <table class="table table-bordered">
	                    <thead>
	                        <tr>
	                            <th scope="col">Product images</th>
	                            <th scope="col">Product name </th>
	                            <th scope="col">Unit price</th>
	                            <th scope="col">Quantity</th>
	                            <th scope="col">Total</th>
	                           	<th></th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                    	<c:set var="total" value="0"></c:set>
	                    	<c:set var="vat" value="0"></c:set>
	                    	<c:set var="pay" value="0"></c:set>
	                    	<c:forEach var="item" items="${sessionScope.cart }">
		                   		<c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
		                   		<c:set var="vat" value="${total * 0.1 }"></c:set>
		                   		<c:set var="discount" value="${item.product.price * ((item.product.discount)/100) }"></c:set>
		                   		<c:set var="setDiscount" value="${item.product.discount }"></c:set>
		                   		<c:set var="pay" value="${total + vat - discount }"></c:set>
		                   		
		                   		<fmt:setLocale value="vi_VN" />
								<tr>
									<td><a href="productDetail?productID=${item.product.id }" class="cart-img d-block"> <img
											src="imageServlet?imageName=${item.product.image }" alt=""
											class="width100">
									</a></td>
									<td><a href="productDetail?productID=${item.product.id }" class="p-name">${item.product.name }</a></td>
									<td>
										<div class="cart-price"><fmt:formatNumber value="${item.product.price }" type="currency"></fmt:formatNumber></div>
									</td>
									<td>
										<div class="quantity-field position-relative d-inline-block mt-20 mr-15 justify-content-between">
											<a href="cart?action=dec&id=${item.product.id }"><button class='custom-subtract value-btn'>-</button></a>
											<input class="quantity-input" min="0" name="quantity" value="${item.quantity }"
												type="number">
											<a href="cart?action=inc&id=${item.product.id }"><button class='custom-add value-btn'>+</button></a>
										</div>
									</td>
									<td>
										<div class="cart-price"><fmt:formatNumber value="${item.product.price * item.quantity }" type="currency"></fmt:formatNumber></div>
									</td>
									<td><a href="cart?action=remove&id=${item.product.id }" class="p-remove remove"><span
											class="icon-clear"><i class="ri-close-line"></i></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
	                </table>
	            </div>
	            <div class="coupon-and-update-area">
	                <div class="row">
	                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
	                        <div class="coupon-code-area">
	                            <form action="#">
	                                <input type="text" placeholder="Coupon code" class="coupon-input">
	                                <a href="#" class="sub-btn d-inline-block mt-20">Apply coupon</a>
	                            </form>
	                        </div>
	                    </div>
	                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 mb-50">
	                        <div class="update-area text-md-right">
	                            <a href="cart?action=clean" class="sub-btn clear-cart d-inline-block mt-20 mr-2">CLEAR ALL PRODUCTS</a>
	                            <a href="category" class="sub-btn d-inline-block mt-20">CONTINUE SHOPPING</a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-xl-6 col-lg-6 col-md-10 col-sm-12 col-12 offset-xl-6 offset-lg-6 offset-md-2 mb-50">
	                    <div class="total-price-area">
	                        <h2>Cart totals</h2>
	                        <ul class="pt-2 pb-25">
	                            <li class="d-flex justify-content-between align-items-center mb-1 p-4">
	                                <span>Total</span><span class="font-weight-bolder">
	                                	<fmt:formatNumber value="${total }" type="currency"></fmt:formatNumber>
	                                </span>
	                            </li>
	                            <li class="d-flex justify-content-between align-items-center p-4">
	                                <span>VAT (10%)</span><span class="font-weight-bolder">
	                                	<fmt:formatNumber value="${vat }" type="currency"></fmt:formatNumber>
	                                </span>
	                            </li>
	                            <li class="d-flex justify-content-between align-items-center p-4">
	                                <span>Discount (${setDiscount }%)</span><span class="font-weight-bolder">
	                                	<fmt:formatNumber value="${discount }" type="currency"></fmt:formatNumber>
	                                </span>
	                            </li>
	                            <li class="d-flex justify-content-between align-items-center p-4">
	                                <span>Pay </span><span class="font-weight-bolder">
	                                	<fmt:formatNumber value="${pay }" type="currency"></fmt:formatNumber>
	                                </span>
	                            </li>
	                        </ul>
	                        <a href="checkout" class="sub-btn d-inline-block float-right">Proceed to checkout</a>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </c:if>
    
	<c:if test="${sessionScope.cart == null && sessionScope.username != null }">
		<div class="cart-area" id="cart" style="padding: 150px 0;">
			<div class="container text-center">
	            <img class="" src="./assets/images/empty.png" width="30%">
	        </div>
	        <div class="container text-right">
				<a href="category" class="sub-btn d-inline-block mt-20">SHOPPING NOW</a>
			</div>
		</div>
	</c:if>

	<c:if test="${sessionScope.username == null }">
		<div style="padding: 150px 0;">
			<div class="container text-center mt-5">
				<img class="" src="./assets/images/no-product.png" width="30%">
			</div>
			<div class="container text-right">
				<a href="login" class="sub-btn d-inline-block mt-20">LOGIN/REGISTER</a>
			</div>
		</div>
	</c:if>
	<jsp:include page="footer.jsp"></jsp:include>
	
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