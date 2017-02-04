<?php


require __DIR__.'/../libs/smarty/Smarty.class.php';

$link = mysqli_connect('localhost','root','root','news_smarty');
$link->set_charset("utf8");
$smarty = new Smarty;

//$smarty->force_compile = true;
//$smarty->debugging = true;
 $smarty->caching = false;
//$smarty->cache_lifetime = 120;
$smarty->setTemplateDir(__DIR__.'/../templates');
$smarty->setCompileDir('templates_c');

$base_url = "Git/newsSmarty";
$smarty->assign("base_url",$base_url);
session_start();


function checkLogin() {
    global $link;
    if(isset($_SESSION['id']) && !empty($_SESSION['id'])){
        $result = mysqli_query($link, "select * from users where id ='".$_SESSION['id']."'");
        $user = mysqli_fetch_array($result);
        if(empty($user)){
            return false;
        }
        return true;
    }
    return false;
}
