<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">Edit Author Details</h4>
</div>
<form action="editAuthor" method="post">
	<div class="modal-body">

		Edit Author Name: <input type="text" name="authorName"
			value="${author.authorName}"><br /> 
			<input type="hidden" name="authorId" value="${author.authorId}">
			<input type="hidden" name="pageNo" value="${pageNo}">
			<input type="hidden" name="searchString" value="${searchString}">
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Edit Author</button>
	</div>
</form>