<?php

require '../../core/core.php';
if(checkLogin() == false){
    header("Location:/$base_url/login.php");
}
if ($_POST) {
    if (!isset($_POST['username']) || !isset($_POST['email']) || !isset($_POST['passwprd']) ||
            empty($_POST['username']) || empty($_POST['email']) || empty($_POST['password']) ) {
        header("Location:users.php");
    }
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $sql = "insert into users(username,email,password) values ('".$username."','"
            .$email."','".  md5($password)."')";
    $result = mysqli_query($link, $sql);
    if($result){
        header("Location:users.php");
    }
}
header("Location:users.php");