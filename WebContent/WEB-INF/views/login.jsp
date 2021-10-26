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
	
	<div class="login-area">
        <div class="login__content">
            <div class="login__img">
                <img src="./assets/images/login.png" alt="" class="width100">
            </div>
            <div class="login__forms">
                <form action="login" method="POST" class="login__register-form" id="login-in">
                    <h1 class="login__title">Sign In</h1>
                    <p style="color: red; font-size: 12px;text-align: left;">${errorMessage}</p>
                    <div class="login__box">
                        <i class="ri-user-line login__icon"></i>
                        <input type="text" placeholder="Username" class="login__input" name="username" required="required">
                    </div>
                    <div class="login__box">
                        <i class="ri-lock-2-line login__icon"></i>
                        <input type="password" placeholder="Password" class="login__input" name="password" required="required">
                    </div>
                    <a href="" class="login__forgot">Forgot Password</a>
                    <input type="submit" class="login__button w-100 border-0" value="Sign In">
                    <div>
                        <span class="login__account">Don't have an Account?</span>
                        <span class="login__signin" id="sign-up">Sign Up</span>
                    </div>
                </form>
                <form action="register" method="POST" class="login__create-form none" id="login-up">
                    <h1 class="login__title">Create Account</h1>
                    <div class="login__box">
                        <i class="ri-user-line login__icon"></i>
                        <input type="text" placeholder="Username" class="login__input" name="fullname">
                    </div>
                    <div class="login__box">
                        <i class="ri-at-line login__icon"></i>
                        <input type="text" placeholder="Email" class="login__input" name="username" required="required">
                    </div>
                    <div class="login__box">
                        <i class="ri-lock-2-line login__icon"></i>
                        <input type="password" placeholder="Password" class="login__input" name="password" required="required">
                    </div>
                    <input type="submit" class="login__button w-100 border-0" value="Sign Up">
                    <div>
                        <span class="login__account">Already have an Account?</span>
                        <span class="login__signup" id="sign-in">Sign In</span>
                    </div>
                    <div class="login__social">
                        <a href="#" class="login__social-icon">
                            <i class="ri-facebook-circle-fill"></i>
                        </a>
                        <a href="#" class="login__social-icon">
                            <i class="ri-twitter-line"></i>
                        </a>
                        <a href="#" class="login__social-icon">
                            <i class="ri-instagram-fill"></i>
                        </a>
                        <a href="#" class="login__social-icon">
                            <i class="ri-google-line"></i>
                        </a>
                    </div>
                </form>
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