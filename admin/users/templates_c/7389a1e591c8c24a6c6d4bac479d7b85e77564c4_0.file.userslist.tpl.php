<?php
/* Smarty version 3.1.30, created on 2017-02-02 20:52:35
  from "/var/www/html/Git/newsSmarty/templates/admin/users/userslist.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_58936adba96f56_62871848',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7389a1e591c8c24a6c6d4bac479d7b85e77564c4' => 
    array (
      0 => '/var/www/html/Git/newsSmarty/templates/admin/users/userslist.tpl',
      1 => 1486056079,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_58936adba96f56_62871848 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h2>خبر ها</h2>


<?php if ((isset($_smarty_tpl->tpl_vars['msg']->value) && !empty($_smarty_tpl->tpl_vars['msg']->value))) {?>
    <div class="alert">
        { $msg }
        <button type="button" class="close" style="background-color: #18d596" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
<?php }?> 

<div class="col-lg-12"><button class="pull-left btn btn-success" data-toggle="modal" data-target="#myModalCreate">Add</button></div>
<table class="display table-bordered" id="test">
    <thead>
    <th>Id</th>
    <th>نام کاربری</th>
    <th>ایمیل</th>
    <th>action</th>
</thead>
<tbody>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['data']->value['users'], 'value');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['value']->value) {
?>
        <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['username'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['value']->value['email'];?>
</td>
            <td>
                <button class="btn btn-sm btn-warning" data-toggle="modal" data-target="#myModal<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
" onclick="ck('TextAreaEdit<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
')">edit</button>
                <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalDelete<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
">delete</button>
            </td>

            <!-- Modal -->
    <div class="modal fade" id="myModalDelete<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="post" action="/<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
/admin/users/delete.php">
                    <input type="hidden" name="delete_id" value="<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
" />
                    <input type="hidden" name="delete" value="true" />
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">حذف اطلاعات</h4>
                    </div>
                    <div class="modal-body">
                        <h3>آیا از حذف اطلاعات مطمئن هستید ؟</h3>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                        <button type="submit" class="btn btn-primary">Yes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <form method="post" action="/<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
/admin/users/edit.php">
                    <input type="hidden" name="edit" value="true" />
                    <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
" />
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">ویرایش اطلاعات</h4>
                    </div>
                    <div class="modal-body">

                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>UserName : </label>
                                    <input type="text" class="form-control" name="username" value="<?php echo $_smarty_tpl->tpl_vars['value']->value['username'];?>
" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>Email : </label>
                                    <input type="email" class="form-control" name="email" value="<?php echo $_smarty_tpl->tpl_vars['value']->value['email'];?>
">
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>Password : </label>
                                    <input type="password" class="form-control" name="password" placeholder="Password">
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </form>    
            </div>
        </div>
    </div>
</tr>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>
    
</tbody>
<tfoot>
<th>Id</th>
<th>نام کاربری</th>
<th>ایمیل</th>
<th>action</th>

</tfoot>
</table> 

<div class="modal fade" id="myModalCreate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form method="post" action="/<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
/admin/users/add.php">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">ویرایش اطلاعات</h4>
                </div>
                <div class="modal-body">

                    <div class="col-lg-12">
                        <div class="row">
                               <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>UserName : </label>
                                    <input type="text" class="form-control" name="username" placeholder="UserName" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>Email : </label>
                                    <input type="email" class="form-control" name="email" placeholder="Email">
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>Password : </label>
                                    <input type="password" class="form-control" name="password" placeholder="Password">
                                </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>

                </div>
            </form>
        </div>
    </div>


    <?php echo '<script'; ?>
>
        $(document).ready(function () {
            $('#test').DataTable();
            CKEDITOR.replace("TextAreaAdd");
        });
    <?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
        function ck(id) {
            CKEDITOR.replace(id);
        }
    <?php echo '</script'; ?>
>

<?php }
}
