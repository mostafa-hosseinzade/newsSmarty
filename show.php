<?php
if(!$_GET || !isset($_GET['id'])){
    header("Location:index.php");
}
if(empty($_GET['id'])){
    header("Location:index.php");
}
$id = $_GET['id'];

$result = mysqli_query($link, "select * from news where id = '".$id."'");

$result = mysqli_fetch_array($result);
if(empty($result)){
    header("Location:index.php");
}
$data = array();

$data['show'] = $result;

//most visit
$result = mysqli_query($link, "select * from news order by visit desc limit 4");

while ($row = mysqli_fetch_array($result)) {
    $data['most_visit'][]=$row;
}

$smarty->assign("data",$data);

$smarty->assign("page","show.tpl");

$smarty->display("client/base.tpl");