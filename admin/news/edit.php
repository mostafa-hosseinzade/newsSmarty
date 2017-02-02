<?php
require '../../core/core.php';

$sql = "update news set  title ='" . $_POST['title'] . "',
	short_note='" . $_POST['short_note'] . "' , note='" . $_POST['note'] . "' where id ='" . $_POST['id'] . "'";

$r = mysqli_query($link, $sql);
if ($r) {
    header("Location:newslist.php");
}
