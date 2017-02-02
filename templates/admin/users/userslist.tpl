<h2>خبر ها</h2>


{if (isset($msg) && !empty($msg)) }
    <div class="alert">
        { $msg }
        <button type="button" class="close" style="background-color: #18d596" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
{/if} 

<div class="col-lg-12"><button class="pull-left btn btn-success" data-toggle="modal" data-target="#myModalCreate">Add</button></div>
<table class="display table-bordered" id="test">
    <thead>
    <th>Id</th>
    <th>نام کاربری</th>
    <th>ایمیل</th>
    <th>action</th>
</thead>
<tbody>
    {foreach $data['users']  as $value }
        <tr>
            <td>{$value['id'] }</td>
            <td>{$value['username']}</td>
            <td>{$value['email']}</td>
            <td>
                <button class="btn btn-sm btn-warning" data-toggle="modal" data-target="#myModal{$value['id']}" onclick="ck('TextAreaEdit{$value['id']}')">edit</button>
                <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalDelete{$value['id']}">delete</button>
            </td>

            <!-- Modal -->
    <div class="modal fade" id="myModalDelete{$value['id']}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="post" action="/{$base_url}/admin/users/delete.php">
                    <input type="hidden" name="delete_id" value="{$value['id']}" />
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
    <div class="modal fade" id="myModal{$value['id']}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <form method="post" action="/{$base_url}/admin/users/edit.php">
                    <input type="hidden" name="edit" value="true" />
                    <input type="hidden" name="id" value="{$value['id']}" />
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">ویرایش اطلاعات</h4>
                    </div>
                    <div class="modal-body">

                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>UserName : </label>
                                    <input type="text" class="form-control" name="username" value="{$value['username']}" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>Email : </label>
                                    <input type="email" class="form-control" name="email" value="{$value['email']}">
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
{/foreach}    
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
            <form method="post" action="/{$base_url}/admin/users/add.php">
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


    <script>
        $(document).ready(function () {
            $('#test').DataTable();
            CKEDITOR.replace("TextAreaAdd");
        });
    </script>
    <script>
        function ck(id) {
            CKEDITOR.replace(id);
        }
    </script>

