<?php

require './core/core.php';

$result = mysqli_query($link, "select * from news_category");
while ($row = mysqli_fetch_array($result)) {
    $data['menu'][] = $row;
}


if (!$_POST) {
    $smarty->assign("data", $data);
    $smarty->assign("page", "client/login.tpl");
    $smarty->display("client/base.tpl");
}

if ($_POST) {
    if (!isset($_POST['username']) || !isset($_POST['password'])) {
        $data['msg'] = "لطفا اطلاعات خود را کامل ارسال نمائید";
        $smarty->assign("data", $data);
        $smarty->assign("page", "client/login.tpl");
        $smarty->display("client/base.tpl");
    }
    if (empty($_POST['username']) || empty($_POST['password'])) {
        $data['msg'] = "لطفا اطلاعات خود را کامل ارسال نمائید";
        $smarty->assign("data", $data);
        $smarty->assign("page", "client/login.tpl");
        $smarty->display("client/base.tpl");
    }
    
    $username = $_POST['username'];
    $password = $_POST['password'];
    $result = mysqli_query($link, "select * from users where "
            . "username='" . $username . "' or email='" . $username . "' and password='" . md5($password) . "'");
    $result = mysqli_fetch_array($result);
    if (empty($result)) {
        $data['msg'] = "کاربری با این مشخصات یافت نشد";
        $smarty->assign("data", $data);
        $smarty->assign("page", "client/login.tpl");
        $smarty->display("client/base.tpl");
    }

    $_SESSION['id'] = $result['id'];
    header("Location:admin/news/news.php");
}
