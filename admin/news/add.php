<?php

require '../../core/core.php';

if ($_POST) {
    if (!isset($_POST['title']) ||
            !isset($_POST['note']) ||
            empty($_POST['note']) ||
            empty($_POST['title'])) {
        header("Location:news.php");
    }
    $title = $_POST['title'];
    $short_note = $_POST['short_note'];
    $note = $_POST['note'];
    $cat_id = $_POST['ctg_id'];
    $pic = "";
    $slider = $_POST['slider'];
    if (isset($_FILES['pic_url']) && !empty($_FILES['pic_url'])) {
        if (move_uploaded_file($_FILES["pic_url"]["tmp_name"], __DIR__."/../../public/img/upload/".$_FILES['pic_url']['name'])) {
            $pic = $_FILES['pic_url']['name'];
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
    $sql = "insert into news(title,short_note,note,cat_id,pic_url,slider) values ('".$title."','"
            .$short_note."','".$note."','".$cat_id."','".$pic."','".$slider."')";
    $result = mysqli_query($link, $sql);
    echo 'All its add';
    if($result){
        header("Location:news.php");
    }
}
header("Location:news.php");