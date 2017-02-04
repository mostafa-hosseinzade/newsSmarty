<?php
require '../../core/core.php';
if(checkLogin() == false){
    header("Location:/$base_url/login.php");
}
if(isset($_POST['delete_id']) && !empty($_POST['delete_id'])){
	$sql = "delete from users where id ='".$_POST['delete_id']."'";
	$r = mysqli_query($link,$sql);
	if($r){
		header("Location:users.php");
	}
}
header("Location:users.php");
