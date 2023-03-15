<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/forgot-password.css" type="text/css">
    <title>FORGOT PAGE</title>

</head>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12 col-xl-8 justify-content-center align-items-center carousel-img">
                <%@ include file="carousel.html" %>
            </div>
            <div class="col-12 col-xl-4 mt-3 pb-5">
                <div class="row forgot-form align-items-center">
                    <form action="forgotPasswordHandler" method="post">
                        <div class="d-flex justify-content-center">
                            <p id="hedding"> Forgot Password</p>
                        </div>
                        <div id="forgot-password-description">
                            <p>Enter your email address you've using for your account below
                                and we will send you a password reset link</p>
                        </div>
                        <!-- email address  -->
                        <div class="mb-3">
                            <label for="InputEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="InputEmail" name="email"
                                aria-describedby="emailHelp" placeholder="Enter your email address..">
                        </div>
                        <!-- reset password button -->
                        <button type="submit" class="btn rounded-pill w-100 btn-outline mb-3" id="reset-password-button">Reset my Password</button>
                        <div class="mb-3 d-flex justify-content-center align-items-center"> <a href="login"
                                id="login-text">Login</a> </div>
                    </form>
                </div>
                <!-- privacy policy text  -->
                <div class="row pt-4">
                    <div class="d-flex justify-content-center align-items-center privacy-policy"> <span>Privacy
                            Policy</span> </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
<script src="resources/js/bootstrap.bundle.min.js"></script>


</html>