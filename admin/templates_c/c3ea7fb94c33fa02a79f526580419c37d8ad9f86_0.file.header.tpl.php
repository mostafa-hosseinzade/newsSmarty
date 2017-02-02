<?php
/* Smarty version 3.1.30, created on 2017-02-02 11:09:04
  from "/var/www/html/Git/newsSmarty/templates/admin/header.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5892e2183ac2d0_63172641',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c3ea7fb94c33fa02a79f526580419c37d8ad9f86' => 
    array (
      0 => '/var/www/html/Git/newsSmarty/templates/admin/header.tpl',
      1 => 1486021142,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5892e2183ac2d0_63172641 (Smarty_Internal_Template $_smarty_tpl) {
?>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="/<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
/public/css/bootstrap.rtl.css" />
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Brand</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                        <li><a href="/<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
/admin/news.php">News</a></li>
                        <li >
                            <a href="/<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
/admin/news_category.php">News Category</a>
                        </li>
                        <li>
                            <a href="/<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
/admin/users.php">Users</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container"><?php }
}
