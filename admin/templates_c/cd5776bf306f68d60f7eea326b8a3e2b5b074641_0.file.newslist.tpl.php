<?php
/* Smarty version 3.1.30, created on 2017-02-02 10:55:06
  from "/var/www/html/Git/newsSmarty/templates/admin/news/newslist.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5892ded2bbde72_34959157',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cd5776bf306f68d60f7eea326b8a3e2b5b074641' => 
    array (
      0 => '/var/www/html/Git/newsSmarty/templates/admin/news/newslist.tpl',
      1 => 1486020305,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5892ded2bbde72_34959157 (Smarty_Internal_Template $_smarty_tpl) {
?>
<table border = "1" dir = "rtl">
	<thead>
		<td>عنوان</td>
		<td>خلاصه خبر</td>
		<td>متن خبر</td>
		<td>ویرایش</td>
		<td>مشاهده</td>
		<td>حذف</td>
	</thead>
	<tbody>
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['newslist']->value, 'item');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
?>
		<tr>
			<td><?php echo $_smarty_tpl->tpl_vars['item']->value['title'];?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['item']->value['short_note'];?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['item']->value['note'];?>
</td>
			<td>
				<a href = "newslist.php?page=newsedit.tpl&id=<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
">
				Edit
				</a>
			</td>
			<td>
				<a href = "newslist123.php?delete_id=<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
">
					Show
				</a>
			</td>
			<td>
				<a href = "newslist.php?delete_id=<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
">
				Delete
				</a>
			</td>
		</tr>
		
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

	<tbody>
	</table>
	
	<?php }
}
