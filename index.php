<?php

require './core/core.php';

$result = mysqli_query($link, "select * from news where slider = '1'");
$data=array();
//slider
while ($row = mysqli_fetch_array($result)) {
    $data['slider'][]=$row;
}
//most visit
$result = mysqli_query($link, "select * from news order by visit desc limit 4");

while ($row = mysqli_fetch_array($result)) {
    $data['most_visit'][]=$row;
}

//most like
$result = mysqli_query($link, "select * from news order by like_count desc limit 3");

while ($row = mysqli_fetch_array($result)) {
    $data['most_like'][]=$row;
}

//last insert
$result = mysqli_query($link, "select * from news order by created_at desc limit 4");

while ($row = mysqli_fetch_array($result)) {
    $data['last_insert'][]=$row;
}

//menu 
$result = mysqli_query($link, "select * from news_category");
while ($row = mysqli_fetch_array($result)) {
    $data['menu'][]=$row;
}

$page ="client/index.tpl";

$smarty->assign("data",$data);
$smarty->assign("page",$page);

$smarty->display("client/base.tpl");