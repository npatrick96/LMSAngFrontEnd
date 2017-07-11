<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">Edit Book Loan Due Date</h4>
</div>
<form action="editBookLoan" method="post">
	<div class="modal-body">
		<div class="row">
			Enter New Due Date (YYYY-MM-DD): <input type="text" name="newDueDate"
				value="${oldDueDate}"><br />
			<input type="hidden" name="dateOut" value="${bl.dateOut}">
			<input type="hidden" name="cardNo" value="${bl.borrower.cardNo}">
			<input type="hidden" name="bookId" value="${bl.book.bookId}">
			<input type="hidden" name="branchId" value="${bl.branch.branchId}">
		</div>
		<div class="row"></div>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Override Due
			Date</button>
	</div>
</form>