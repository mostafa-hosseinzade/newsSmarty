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
	{foreach $newslist as $item}
		<tr>
			<td>{$item.title}</td>
			<td>{$item.short_note}</td>
			<td>{$item.note}</td>
			<td>
				<a href = "newslist.php?page=newsedit.tpl&id={$item.id}">
				Edit
				</a>
			</td>
			<td>
				<a href = "newslist123.php?delete_id={$item.id}">
					Show
				</a>
			</td>
			<td>
				<a href = "newslist.php?delete_id={$item.id}">
				Delete
				</a>
			</td>
		</tr>
		
	{/foreach}
	<tbody>
	</table>
	
	