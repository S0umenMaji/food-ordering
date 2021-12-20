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

<style>
    .navbar{
        padding: 30px !important;
    }
</style>
<body>
    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="home-btn"><a href="/index.html"><img src="/images/home.png" alt=""></a></div>
                <!-- <nav>
                    <ul id="MenuItems">
                        <li><a href="index.html">HOME</a></li>
                        <li><a href="index.html#top-categories">Top Categories</a></li>
                        <li><a href="about.html">About Us</a></li>
                        <li><a href="index.html#contact-us-form">Contact US</a></li>
                        <li><a href="register.html">register</a></li>
                    </ul>
                </nav> -->
                <!-- <img src="images/menu.png" onclick="menutoggle()" class="menu-icon" alt=""> -->
            </div>

        </div>
    </div>

    <div class="small-container">
        <div class="box-otp">
            <div class="box-head ">
                <h2>Order Confirmation</h2>
            </div>
            <div class="box-body">
                <img src="/images/h.png" alt="" class="hurray-img">
                    <h3 class="conform">Hurray!!Order Confirmed</h3>
                    <p class="cps">Your Order Has been Succesfully placed!! Thank You!!!....</p>
                   
                    <a href="/index.jsp" class="btn confirm-btn">Continue</a>
            
            </div>
              
                <div class="box-footer">
                    <br>
                </div>
        </div>
       
    </div>
    <div class="small-container">
        <div class="box-otp">
            <div class="box-head ">
                <h2>Order Confirmation</h2>
            </div>
            <div class="box-body">
                <img src="/images/cry.png" alt="" class="hurray-img">
                    <h3 class="conform-red">Sorry!!Order Unsucessful</h3>
                    <p class="cps">Oops!! Order Unsucessful. Sorry for the inconveience caused!!!....</p>
                   
                    <a href="/index.html" class="btn confirm-btn">Continue</a>
            
            </div>
              
                <div class="box-footer">
                    <br>
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