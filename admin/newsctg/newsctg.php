<?php
require '../../core/core.php';

$data = [];

$q_cat = mysqli_query($link, "select * from news_category");
while($row =mysqli_fetch_array($q_cat)){
	$data['catlist'][] = $row;
}

$smarty->assign("data",$data);
$smarty->assign("page","./newsctg/newsctglist.tpl");
$smarty->display('admin/base.tpl');
?>