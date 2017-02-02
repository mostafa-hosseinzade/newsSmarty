<?php
include('INDEX.PHP');
$page = "newslist.tpl";
if(isset($_GET) && isset($_GET['page'])){
$page = $_GET['page'];	
	if(isset($_GET['id'])){
		$q_userlist2 = mysqli_query($link,"select * from news where id ='".$_GET['id']."'");
		$data2 =mysqli_fetch_array($q_userlist2);
	}
}else{
	$q_userlist2 = mysqli_query($link,"select * from news");
$data2 = [];

while($row =mysqli_fetch_array($q_userlist2)){
	$data2[] = $row;
}
}
$smarty->assign("newslist",$data2);
$smarty->assign("page",$page);
$smarty->display('base.tpl');
?>