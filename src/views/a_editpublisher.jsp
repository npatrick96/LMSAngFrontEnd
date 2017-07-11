<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">Edit Publisher Details</h4>
</div>
<form action="editPublisher" method="post">
	<div class="modal-body">
		<div class = "row">
		Edit Publisher Title: <input type="text" name="publisherName"
			value="${publisher.publisherName}"><br /> 
			<input type="hidden" name="publisherId" value="${publisher.publisherId}">
			</div>
			
			
		<div class = "row">
		Edit Publisher Address: <input type="text" name="publisherAddress"
			value="${publisher.publisherAddress}"><br /> 
			<input type="hidden" name="publisherId" value="${publisher.publisherId}">
			</div>
			
			
		<div class = "row">
		Edit Publisher Phone: <input type="text" name="publisherPhone"
			value="${publisher.publisherPhone}"><br /> 
			<input type="hidden" name="publisherId" value="${publisher.publisherId}">
			</div>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Edit Publisher</button>
	</div>
</form>