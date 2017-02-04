<?php

require './core/core.php';

if(isset($_GET) && isset($_GET['id']) && !empty($_GET['id'])){
    	$ip = $_SERVER['REMOTE_ADDR'];
        $id = $_GET['id'];
	$sql ="select * from like_ip where news_id ='".$id."' and ip='".$ip."'";
	$r = mysqli_query($link,$sql);
	if(mysqli_num_rows($r) == 0){
		$sql ="insert into like_ip (ip,news_id) values('".$ip."','".$id."')";
		$r = mysqli_query($link,$sql);
		$sql ="update news as s set s.like_count = s.like_count+1 where id = ".$id;
		
		$r = mysqli_query($link,$sql);
	}
	header("Location:/$base_url/show.php?id=".$id);
}
header("Location:/$base_url/show.php?id=".$id);