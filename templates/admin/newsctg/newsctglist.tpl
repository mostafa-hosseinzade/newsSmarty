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
    <th>نام</th>
    <th>توضیح کوتاه</th>
    <th>وضعیت</th>
    <th>action</th>
</thead>
<tbody>
    {foreach $data['catlist']  as $value }
        <tr>
            <td>{$value['id'] }</td>
            <td>{$value['name']}</td>
            <td>{$value['describtion']}</td>
            <td>
                {if ($value['active'] == 1)} فعال{/if}
                {if ($value['active'] == 0)} غیر فعال{/if}
            </td>
            <td>
                <button class="btn btn-sm btn-warning" data-toggle="modal" data-target="#myModal{$value['id']}" onclick="ck('TextAreaEdit{$value['id']}')">edit</button>
                <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalDelete{$value['id']}">delete</button>
            </td>

            <!-- Modal -->
    <div class="modal fade" id="myModalDelete{$value['id']}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="post" action="/{$base_url}/admin/newsctg/delete.php">
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
                <form method="post" action="/{$base_url}/admin/newsctg/edit.php">
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
                                    <label>Title : </label>
                                    <input type="text" class="form-control" name="name" value="{$value['name']}" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>Describtion : </label>
                                    <textarea class="form-control" name="describtion" >{$value['describtion']}</textarea>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <label>وضعیت</label>
                                    <select name="active" class="form-control">
                                        <option value="0" {if ($value['active'] == 0)}selected {/if}>غیر فعال</option>
                                        <option value="1" {if ($value['active'] == 1)}selected {/if}>فعال</option>
                                    </select>
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
<th>نام</th>
<th>توضیح کوتاه</th>
<th>وضعیت</th>
<th>action</th>

</tfoot>
</table> 

<div class="modal fade" id="myModalCreate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form method="post" action="/{$base_url}/admin/newsctg/add.php">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">ویرایش اطلاعات</h4>
                </div>
                <div class="modal-body">

                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                <label>نام : </label>
                                <input type="text" class="form-control" name="name" placeholder="Name" />
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                <label>توضیح کوتاه  : </label>
                                <textarea class="form-control" name="describtion" placeholder="Describtion" ></textarea>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                <label>وضعیت</label>
                                <select name="active" class="form-control">
                                    <option value="0" >غیر فعال</option>
                                    <option value="1" >فعال</option>
                                </select>
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

