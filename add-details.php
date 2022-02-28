<?php
session_start();
if(isset($_POST)){
   extract($_POST);
   
   $_SESSION["'".$prod."'"] = $info." dress color =".$color;
   echo true;
   
}