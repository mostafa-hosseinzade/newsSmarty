<?php

require './core/core.php';
if ($_POST) {
    if (isset($_POST['email']) && isset($_POST['phone']) && !empty($_POST['email']) && !empty($_POST['phone'])) {
        $email = $_POST['email'];
        $phone = $_POST['phone'];
        $msg = $_POST['message'];
        $name = $_POST['name'];
        $create = new DateTime();
        $create = $create->format("Y-m-d H:i:s");
        $sql = "insert into contact(name,email,phone,msg,created_at) values("
                . "'".$name."','".$email."','".$phone."','".$msg."','".$create."')";
        $r = mysqli_query($link, $sql);
        if($r){
            header("Location:index.php");
        }else{
            echo 'سیستم موقتا با مشکل مواجه شده است';
        }
    }
}
