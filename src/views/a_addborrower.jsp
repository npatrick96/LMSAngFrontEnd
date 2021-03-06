<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container jumbotron">
	<h4>Add New /User Below</h4>
	<form action="addBorrower" method="post">
	
		<div class="row">
			<span style="width: 250px;">Borrower Name</span>
		</div>
		<div class="row">
			<input name="borrowerName" class="input-lg" type="text"
				placeholder="Borrower Name" style="width: 250px;">
		</div>
		
		<div class="row">
			<span style="width: 250px;">Borrower Address</span>
		</div>
		<div class="row">
			<input name="borrowerAddress" class="input-lg" type="text"
				placeholder="Borrower Address" style="width: 250px;">
		</div>
		
		<div class="row">
			<span style="width: 250px;">Borrower Phone</span>
		</div>
		<div class="row">
			<input name="borrowerPhone" class="input-lg" type="text"
				placeholder="Borrower Address" style="width: 250px;">
		</div>
		
		<div class="col-xs-12" style="height: 5px;"></div>
		<button type="submit" class="btn-primary btn btn-lg" style="width: 250px;">Add
			User!</button>
		<div class="col-xs-12" style="height: 5px;"></div>
	</form>
</div>
