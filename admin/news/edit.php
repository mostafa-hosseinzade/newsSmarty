<?php

require '../../core/core.php';
if(checkLogin() == false){
    header("Location:/$base_url/login.php");
}
$check = false;
if(!empty($_FILES['pic_url']['name'])){
$check = getimagesize($_FILES["pic_url"]["tmp_name"]);
}
if(empty($_POST['title']) || empty($_POST['note'])){
    header("Location:news.php");
}
//دستور ویرایش اطلاعات
$sql = "update news set  title ='" . $_POST['title'] . "',
	short_note='" . $_POST['short_note'] . "' , note='" . $_POST['note'] . "',slider='".$_POST['slider']."'"
        . ",cat_id='".$_POST['ctg_id']."'"
        . " where id ='" . $_POST['id'] . "'";
if ($check !== false) {
    if (move_uploaded_file($_FILES["pic_url"]["tmp_name"], __DIR__."/../../public/img/upload/".$_FILES['pic_url']['name'])) {
            $sql = "update news set  title ='" . $_POST['title'] . "',
	short_note='" . $_POST['short_note'] . "',slider='".$_POST['slider']."',"
        . "cat_id='".$_POST['ctg_id']."', note='" . $_POST['note'] . "',pic_url='".$_FILES['pic_url']['name']."' where id ='" . $_POST['id'] . "'";
 
        }
}

$r = mysqli_query($link, $sql);
if ($r) {
    header("Location:news.php");
}else{
    echo mysqli_error($link);
}
