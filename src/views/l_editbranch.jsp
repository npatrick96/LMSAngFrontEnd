<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">Edit Branch Details</h4>
</div>
<form action="editBranchLib" method="post">
	<div class="modal-body">
		<div class = "row">
		Edit Branch Name: <input type="text" name="branchName"
			value="${branch.branchName}"><br /> 
			<input type="hidden" name="branchId" value="${branch.branchId}">
			</div>
			
			
		<div class = "row">
		Edit Branch Address: <input type="text" name="branchAddress"
			value="${branch.branchAddress}"><br /> 
			<input type="hidden" name="branchId" value="${branch.branchId}">
			</div>
			
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Edit Branch</button>
	</div>
</form>