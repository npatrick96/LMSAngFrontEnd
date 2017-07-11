<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container"> <!-- jumbotron -->
	<h4>Below is the list of all library branches.</h4>
	<p>Edit your branch info or select the branch to add book copies.</p>
	<table class="table">
		<tr>
			<th>No</th>
			<th>Branch Name</th>
			<th>Branch Address</th>
			<th>Edit</th>
			<th>View Books</th>
		</tr>

		<gcit:forEach items="${branches}" var="br" varStatus="loop">
			<tr>
				<td>${loop.count}</td>
				<td>${br.branchName}</td>
				<td>${br.branchAddress}</td>
				<td><a data-toggle="modal" data-target="#editBranchModal"
					href="l_editbranch?branchId=${br.branchId}"><button
							type="button" class="btn btn-sm btn-primary">Edit!</button></a></td>
				<td><button type="button" class="btn btn-sm btn-success"
						onclick="javascript:location.href='getBookCopies?branchId=${br.branchId}'">Select!</button></td>
			</tr>
		</gcit:forEach>
	</table>
</div>


<div class="modal fade bs-example-modal-lg" tabindex="-1"
	id="editBranchModal" role="dialog" aria-labelledby="myLargeModalLabel">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content"></div>
	</div>
</div>

<script>
	$(document).ready(function() {
		// codes works on all bootstrap modal windows in application
		$('.modal').on('hidden.bs.modal', function(e) {
			$(this).removeData();
		});
	});
</script>