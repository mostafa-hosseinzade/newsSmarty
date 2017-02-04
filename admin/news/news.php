<?php
require '../../core/core.php';
if(checkLogin() == false){
    header("Location:/$base_url/login.php");
}

$q_newslist = mysqli_query($link,"select * from news");
$data = [];
while($row =mysqli_fetch_array($q_newslist)){
	$data['newslist'][] = $row;
}

$q_cat = mysqli_query($link, "select * from news_category");
while($row =mysqli_fetch_array($q_cat)){
	$data['catlist'][] = $row;
}

$smarty->assign("data",$data);
$smarty->assign("page","./news/newslist.tpl");
$smarty->display('admin/base.tpl');
?>