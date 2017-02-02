<?php
require '../../core/core.php';

$data = [];

$q_cat = mysqli_query($link, "select * from users");
while($row =mysqli_fetch_array($q_cat)){
	$data['users'][] = $row;
}

$smarty->assign("data",$data);
$smarty->assign("page","./users/userslist.tpl");
$smarty->display('admin/base.tpl');
?>