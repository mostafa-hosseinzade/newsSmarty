<?php
require '../../core/core.php';

if(isset($_GET['delete_id'])){
	$sql = "delete from news where id ='".$_GET['delete_id']."'";
	$r = mysqli_query($link,$sql);
	if($r){
		header("Location:admin/news/news.php");
	}
}

