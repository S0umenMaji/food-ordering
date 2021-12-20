<!DOCTYPE html>
<html>
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
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
  padding: 0;
}

html {
  box-sizing: border-box;
  
}

*, *:before, *:after {
  box-sizing: inherit;
}
.row{
    display: flex;
    flex-basis: 47%;
}
.column {
  margin-left: 10%;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
    box-shadow: 8px 20px 20px 8px rgba(0, 0, 0, 0.2), 8px 20px 20px 8px rgba(0, 0, 0, 0.2);
    margin: 49px;
    max-width: 355px;
    border-radius: 15px;
}

.abt-hed{
  margin-top: 25px;
    text-align:center ;
    font-size: 38px;
    position: relative;
}
.abt-hed::after{
  content: '';
   background:#FFCC00 ;
   width: 142px;
   height: 5px;
   position: absolute;
   border-radius: 5px;
   bottom: -8px;
   left: 50%;
   transform: translateX(-50%);
}
.card img{
    height: 178px;
    width: 182px;
    margin: 0px 21%;
}
.container {
  padding: 0 16px;
}
.abt-tit{
    text-align: center;
    margin-top: 10px;
    margin-bottom: 11px;
}
.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}
.c-ico a img{
    height: 35px;
    width: 35px;
    border-radius: 50%;
}
.c-ico a{
    margin-right: 2px;
    display: inline-block;
}
.c-ico{
  margin: 15px 21%;
}
.title {
  color: grey;
  text-align: center;
  margin-bottom: 8px;
}
.para{
    text-align: center;
    line-height: 21px
}
.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
.prof-pic{
  border-radius: 50%;
}
@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    margin-left: 0;
    display: block;
  }
  .card img{
    height: 25vh;
    width: 35vw;
    margin: 0  13%;
}
}
</style>
</head>
<body>
    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="logo"><a href="index.html">LET'S EAT</a></div>
                <nav>
                    <ul id="MenuItems">
                        <li><a href="/index.jsp">HOME</a></li>
                        <li><a href="/index.jsp#top-categories">Top Categories</a></li>
                        <li><a href="/about.jsp">About Us</a></li>
                        <li><a href="/index.jsp#contact-us-form">Contact US</a></li>
                        <li><a href="/register.jsp">register</a></li>
                    </ul>
                </nav>
                <img src="/images/menu.png" onclick="menutoggle()" class="menu-icon" alt="">
            </div>

        </div>
    </div>


<h2 class="abt-hed">Team PREMIX</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="/images/prof-1.jpg" class="prof-pic" alt="Soumen" >
      <div class="container">
        <h2 class="abt-tit">Soumen Maji</h2>
        <p class="title">Frontend,Design</p>
        <p class="para">Pursuing Diploma in Computer Science and Technology From Kanapur Polytechnic</p>
        <p class="para">Intrested In Cybersecurity and Web Development</p>
        <div class="c-ico">
            <a href=""  target="_blank" ><img src="images/whatsapp.png" alt=""></a>
            <a href="https://www.facebook.com/soumen.maji.7564" target="_blank" ><img src="images/facebook.png" alt=""></a>
            <a href="https://www.linkedin.com/in/soumen-maji-822389210" target="_blank" ><img src="images/linkedin.png" alt=""></a>
            <a href="https://www.instagram.com/the_bong_stuff/" target="_blank" ><img src="images/instagram.png" alt=""></a>
        </div>
      
   
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="/images/user-1.png"class="prof-pic" alt="Soumen" >
      <div class="container">
        <h2 class="abt-tit">Ramkrishna Ghosh</h2>
        <p class="title">Backend Devoloper</p>
        <p class="para">-- Description --</p>
        <p class="para">-- Here --</p>
        <div class="c-ico">
            <a href=""><img src="/images/whatsapp.png" alt=""></a>
            <a href="https://www.linkedin.com/in/ramkrishna-ghosh-915a29203"><img src="images/linkedin.png" alt=""></a>
            <a href=""><img src="/images/instagram.png" alt=""></a>
        </div>
      
   
      </div>
    </div>
  </div>

  
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
</body>
</html>
