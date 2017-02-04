<h2>خبر ها</h2>

<!-- Namayesh Payam -->
{if (isset($msg) && !empty($msg)) }
    <div class="alert">
        { $msg }
        <button type="button" class="close" style="background-color: #18d596" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
{/if} 

<!-- Dokme Marbote Be Namayesh -->
<div class="col-lg-12"><button class="pull-left btn btn-success" data-toggle="modal" data-target="#myModalCreate">Add</button></div>
<!-- Jadval namyesh etelaAte -->
<table class="display table-bordered" id="test">
    <thead>
    <th>Id</th>
    <th>title</th>
    <th>توضیح کوتاه</th>
    <th>تعداد نمایش</th>
    <th>تعداد لایک</th>
    <th>action</th>
</thead>
<tbody>
    {foreach $data['newslist']  as $value }
        <tr>
            <td>{$value['id'] }</td>
            <td>{$value['title']}</td>
            <td>{$value['short_note']}</td>
            <td>
                {$value['visit']}
            </td>
            <th>
                {$value['like_count']}
            </th>
            <td>
                <button class="btn btn-sm btn-success" data-toggle="modal" data-target="#myModalShow{$value['id']}">show</button>
                <button class="btn btn-sm btn-warning" data-toggle="modal" data-target="#myModal{$value['id']}" onclick="ck('TextAreaEdit{$value['id']}')">edit</button>
                <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#myModalDelete{$value['id']}">delete</button>
            </td>

            <!-- Modal Hazfe EteleAte -->
    <div class="modal fade" id="myModalDelete{$value['id']}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="post" action="/{$base_url}/admin/news/delete.php">
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
    <!-- Modal Namayesh -->
    <div class="modal fade" id="myModalShow{$value['id']}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">نمایش اطلاعات  خبر</h4>
                </div>
                <div class="modal-body">
                    {if !empty($value['pic_url'])}
                        <img src="/{$base_url}/public/img/upload/{$value['pic_url']}" style="max-width: 100%;height: auto" />
                    {/if}
                    <h3>{$value['title']}</h3> 
                    {$value['note']}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">بستن</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Edit EteleAte-->
    <div class="modal fade" id="myModal{$value['id']}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <form method="post" action="/{$base_url}/admin/news/edit.php" enctype="multipart/form-data">
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
                                    <input type="text" class="form-control" name="title" value="{$value['title']}" />
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label>Short Note : </label>
                                    <textarea class="form-control" name="short_note" >{$value['short_note']}</textarea>
                                </div>
                                <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                                    <label>Note : </label>
                                    <textarea class="form-control" id="TextAreaEdit{$value['id']}" name="note" >{$value['note']}</textarea>
                                </div>
                                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                    <label> دسته بندی: </label>
                                    <select name="ctg_id" class="form-control">
                                        {foreach $data['catlist'] as $items }
                                            <option value="{$items['id']}" {if ($value['id'] == $items['id'])} selected {/if}>{$items['name']}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <label>تصویر</label>
                                    <input type="file" name="pic_url" class="form-control"/>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <label>نمایش به عنوان اسلایدر</label>
                                    <select name="slider" class="form-control">
                                        <option value="0" {if ($value['slider'] == 0)}selected {/if}>خیر</option>
                                        <option value="1" {if ($value['slider'] == 1)}selected {/if}>بله</option>
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
<th>title</th>
<th>محتوا</th>
<th>تعداد نمایش</th>
<th>تعداد لایک</th>
<th>action</th>

</tfoot>
</table> 

<!-- Modal Add EteleAt -->
<div class="modal fade" id="myModalCreate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <form method="post" action="/{$base_url}/admin/news/add.php" enctype="multipart/form-data">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">ویرایش اطلاعات</h4>
                </div>
                <div class="modal-body">

                    <div class="col-lg-12">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                <label>عنوان : </label>
                                <input type="text" class="form-control" name="title" placeholder="Title" />
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                <label>متن کوتاه خبر : </label>
                                <textarea class="form-control" name="short_note" placeholder="Short Note" ></textarea>
                            </div>
                            <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                                <label>متن خبر : </label>
                                <textarea id="TextAreaAdd" class="form-control" name="note" placeholder="Note" ></textarea>
                            </div>
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                                <label> دسته بندی: </label>
                                <select name="ctg_id" class="form-control">
                                    {foreach $data['catlist'] as $items}
                                        <option value="{$items['id']}" >{$items['name']}</option>
                                    {/foreach}
                                </select>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <label>تصویر</label>
                                <input type="file" name="pic_url" class="form-control"/>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                <label>نمایش به عنوان اسلایدر</label>
                                <select name="slider" class="form-control">
                                    <option value="0">خیر</option>
                                    <option value="1">بله</option>
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
        //baray datatable
        $(document).ready(function () {
            $('#test').DataTable();
            CKEDITOR.replace("TextAreaAdd");
        });
    </script>
    <script>
        //baraye editor
        function ck(id) {
            CKEDITOR.replace(id);
        }
    </script>

