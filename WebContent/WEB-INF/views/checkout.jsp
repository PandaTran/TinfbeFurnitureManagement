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
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="slider-area">
        <div class="page-title">
            <div class="text text-center">
                <h2>Checkout</h2>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center bg-transparent">
                        <li class="breadcrumb-item"><a href="home">Home</a>
                        </li>
                        <li class="breadcrumb-item active text-capitalize" aria-current="page">Checkout</li>
                    </ol>
                </nav>
            </div>

        </div>
    </div>
    
    <div class="checkout-area section__area">
        <div class="container-fluid">
            <div class="row">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="your-order">
						<h4 class="pb-2 mb-4">Your order</h4>
						<div class="your-order-table table-responsive">
							<table class="width100">
								<c:set var="total" value="0"></c:set>
								<fmt:setLocale value="vi_VN" />
								<thead>
									<tr>
										<th class="product-name">Product</th>
										<th class="product-total">Total</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${sessionScope.cart }">
										<c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
										<c:set var="vat" value="${total * 0.1 }"></c:set>
	                   					<c:set var="discount" value="${item.product.price * ((item.product.discount)/100) }"></c:set>
				                   		<c:set var="setDiscount" value="${item.product.discount }"></c:set>
				                   		<c:set var="pay" value="${total + vat - discount }"></c:set>
										<tr class="cart_item">
											<td class="product-name">${item.product.name } <strong
												class="product-quantity"> × ${item.quantity }</strong>
											</td>
											<td class="product-total"><span class="amount"> <fmt:formatNumber
														value="${item.product.price * item.quantity }"
														type="currency"></fmt:formatNumber>
											</span></td>
										</tr>
									</c:forEach>
								</tbody>
								<tfoot>
									<tr class="cart-subtotal">
										<th>Cart Subtotal</th>
										<td><span class="amount text-warning"> <fmt:formatNumber
													value="${total }" type="currency"></fmt:formatNumber>
										</span></td>
									</tr>
									<tr class="shipping">
										<th>VAT (10%)</th>
										<td>
											<span><fmt:formatNumber value="${vat }" type="currency"></fmt:formatNumber></span>	
										</td>
									</tr>
									<tr class="shipping">
										<th>Discount (${setDiscount }%)</th>
										<td>
											<span><fmt:formatNumber value="${discount }" type="currency"></fmt:formatNumber></span>
										</td>
									</tr>
									<tr class="order-total">
										<th>Order Total</th>
										<td><strong> <span class="amount text-warning">
													<b><fmt:formatNumber value="${pay }" type="currency"></fmt:formatNumber></b>
											</span></strong></td>
									</tr>
								</tfoot>
							</table>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
                    <div class="checkbox-form">
                        <h4 class="pb-2 mb-4">Billing Details</h4>
                        <div class="row">
                            <form action="checkout" class="form-row" method="POST">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<div class="checkout-form-list mb-4">
										<label>Name <span class="required">*</span></label> 
										<input type="text" placeholder="" class="form-control" name="username" required="required">
									</div>
								</div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="checkout-form-list mb-4">
                                        <label>Address <span class="required">*</span></label>
                                        <input type="text" placeholder="Street address" class="form-control" name="address" required="required">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="checkout-form-list mb-30">
                                        <label>Email Address</label>
                                        <input type="email" placeholder="" class="form-control" name="email" required="required">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="checkout-form-list mb-4">
                                        <label>Phone <span class="required">*</span></label>
                                        <input type="text" placeholder="Postcode / Zip" class="form-control" name="phone" required="required">
                                    </div>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12  col-sm-12 col-12">
                                    <div class="country-select mb-4">
                                        <label>Payment Methods <span class="required">*</span></label>
                                        <select class="form-control" name="payment" required="required">
                                            <option selected disabled value="">Payment Method</option>
                                            <option value="Payment on delivery">Payment on delivery</option>
                                            <option value="Bank transfer">Bank transfer</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <div class="checkout-form-list mb-4">
                                        <label>Note Information</label>
                                        <textarea type="text" class="form-control" name="comments"></textarea>
                                    </div>
                                </div>
                                <input type="submit" class="order_btn width100 border-0 bg-dark" value="Order">
                            </form>
                        </div>
                    
                    </div>
                </div>
            </div>
        </div>
    </div>
    
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