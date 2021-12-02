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
	
	<c:if test="${sessionScope.wishlist != null && sessionScope.username != null}">
		<div class="slider-area">
	        <div class="page-title">
	            <div class="text text-center">
	                <h2>Wishlist</h2>
	                <nav aria-label="breadcrumb">
	                    <ol class="breadcrumb justify-content-center bg-transparent">
	                        <li class="breadcrumb-item"><a href="home">Home</a>
	                        </li>
	                        <li class="breadcrumb-item active text-capitalize" aria-current="page">Wishlist</li>
	                    </ol>
	                </nav>
	            </div>
	
	        </div>
	    </div>
	    
	    <div class="wishlist-area d-md-block section__area" id="wishlist" tabindex="-1" role="dialog" aria-hidden="true">
	        <div class="container-fluid">
	            <div class="row">
	                <div class="col-xl-12 col-lg-12 md-display-none sm-display-none xs-display-none">
	                    <div class="cart-table text-center overflow-auto">
	                        <table class="table border-r-light-gray border-l-light-gray">
	                            <thead>
	                                <tr>
	                                    <th scope="col"></th>
	                                    <th scope="col"></th>
	                                    <th scope="col">Product name </th>
	                                    <th scope="col">Unit price</th>
	                                    <th scope="col">Stock status</th>
	                                    <th scope="col"></th>
	                                </tr>
	                            </thead>
	                            <tbody>
	                            	<c:forEach var="item" items="${sessionScope.wishlist }">
	                            	<fmt:setLocale value="vi_VN" />
	                            		<tr>
			                                <td>
			                                    <a href="wishlist?action=remove&id=${item.product.id }" class="p-remove"><span class="icon-clear"><i class="ri-close-line"></i></span></a>
			                                </td>
			                                <td>
			                                    <a href="productDetail?productID=${item.product.id }" class="cart-img d-block">
			                                        <img src="imageServlet?imageName=${item.product.image }" alt="" class="width100">
			                                    </a>
			                                </td>
			                                <td><a href="productDetail?productID=${item.product.id }" class="p-name">${item.product.name }</a></td>
			                                <td>
			                                    <div class="cart-price"><fmt:formatNumber value="${item.product.price }" type="currency"></fmt:formatNumber></div>
			                                </td>
			                                <td>
			                                    <a href="#" class="p-stock-status">
			                                        In Stock
			                                    </a>
			                                </td>
			                                <td class="text-right">
			                                    <a href="cart?action=buy&id=${item.product.id }" class="p-add-cart sub-btn p-3">Add to cart</a>
			                                </td>
		                                </tr>
	                                </c:forEach>
	                            </tbody>
	                        </table>
	                    </div>
	                </div>
	                <div class="xl-display-none d-lg-none col-md-12 col-sm-12 col-12">
	                    <div class="mobile-wishlist">
	                    	<c:forEach var="item" items="${sessionScope.wishlist }">
	                    	<fmt:setLocale value="vi_VN" />
		                        <div class="p-remove text-right d-block position-relative">
		                            <a href="wishlist?action=remove&id=${item.product.id }" class="p-remove">
		                            	<span class="icon-clear"><i class="ri-close-line"></i></span>
		                            </a>
		                        </div>
		                        <div class="wish-p d-sm-flex justify-content-between">
		                            <ul class="d-flex align-items-center">
		                                <li>
		                                    <a href="#" class="p-img d-block mr-3">
		                                        <img src="imageServlet?imageName=${item.product.image }" alt="">
		                                    </a>
		                                </li>
		                                <li>
		                                    <h6><a class="d-block p-name" href="#">${item.product.name }</a></h6>
		                                    <span class="cart-price"><fmt:formatNumber value="${item.product.price }" type="currency"></fmt:formatNumber></span>
		
		                                </li>
		                            </ul>
		                            <ul class="d-flex align-items-center">
		                                <li>
		                                    <a href="cart?action=buy&id=${item.product.id }" class="btn pt-10 pb-10 mt-20 sub-btn">Add to cart</a>
		                                </li>
		                            </ul>
		                        </div>
		                     </c:forEach>
	                    </div>
	                </div>
	            </div>
	            <div class="coupon-and-update-area">
	                <div class="row">
	                    <div class="col-xl-8 col-lg-8 col-md-6 col-sm-12 col-12 mb-50 offset-xl-4 offset-lg-4 offset-md-6">
	                        <div class="update-area text-md-right">
	                            <a href="#" class="sub-btn clear-cart d-inline-block mt-20 mr-2">CLEAR ALL WISHLIST</a>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </c:if>
    <c:if test="${sessionScope.wishlist == null && sessionScope.username != null}">
	    <div class="cart-area" id="cart" style="padding: 150px 0;">
			<div class="container text-center">
	            <img class="" src="./assets/images/empty.png" width="30%">
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