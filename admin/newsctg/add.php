<?php

require '../../core/core.php';
if(checkLogin() == false){
    header("Location:/$base_url/login.php");
}
if ($_POST) {
    if (!isset($_POST['name']) ||
            empty($_POST['name']) ) {
        header("Location:newsctg.php");
    }
    $name = $_POST['name'];
    $desctibtion = $_POST['describtion'];
    $active = $_POST['active'];
    $sql = "insert into news_category(name,describtion,active) values ('".$name."','"
            .$desctibtion."','".$active."')";
    $result = mysqli_query($link, $sql);
    if($result){
        header("Location:newsctg.php");
    }
}
header("Location:newsctg.php");