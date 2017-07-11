
<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel"> Update Number of Book Copies</h4>
</div>
<form action="editBookCopy" method="post">
	<div class="modal-body">
		<div class = "row">
		Enter New No of Copies: <input type="number" name="noOfCopies" id ="noOfCopies"
			value="${oldNoOfCopies}" type="number" min="1" step="1" required="required"><br /> 
			<input type="hidden" name="branchId" value="${branchId}">
			<input type="hidden" name="bookId" value="${bookId}">
			</div>	
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Update NoOfCopies</button>
	</div>
</form>

