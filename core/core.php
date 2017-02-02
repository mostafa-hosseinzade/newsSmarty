<?php
/**
 * Example Application
 *
 * @package Example-application
 */

require __DIR__.'/../libs/smarty/Smarty.class.php';

$link = mysqli_connect('localhost','root','root','news_smarty');
$link->set_charset("utf8");
$smarty = new Smarty;

//$smarty->force_compile = true;
//$smarty->debugging = true;
// $smarty->caching = true;
$smarty->cache_lifetime = 120;
$smarty->setTemplateDir(__DIR__.'/../templates');
$smarty->setCompileDir('templates_c');

$base_url = "Git/newsSmarty";
$smarty->assign("base_url",$base_url);

