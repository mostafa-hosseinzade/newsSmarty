<form method ='POST' action = "#">
	<input type="hidden" name="id" value="{$newslist.id}" />
	عنوان: <input type = "text" name="title" value = "{$newslist.title}"/><br>
	خبر کوتاه: <input type = "text" name="short_note" value = "{$newslist.short_note}"/><br>
	متن خبر: <input type = "text" name="note" value = "{$newslist.note}"><br>
	<input type = "submit" value = "edit" name = 'edit_btn'/>
</form>