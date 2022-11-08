<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form by Colorlib</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="../colorlib-regform-7/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../colorlib-regform-7/css/style.css">
</head>
<body>

<div class="main">

    <!-- Sign up form -->
    <form action="/createAccount">
    <section class="signup">
        <div class="container">
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Sign up</h2>
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                            <label for=id><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="id" id="id" placeholder="Id auto" value="0" readonly/>
                        </div>
                        <div class="form-group">
                            <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="username" id="username" placeholder="User Name"/>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="password" id="pass" placeholder="Password"/>
                        </div>
                        <div class="form-group">
                            <label for=name><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" placeholder="Name" />
                        </div>
                        <div class="form-group">
                            <label for=age><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="age" id="age" placeholder="Age" />
                        </div>
                        <div class="form-group">
                            <label for=gender><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="gender" id="gender" placeholder="gender" />
                        </div>
                        <div class="form-group">
                            <label for=phone><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="phonenumber" id="phone" placeholder="Phonenumber" />
                        </div>
                        <div class="form-group">
                            <label for=address><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="address" id="address" placeholder="Address" />
                        </div>
                        <div class="form-group">
                            <label for=img><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="img" id="img" placeholder="Img" />
                        </div>
                        <div class="form-group">
                            <label for=role><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="id_role" id="role" placeholder="Id_role" value="2" readonly />
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="../colorlib-regform-7/images/signup-image.jpg" alt="sing up image"></figure>
                    <a href="#" class="signup-image-link">I am already member</a>
                </div>
            </div>
        </div>
    </section>
    </form>

</div>

<!-- JS -->
<script src="../colorlib-regform-7/vendor/jquery/jquery.min.js"></script>
<script src="../colorlib-regform-7/js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>