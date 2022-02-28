<?php
include('includes/config.php');
session_start();
extract($_POST);
// print_r ($_POST);
$name = $_POST['name'];
$card_num = $_POST['card_num'];
$cvv= $_POST['cvv'];
$expr = $_POST['expr'];
$sql="SELECT * from bank where card_num = $card_num ";
$query=mysqli_query($con,$sql);
$result=mysqli_fetch_array($query);
if($result)
{
// print_r($result);
$ex =str_replace(' ', '', $expr);
if($result[1] == $name && $result[2] == $cvv && ($result[3] == $expr || $result[3] == $ex)  )
{

   $price = $result[4];
  
$prc =( $_SESSION['prc']);
  
    $q =(int)$price - $prc; 
    
    // echo$price ."\n";
    // echo$prc ."\n";
    // echo$q;
    if($q > 0)
    {

mysqli_query($con,"UPDATE `bank` SET balance=$q where  card_num = $card_num ");
    }else if($q < 0){
?>

<?php 
header('location:index.php?id=no');
exit();


  }
    
    
    
    mysqli_query($con,"update orders set 	paymentMethod='".  $_SESSION['paymentMethod']."' where userId='".$_SESSION['id']."' and paymentMethod is null ");
   
		unset($_SESSION['cart']);
		header('location:order-history.php');
}else{


header('location:card_payment.php?id=no');

}

}
?>