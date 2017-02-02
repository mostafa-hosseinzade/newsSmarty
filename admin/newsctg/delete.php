<?php
require '../../core/core.php';

if(isset($_POST['delete_id']) && !empty($_POST['delete_id'])){
	$sql = "delete from news_category where id ='".$_POST['delete_id']."'";
	$r = mysqli_query($link,$sql);
	if($r){
		header("Location:newsctg.php");
	}
}
header("Location:newsctg.php");
