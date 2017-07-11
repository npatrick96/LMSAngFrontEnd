<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container"> <!-- jumbotron -->
	<h4>Welcome to GCIT Library Management System</h4>
	<p>Below are all Library Branches in our System.</p>
	${message}
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<gcit:forEach var="i" begin="1" end="${pages}">
				<li><a href="a_viewbranches?pageNo=${i}">${i}</a></li>
			</gcit:forEach>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	<table class="table" id="branchesTable">
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Address</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<gcit:forEach items="${branches}" var="br" varStatus="loop">
			<tr>
				<td>${loop.count}</td> <!-- you can also use index -->
				<td>${br.branchName}</td>
				<td>${br.branchAddress}</td>
				<td><a data-toggle="modal" data-target="#editBranchModal"
					href="a_editbranch?branchId=${br.branchId}"><button
							type="button" class="btn btn-sm btn-primary">Edit!</button></a></td>
				<td><button type="button" class="btn btn-sm btn-danger"
						onclick="javascript:location.href='deleteBranch?branchId=${br.branchId}'">Delete!</button></td>
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