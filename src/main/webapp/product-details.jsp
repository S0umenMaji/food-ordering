<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LET"S EAT</title>

    <link rel="stylesheet" href="/style.css" !important>
    <link rel="stylesheet" href="/style2.css" !important>
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

<div class="small-container single-product">
    <div class="row">
        <div class="col-2">
            <img src="/images/pizzas/chciken peri peri.JPG" height="300px" width="100%"alt="" class="main-img-p" id="productImg">
            <div class="small-img-row">
                <div class="small-img-col">
                    <img src="/images/pizzas/chciken peri peri.JPG"  class="product-click-img"  alt="">
                </div>
                <div class="small-img-col">
                    <img src="/images/pizzas/peri-peri-pizza_tn2.jpg"  class="product-click-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="/images/pizzas/peri-3.jpg"  class="product-click-img" alt="">
                </div>
                <div class="small-img-col">
                    <img src="/images/pizzas/peri-4.jpg" class="product-click-img"  alt="">
                </div>
            </div>
        </div>
        <div class="col-2 prod-desc">
            <p>Home/Pizzas/Peri Peri Chicken Pizza </p>
            <h1>Peri Peri Chicken Pizza</h1>
           
            <h4>₹499</h4>
            <p>Quantity : <input type="number" name="" value="1" min="1" max="5"id=""></p>
            <form action="/register.jsp">
                <button type="submit" class="btn">Order Now</button>

            </form>
            
            <h3>Item Details <i class="fa fa-indent checked"></i></h3>
            <br>
            <p>A flavoursome pairing of seasoned chicken pieces, Italian cherry tomatoes, sliced red onion & baby spinach, topped with a swirl of our addictive peri peri sauce.</p>
        </div>
    </div>
</div>




<div class="small-container">
    <div class="row row-1 row-2">
        <h2>Related Products</h2>
        <a href="/pizza.html" style="color: #ff532b;">View More</a> 
    </div>
</div>

    <div class="small-container">
       
      
        <div class="row row-1">
            
            <div class="col-4">
               <a href=""> <img src="/images/pizzas/margherita-pizza-4.jpg" alt="">
                <h4>Pizza Margherita</h4>
                <div class="rating">
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star-o checked"></i>
                </div></a>
                <p class="exc-price">₹499</p>
            </div>
            
            <div class="col-4">
               <a href=""> <img src="/images/pizzas/itilian cruise mariana.jpg" alt="">
                <h4>Itilain Cheese Pizza</h4>
                <div class="rating">
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star-o checked"></i>
                </div></a>
                <p class="exc-price">₹499</p>
            </div>
            
            <div class="col-4">
               <a href=""> <img src="/images/pizzas/chciken peri peri.JPG" alt="">
                <h4>Peri Peri Chicken Pizza</h4>
                <div class="rating">
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star-o checked"></i>
                </div></a>
                <p class="exc-price">₹499</p>
            </div>
            
            <div class="col-4">
               <a href=""> <img src="/images/pizzas/Chicken_Sausage.jpg" alt="">
                <h4>CHICKEN SAUSAGE</h4>
                <div class="rating">
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star checked"></i>
                    <i class="fa fa-star-o checked"></i>
                </div></a>
                <p class="exc-price">₹499</p>
            </div>
            
           
            
        
        </div>

     


    </div>

    <div class="footer">
        <p>Copyright &copy; Team PrEmIx(Soumen Maji & Ramkrishna Ghosh)</p>
    </div>




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
    <script>

        var productImg =document.getElementById("productImg");
        var smallImg=document.getElementsByClassName("product-click-img");
        smallImg[0].onclick = function(){
            productImg.src=smallImg[0].src;
        }
        smallImg[1].onclick = function(){
            productImg.src=smallImg[1].src;
        }
        smallImg[2].onclick = function(){
            productImg.src=smallImg[2].src;
        }
        smallImg[3].onclick = function(){
            productImg.src=smallImg[3].src;
        }

    </script>
</body>

</html>