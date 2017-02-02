<?php
	include ('core.php');
	if(isset ($_POST["edit_btn"]))
		{
		$name = $_POST['name'];
		$lname = $_POST['family'];
		mysqli_query("update user set `name` = '$name',`family` = '$lname' where id='".$_POST['id']."'");	
		}
	$id = $_GET['id'];
	$q = mysql_query("select * from user where `id` = '$id'");
	$r = mysql_fetch_array($q);
	$smarty->assign('q_edit',$r);
	$smarty->assign("theme","useredit.tpl");
	$smarty->display('base.tpl');
?>
	
