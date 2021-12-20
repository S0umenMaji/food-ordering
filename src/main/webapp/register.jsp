<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LET"S EAT</title>

    <link rel="stylesheet" href="/style.css" !important>
    <link rel="stylesheet" href="/style2.css">
    <link rel="stylesheet" href="/style3.css" !important>
    <link rel="stylesheet" href="/nav.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/18b3d4a351.js" crossorigin="anonymous"></script>
</head>


<body>
    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="logo"><a href="/index.html">LET'S EAT</a></div>
                <nav>
                    <ul id="MenuItems">
                        <li><a href="/index.html">HOME</a></li>
                        <li><a href="/index.html#top-categories">Top Categories</a></li>
                        <li><a href="/about.html">About Us</a></li>
                        <li><a href="/index.html#contact-us-form">Contact US</a></li>
                        <li><a href="/register.html">register</a></li>
                    </ul>
                </nav>
                <img src="/images/menu.png" onclick="menutoggle()" class="menu-icon" alt="">
            </div>

        </div>
    </div>

    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <div class="card">
                        <div class="inner-box" id="card">
                            <div class="card-front">
                                <h2>LOGIN</h2>
                                <form action="/page/old" method="post">

                                    <input type="email" name="name" class="input-box" placeholder="Enter Your Email Id"
                                        required id="">
                                    <input type="password" class="input-box" placeholder="Password" name="pass" id="">
                                    <button type="submit" class="submit-btn">Submit</button>
                                    <input type="checkbox" name="" id=""><span>Remember Me</span>
                                </form>
                                <button type="button" class="btn" onclick="openRegister()">New User ,Sign In</button>
                                <a href="">Forget Password</a>
                            </div>
                            <div class="card-back">
                                <h2>SIGNIN</h2>
                                <form action="/page/new" method="post">

                                    <input type="text" name="name" class="input-box" placeholder="Enter Your Name" required
                                        id="">
                                    <input type="email" name="email" class="input-box" placeholder="Enter Your Email Id"
                                        required id="">
                                    <input type="password" class="input-box" placeholder="Password" name="pass" id="">
                                   

                                
                                    <button id="myBtn" class="submit-btn">Submit</button>
                                </form>

                                <button type="button" class="btn" onclick="openLogin()">Already have an account</button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>

    <div class="footer">
        <p>Copyright &copy; Team PrEmIx(Soumen Maji & Ramkrishna Ghosh)</p>
    </div>


    <script>
        var card = document.getElementById('card');
        function openRegister() {
            card.style.transform = "rotateY(-180deg)";
        }
        function openLogin() {
            card.style.transform = "rotateY(0deg)";
        }
    </script>

    <script>
        var MenuItems = document.getElementById("MenuItems");

        MenuItems.style.maxHeight = "0px";
        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px";
            } else {
                MenuItems.style.maxHeight = "0px";
            }
        }
    </script>

   

</body>

</html>