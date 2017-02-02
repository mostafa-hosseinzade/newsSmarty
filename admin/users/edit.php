<?php

require '../../core/core.php';

if(empty($_POST['username'] || empty($_POST['email']))){
    header("Location:newsctg.php");
}

$sql = "update users set  username ='" . $_POST['username'] . "',email = '".$_POST['email']."'";

if(!empty($_POST['password'])){
    $sql = $sql.",password='".md5($_POST['password'])."'";
}
$sql .= " where id ='" . $_POST['id'] . "'";
$r = mysqli_query($link, $sql);
if ($r) {
    header("Location:users.php");
}else{
    echo mysqli_error($link);
}
