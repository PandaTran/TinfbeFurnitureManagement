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
                                <h3 class="nav__subtitle">Project</h3>
                                <a href="" class="nav__link">
                                    <i class="ri-bubble-chart-fill nav__icon"></i>
                                    <span class="nav__name">Insert Product</span>
                                </a>
                                <a href="" class="nav__link active">
                                    <i class="ri-eye-2-fill nav__icon"></i>
                                    <span class="nav__name">Update Product</span>
                                </a>
                                <a href="" class="nav__link">
                                    <i class="ri-bubble-chart-line nav__icon"></i>
                                    <span class="nav__name">Insert Category</span>
                                </a>
                                <a href="" class="nav__link">
                                    <i class="ri-eye-2-line nav__icon"></i>
                                    <span class="nav__name">Update Category</span>
                                </a>
                            </div>
                            <div class="nav__items">
                                <h3 class="nav__subtitle">Setting</h3>
                                
                                <a href="#" class="nav__link">
                                    <i class="ri-moon-fill nav__icon" id="dark-mode__icon"></i>
                                    <span class="nav__name">Dark mode</span>
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
        <div class="insert-area row">
            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 mb-4">
                <h4 class="insert-title">Update Product</h4>
                <form action="updateProduct" method="POST" enctype="multipart/form-data">
                    <div class="insert-form row mt-3">
						<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 mb-2">
							<label>Product ID</label>
							<div class="name">
								<input type="text" class="form-control" name="id" value="${product.id }">
							</div>
						</div>
						<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 mb-2">
                            <label>Name Product</label>
                            <div class="name">
                                <input type="text" class="form-control" name="name" value="${product.name }">
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
                            <label>Quantity</label>
                            <div class="quantity">
                                <input type="text" class="form-control" name="quantity" value="${product.quantity }">
                            </div>
                        </div>

                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
                            <label>Price</label>
                            <div class="price">
                                <input type="text" class="form-control" name="price" value="${product.price }">
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
                            <label>Discount</label>
                            <div class="discount">
                                <input type="text" class="form-control" name="discount" value="${product.discount }">
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 mt-2">
                            <label>Description Image</label>
                            <input type="file" class="form-control" name="image" value="${product.image }">
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 mt-2">
                            <label>Description</label>
                            <textarea class="form-control" name="description">${product.description }</textarea>
                        </div>
                    </div>
                   	<input type="submit" class="review-btn d-inline-block transition mt-20 text-uppercase border-0" value="Update Product">
                </form>
            </div>
        </div>
    </div>
    <!--End Main-->

    <script src=".//assets/js/main.js"></script>
    <!--Bootstrap JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!--Link JS-->
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</body>
</html>