<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>My Profile</title>
        <link href="../css/dashboard.css" rel="stylesheet">
    </head>
    <body>
      <div id='list'>
         <ul>
            <li class='logo-class'>The Bean Cafe</li>
            <li><a href="../mainpage.jsp">My Account</a></li>
            <li><a href="../html/bookings.html">Catering</a></li>
            <li><a href="../html/specials.html">Specials</a></li>
            <li><a href="../html/orders.html">Orders</a></li>
            <li><a href="../html/menu.html">Menu</a></li>
           </ul>
         </div>
    <div class='container'>
        <h2>Welcome to your account!</h2>

        <div class='log'>
         <a href="logout.jsp" target="_self">
            <div class="register-button"> Logout
            </div> </a>
        </div>

        <fieldset class='fset-class'>
            <legend>Your past orders</legend>
            
           <center>
            <p class='p'>You don't have any past orders.
                        <br>
                        Head over to the <a href="../html/orders.html">Orders</a> section and order now!
            </p>
           </center> 

        </fieldset>

    <fieldset class='fset-class'>
        <legend>Recommended for you</legend>

    </fieldset>


    </div>

    </body>
</html>


