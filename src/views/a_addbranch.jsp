<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container jumbotron">

	<h4>Add New Library Branch Below</h4>


	<form action="addBranch" method="post">
	
		<div class="row">
			<span style="width: 250px;">Branch Name</span>
		</div>
		<div class="row">
			<input name="branchName" class="input-lg" type="text"
				placeholder="Branch Name" style="width: 250px;">
		</div>
		
		<div class="row">
			<span style="width: 250px;">Branch Address</span>
		</div>
		<div class="row">
			<input name="branchAddress" class="input-lg" type="text"
				placeholder="Branch Address" style="width: 250px;">
		</div>
		
		

		<div class="col-xs-12" style="height: 5px;"></div>
		<button type="submit" class="btn-primary btn btn-lg" style="width: 250px;">Add
			Branch!</button>
		<div class="col-xs-12" style="height: 5px;"></div>

	</form>

</div>
