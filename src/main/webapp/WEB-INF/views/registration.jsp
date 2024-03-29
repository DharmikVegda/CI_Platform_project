<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/registration.css" type="text/css">
    <title>REGISTRATION PAGE</title>

</head>

<body>
    <div class="container-fluid">
        <div class="row justify-content-center align-items-center">
            <div class="col-12 col-xl-8 justify-content-center align-items-center carousel-img">
                <%@ include file="carousel.html" %>
            </div>
            <div class="col-12 col-xl-4 mt-3">
                <div class="row registration-form align-items-center">
                    <form action="registerHandler" method="post" onsubmit="return validatepass()">
                        <!-- first name -->
                        <div class="mb-3">
                            <label for="InputFirstName" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="InputFirstName"
                                name="firstname">
                        </div>
                        <!-- last name  -->
                        <div class="mb-3">
                            <label for="InputLastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="InputLastName"
                                name="lastname">
                        </div>
                        <!-- phone number  -->
                        <div class="mb-3">
                            <label for="InputPhoneNumber" class="form-label">Phone Number</label>
                            <input type="number" class="form-control" id="InputPhoneNumber"
                                name="phonenumber">
                        </div>
                        <!-- email address  -->
                        <div class="mb-3">
                            <label for="InputEmail" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="InputEmail"
                                name="email">
                        </div>
                        <!-- password  -->
                        <div class="mb-3">
                            <label for="InputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="Password" name="password">
                        </div>
                        <!-- conform password  -->
                        <div class="mb-3">
                            <label for="conformPassword" class="form-label">Conform New Password</label>
                            <input type="password" class="form-control" id="conformPassword"
                                placeholder="">
                        </div>
                        <!-- register button  -->
                        <button type="submit" class="btn rounded-pill mb-3" id="register-button">Register</button>
                        <div class="mb-3 d-flex justify-content-center align-items-center"> 
                            
                        <a href="#"
                                id="lost-password-text">Lost your password?</a> </div>
                        <div class="d-flex justify-content-center align-items-center"> <span id="already-register-text">Already registered?</span> <a href="#" class="ms-1">Login now</a> </div>
                    </form>
                </div>
                <!-- privacy policy text  -->
                <div class="row">
                    <div class="d-flex justify-content-center align-items-center privacy-policy pt-4"> <span>Privacy
                            Policy</span> </div>
                </div>
            </div>
        </div>
    </div>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script>
    	function validatepass(){
    		/* let pass = document.getElementById("password").value;
        	let cpass = document.getElementById("conformpassword").value;
        	console.log(pass);
        	console.log(cpass); */
        	alert("he");
        	return false;
    	}
    	
    </script>
</body>

</html>