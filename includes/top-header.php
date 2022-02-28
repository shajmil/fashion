<?php 
//session_start();

?>
<style>
.dropbtn {

    color: #333;

    font-size: 12px;
    border: none;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    min-width: 160px;

    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {}
</style>
</style>
<div class="top-bar animate-dropdown">
    <div class="container">
        <div class="header-top-inner">
            <div class="cnt-account">
                <ul class="list-unstyled">

                    <?php if(strlen($_SESSION['login']))
    {   ?>
                    <li><a href="#"><i class="icon fa fa-user"></i>Welcome
                            -<?php echo htmlentities($_SESSION['username']);?></a></li>
                    <?php } ?>

                    <li><a href="my-account.php"><i class="icon fa fa-user"></i>My Account</a></li>
                    <li><a href="my-wishlist.php"><i class="icon fa fa-heart"></i>Wishlist</a></li>
                    <li><a href="my-cart.php"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
                    <?php if(strlen($_SESSION['login'])==0)
    {   ?><div class="dropdown">
                        <button class="dropbtn">Login</button>
                        <div class="dropdown-content">
                            <li><a href="admin/index.php"><i class="icon fa fa-sign-in"></i>Admin</a></li>
                            <li><a href="login.php"><i class="icon fa fa-sign-in"></i>User</a></li>



                        </div>
                    </div>

                    <?php }
else{ ?>

                    <li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Logout</a></li>
                    <?php } ?>
                </ul>
            </div><!-- /.cnt-account -->

            <div class="cnt-block">
                <ul class="list-unstyled list-inline">
                    <li class="dropdown dropdown-small">
                        <a href="track-orders.php" class="dropdown-toggle"><span class="key">Track Order</b></a>

                    </li>


                </ul>
            </div>

            <div class="clearfix"></div>
        </div><!-- /.header-top-inner -->
    </div><!-- /.container -->
</div><!-- /.header-top -->