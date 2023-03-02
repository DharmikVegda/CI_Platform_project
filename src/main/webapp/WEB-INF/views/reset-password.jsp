<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/reset-password.css" type="text/css">
    <title>RESET PAGE</title>

</head>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-12 col-xl-8 justify-content-center align-items-center carousel-img">
                <%@ include file="carousel.html" %>
            </div>
            <div class="col-12 col-xl-4 mt-3 pb-5">
                <div class="row reset-form align-items-center">
                    <form>
                        <div class="d-flex justify-content-center">
                            <p id="hedding"> New Password</p>
                        </div>
                        <div id="reset-password-description">
                            <p>Please enter a new password in the fields below.</p>
                        </div>
                        <!-- new password  -->
                        <div class="mb-3">
                            <label for="newPassword" class="form-label">New Password</label>
                            <input type="password" class="form-control" id="newPassword"
                                aria-describedby="PasswordHelp" placeholder="" value="1234567">
                        </div>
                        <!-- conform password  -->
                        <div class="mb-3">
                            <label for="conformPassword" class="form-label">Conform New Password</label>
                            <input type="password" class="form-control" id="conformPassword"
                                aria-describedby="PasswordHelp" placeholder="" value="1234567">
                        </div>
                        <!-- change password button  -->
                        <button type="submit" class="btn rounded-pill w-100 btn-outline mb-3" id="change-password-button">Change Password</button>
                        <div class="mb-3 d-flex justify-content-center align-items-center"> <a href="#"
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
</body>
<script src="resources/js/bootstrap.bundle.min.js"></script>

</html>