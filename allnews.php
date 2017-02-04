<?php
require './core/core.php';
if(!$_GET || !isset($_GET['id'])){
    header("Location:index.php");
}
if(empty($_GET['id'])){
    header("Location:index.php");
}
$id = $_GET['id'];

$result = mysqli_query($link, "select * from news_category where id='".$id."'");
$result = mysqli_fetch_array($result);

if(empty($result)){
    header("Location:index.php");
}
$data = array();
$data['cat'] = $result;

$result = mysqli_query($link, "select * from news where cat_id = '".$id."'");
while ($row = mysqli_fetch_array($result)) {
    $data['allnews'][]=$row;
}

if(empty($data['allnews'])){
    header("Location:index.php");
}

////most visit
//$result = mysqli_query($link, "select * from news order by visit desc limit 4");
//
//while ($row = mysqli_fetch_array($result)) {
//    $data['most_visit'][]=$row;
//}
//menu 
$result = mysqli_query($link, "select * from news_category");
while ($row = mysqli_fetch_array($result)) {
    $data['menu'][]=$row;
}

$smarty->assign("data",$data);

$smarty->assign("page","client/showall.tpl");

$smarty->display("client/base.tpl");