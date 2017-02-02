<?php

require '../../core/core.php';

$q_userlist = mysqli_query($link,"select * from news");
$data = [];
while($row =mysqli_fetch_array($q_userlist)){
	$data[] = $row;
}
$smarty->assign("newslist",$data);
$smarty->assign("page","./news/newslist.tpl");
$smarty->display('admin/base.tpl');
?>