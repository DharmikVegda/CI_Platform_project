<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>    
    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/login.css" type="text/css">
    <title>LOGIN PAGE</title>

</head>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12 col-xl-8 justify-content-center align-items-center carousel-img">
                <%@ include file="carousel.html" %>
            </div>
            <div class="col-12 col-xl-4 mt-3 pb-5">
            	<div class="text-center text-white bg-danger h3"> ${msg } </div>
                <div class="row login-form align-items-center">
                    <form action="loginhandler" method="post">
                        <!-- email address  -->
                        <div class="mb-3">
                            <label for="InputEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="InputEmail"
                                name="email" aria-describedby="emailHelp">
                        </div>
                        <!-- password  -->
                        <div class="mb-3">
                            <label for="InputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="InputPassword" name="password">
                        </div>
                        <!-- login button  -->
                        <button type="submit" class="btn rounded-pill btn-outline mb-3" id="login-button">Login</button>
                        <div class="mb-3 d-flex justify-content-center align-items-center"> <a href="forgot-password"
                                id="lost-password-text">Lost your password?</a> </div>
                        <div class="d-flex justify-content-center align-items-center"> <span id="extra-text">Don't have an
                                account?</span> <a href="registration" id="create-account-text">Create an account</a> </div>
                    </form>
                </div>
                <!-- privacy policy text  -->
                <div class="row mt-4">
                    <div class="d-flex justify-content-center align-items-center privacy-policy"> <span>Privacy
                            Policy</span> </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="resources/js/bootstrap.bundle.min.js"></script>

</html>