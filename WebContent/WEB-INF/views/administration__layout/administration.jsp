<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Category"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.dao.CategoryDAO"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.entity.Product"%>
<%@page import="com.anhtien.tinfbefurnituremanagement.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <link rel="shortcut icon" href=".//assets/images/shortcut-icon.png">

    <!--Link CSS-->
    <link rel="stylesheet" href=".//assets/css/style.css">
    <link rel="stylesheet" href=".//assets/css/responsive.css">
</head>
<body class="light-theme administration" data-spy="scroll" data-target=".nav" data-offset="50">
	
	<header class="header">
        <div class="header__container">
            <img src=".//assets/images/avatar1.png" alt="Tinfbe Furniture" class="header__img">
            <a href="#" class="header__logo">Tinfbe</a>
            <div class="header__search">
                <input type="search" name="" id="" placeholder="Search" class="header__input">
                <i class="ri-search-2-line header__icon"></i>
            </div>
            <input type="checkbox" class="administration__input" id="administration__area" hidden>
            <label for="administration__area" class="header__toggle">
                <i class="ri-layout-grid-fill"></i>
            </label>
            <label for="administration__area" class="overlay"></label>
            <div class="nav" id="navbar">
                <nav class="nav__container">
                    <div>
                        <a href="#" class="nav__logo d-flex">
                            <img src=".//assets/images/shortcut-icon.png" alt="Tinfbe Logo">
                            <span class="nav__logo-name">Tinfbe</span>
                        </a>
                        <div class="nav__list">
                            <div class="nav__items">
                                <h3 class="nav__subtitle">administration</h3>
                                <a href="#dashboard" class="nav__link active">
                                    <i class="ri-dashboard-3-line nav__icon"></i>
                                    <span class="nav__name">Dashboard</span>
                                </a>

                                <div class="nav__dropdown">
                                    <a href="#" class="nav__link">
                                        <i class="ri-user-line nav__icon"></i>
                                        <span class="nav__name">Account</span>
                                        <i class="ri-arrow-down-s-line nav__icon nav__dropdown-icon"></i>
                                    </a>
                                    <div class="nav__dropdown-collapse">
                                        <div class="nav__dropdown-content">
                                            <a href="#" class="nav__dropdown-item">Passwords</a>
                                            <a href="#" class="nav__dropdown-item">Mail</a>
                                            <a href="#" class="nav__dropdown-item">Accounts</a>
                                        </div>
                                    </div>
                                </div>

                                <a href="#" class="nav__link">
                                    <i class="ri-chat-smile-2-line nav__icon"></i>
                                    <span class="nav__name">Messages</span>
                                </a>

                                <a href="#" class="nav__link">
                                    <i class="ri-moon-fill nav__icon" id="dark-mode__icon"></i>
                                    <span class="nav__name">Dark mode</span>
                                </a>
                                
                            </div>

                            <div class="nav__items">
                                <h3 class="nav__subtitle">Project</h3>
                                <a href="#show" class="nav__link">
                                    <i class="ri-eye-2-fill nav__icon"></i>
                                    <span class="nav__name">Show</span>
                                </a>
                            </div>

                            <a href="#" class="nav__link nav__logout">
                                <i class="ri-logout-circle-line nav__icon"></i>
                                <span class="nav__name">Log Out</span>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    
    <!--Start Main-->
    <div class="main-content">
        <div id="dashboard" class="dashboard-area">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 pb-4">
                    <div class="box box-hover">
                        <div class="counter">
                            <div class="counter-title">
                                Total Order
                            </div>
                            <div class="counter-info">
                                <div class="counter-count">6578</div>
                                <img src=".//assets/images/login.png" alt="" class="w-25">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 pb-4">
                    <div class="box box-hover">
                        <div class="counter">
                            <div class="counter-title">
                                Conversion Rate
                            </div>
                            <div class="counter-info">
                                <div class="counter-count">30.5%</div>
                                <img src=".//assets/images/dashboard1.png" alt="" class="w-25">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 pb-4">
                    <div class="box box-hover">
                        <div class="counter">
                            <div class="counter-title">
                                Total Profit
                            </div>
                            <div class="counter-info">
                                <div class="counter-count">$9.567</div>
                                <img src=".//assets/images/hotline.png" alt="" class="w-25">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6 col-6 pb-4">
                    <div class="box box-hover">
                        <div class="counter">
                            <div class="counter-title">
                                Daily Visitors
                            </div>
                            <div class="counter-info">
                                <div class="counter-count">657</div>
                                <img src=".//assets/images/login.png" alt="" class="w-25">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 xs-display-none pb-4 ">
                    <div class="box f-height overflow-hidden">
                        <div class="box-body">
                            <div id="category-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 pb-4">
                    <div class="box f-height">
                        <div class="box-header">
                            Customers
                        </div>
                        <div class="box-body">
                            <div id="customer-chart"></div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-4">
                    <div class="box">
                        <div class="box-header">Recent Orders</div>
                        <div class="box-body overflow-auto">
                            <table class="table table-hover table-fixed">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Customer</th>
                                        <th>Date</th>
                                        <th>Shipped Date</th>
                                        <th>Order Status</th>
                                        <th>Payment status</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#123</td>
                                        <td>
                                            <div class="order-owner">
                                                <img src=".//assets/images/product__chair1.png" alt="">
                                                <span>Dining decor</span>
                                            </div>
                                        </td>
                                        <td>2021-09-04</td>
                                        <td></td>
                                        <td>
                                            <span class="order-status order-ready">Ready</span>
                                        </td>
                                        <td>
                                            <div class="payment-status payment-pending">
                                                <div class="dot"></div>
                                                <span>Pending</span>
                                            </div>
                                        </td>
                                        <td>$123.556</td>
                                    </tr>
                                    <tr>
                                        <td>#123</td>
                                        <td>
                                            <div class="order-owner">
                                                <img src=".//assets/images/product__chair1.png" alt="">
                                                <span>Dining decor</span>
                                            </div>
                                        </td>
                                        <td>2021-09-04</td>
                                        <td></td>
                                        <td>
                                            <span class="order-status order-ready">Ready</span>
                                        </td>
                                        <td>
                                            <div class="payment-status payment-pending">
                                                <div class="dot"></div>
                                                <span>Pending</span>
                                            </div>
                                        </td>
                                        <td>$123.556</td>
                                    </tr>
                                    <tr>
                                        <td>#123</td>
                                        <td>
                                            <div class="order-owner">
                                                <img src=".//assets/images/product__chair1.png" alt="">
                                                <span>Dining decor</span>
                                            </div>
                                        </td>
                                        <td>2021-09-04</td>
                                        <td></td>
                                        <td>
                                            <span class="order-status order-shipped">Shipped</span>
                                        </td>
                                        <td>
                                            <div class="payment-status payment-paid">
                                                <div class="dot"></div>
                                                <span>Paid</span>
                                            </div>
                                        </td>
                                        <td>$123.556</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="showAllProduct row" id="show">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pb-4">
                <div class="box">
                    <div class="box-header">
                    	<span>List Product</span> 
                    	<span style="float: right; text-transform: capitalize; font-size: 12px; font-weight: 400;">
                    		<a href="insertProduct">Insert</a>
                    	</span>
                    </div>
                    <div class="box-body overflow-auto ">
                        <table class="table table-hover table-fixed">
                            <thead>
                                <tr>
                                    <th scope="col">Pro.ID</th>
                                    <th scope="col">Image</th>
                                    <th scope="col">Pro.Name</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Discount</th>
                                    <th scope="col">Ca.Name</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
								<c:forEach items="${product}" var="product">
									<tr>
										<th scope="row">${product.id }</th>
										<td>
											<div class="order-owner">
												<img src="imageServlet?imageName=${product.image}" alt="">
											</div>
										</td>
										<td>${product.name }</td>
										<td>${product.description }</td>
										<td>${product.quantity }</td>
										<td>${product.price }</td>
										<td>${product.discount }%</td>
										<td>${product.category.name }</td>
										<td class="product__action">
											<span><a href="administration?action=deleteProduct&id=${product.id }">Delete</a></span>
											<span><a href="updateProduct?id=${product.id }">Update</a></span>
										</td>
									</tr>
								</c:forEach>
							</tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="showAllProduct row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 pb-4">
                <div class="box">
                    <div class="box-header">List Category</div>
                    <div class="box-body overflow-auto ">
                        <table class="table table-hover table-fixed">
                            <thead>
                                <tr>
                                    <th scope="col">Category ID</th>
                                    <th scope="col">Category Name</th>
                                    <th scope="col">Parent</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${category}" var="category">
								<tr>
                                    <th scope="row">${category.id }</th>
                                    <th scope="row">${category.name }</th>
                                    <td>${category.parent }</td>
                                    <td class="product__action">
                                        <span><a href="#">Delete</a></span>
                                        <span><a href="#">Update</a></span>
                                    </td>
                                </tr>
								</c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End Main-->
    
     <!--Apex Chart-->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts "></script>
    <script src=".//assets/js/main.js"></script>
    <script src=".//assets/js/chart.js"></script>
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!--Link JS-->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>
</html>