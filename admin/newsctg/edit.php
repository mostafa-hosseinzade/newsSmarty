<?php

require '../../core/core.php';
if(checkLogin() == false){
    header("Location:/$base_url/login.php");
}
if(empty($_POST['name'])){
    header("Location:newsctg.php");
}

$sql = "update news_category set  name ='" . $_POST['name'] . "',
	describtion='" . $_POST['describtion'] . "',active='".$_POST['active']."'"
        . " where id ='" . $_POST['id'] . "'";

$r = mysqli_query($link, $sql);
if ($r) {
    header("Location:newsctg.php");
}else{
    echo mysqli_error($link);
}
