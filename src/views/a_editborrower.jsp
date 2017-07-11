<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">Edit Borrower Details</h4>
</div>
<form action="editBorrower" method="post">
	<div class="modal-body">
		<div class = "row">
		Edit Borrower Title: <input type="text" name="borrowerName"
			value="${borrower.name}"><br /> 
			<input type="hidden" name="cardNo" value="${borrower.cardNo}">
			</div>
			
			
		<div class = "row">
		Edit Borrower Address: <input type="text" name="borrowerAddress"
			value="${borrower.address}"><br /> 
			<input type="hidden" name="cardNo" value="${borrower.cardNo}">
			</div>
			
			
		<div class = "row">
		Edit Borrower Phone: <input type="text" name="borrowerPhone"
			value="${borrower.phone}"><br /> 
			<input type="hidden" name="cardNo" value="${borrower.cardNo}">
			</div>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Edit Borrower</button>
	</div>
</form>