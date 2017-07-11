<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container">
	<!-- jumbotron -->
	<h4>Welcome to GCIT Library Management System.</h4>
	<p>Below is the list of books Owned by the ${branch.branchName} branch.</p>
	<!-- <%//request.getAttribute("message");%> -->
	${message}

	<table class="table">
			<tr>
				<th>No</th>
				<th>Book Name</th>
				<th>Number of Copies</th>
				<th>Edit No of Copies</th>
				<th>Delete</th>
			</tr>

			<gcit:forEach items="${copies}" var="bc" varStatus="loop">
				<tr>
					<td>${loop.count}</td>
					<td>${bc.book.title}</td>
					<td>${bc.noOfCopies}</td>
					<td><a data-toggle="modal"
						data-target="#editNumberOfCopiesModal"
						href="l_editbookcopy?bookId=${bc.book.bookId}&branchId=${bc.branch.branchId}&noOfCopies=${bc.noOfCopies}">
							<button type="button" class="btn btn-sm btn-primary">Change
								No of Copies!</button>
					</a></td>
					<td><button type="button" class="btn btn-sm btn-danger"
							onclick="javascript:location.href='deleteBookCopy?bookId=${bc.book.bookId}&branchId=${bc.branch.branchId}'">Delete!</button></td>
				</tr>
			</gcit:forEach>
		</table>

</div>


<div class="modal fade bs-example-modal-lg" tabindex="-1"
	id="editNumberOfCopiesModal" role="dialog"
	aria-labelledby="myLargeModalLabel">
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