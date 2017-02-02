<?php
/* Smarty version 3.1.30, created on 2017-02-02 11:18:23
  from "/var/www/html/Git/newsSmarty/templates/admin/base.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5892e447ab9855_21150526',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7dc6ebfa99d4c90c10e840e1641c5986fd71bfe6' => 
    array (
      0 => '/var/www/html/Git/newsSmarty/templates/admin/base.tpl',
      1 => 1486021699,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:./header.tpl' => 1,
    'file:./footer.tpl' => 1,
  ),
),false)) {
function content_5892e447ab9855_21150526 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:./header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>




<?php $_smarty_tpl->_subTemplateRender($_smarty_tpl->tpl_vars['page']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>


<?php $_smarty_tpl->_subTemplateRender("file:./footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
