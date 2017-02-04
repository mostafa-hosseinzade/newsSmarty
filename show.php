<?php

require './core/core.php';
if (!$_GET || !isset($_GET['id'])) {
    header("Location:index.php");
}
if (empty($_GET['id'])) {
    header("Location:index.php");
}
$id = $_GET['id'];


$result = mysqli_query($link, "select * from news where id = '" . $id . "'");


$result = mysqli_fetch_array($result);
if (empty($result)) {
    header("Location:index.php");
}
if (!isset($_COOKIE['firsttime'])) {
    setcookie("firsttime", "no", 12000);
    $sql = "update news as s set s.visit=s.visit+1 where id = '" . $id."'";
    mysqli_query($link,$sql);
}

$data = array();

$data['show'] = $result;

//most visit
$result = mysqli_query($link, "select * from news order by visit desc limit 4");

while ($row = mysqli_fetch_array($result)) {
    $data['most_visit'][] = $row;
}
//menu 
$result = mysqli_query($link, "select * from news_category");
while ($row = mysqli_fetch_array($result)) {
    $data['menu'][] = $row;
}

$smarty->assign("data", $data);

$smarty->assign("page", "client/show.tpl");

$smarty->display("client/base.tpl");
