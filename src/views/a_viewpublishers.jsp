<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container"> <!-- jumbotron -->
	<h3>Welcome to GCIT Library Management System</h3>
	<h6>Below is the list of all Publishers in our Library System.</h6>
	${message}
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<gcit:forEach var="i" begin="1" end="${pages}">
				<li><a href="a_viewpublishers?pageNo=${i}">${i}</a></li>
			</gcit:forEach>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	<table class="table" id="authorsTable">
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Address</th>
			<th>Phone</th>
			<th>Books</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<gcit:forEach items="${publishers}" var="p" varStatus="loop">
			<tr>
				<td>${loop.count}</td>
				<!-- you can also use index -->
				<td>${p.publisherName}</td>
				<td>${p.publisherAddress}</td>
				<td>${p.publisherPhone}</td>
				<td><gcit:forEach var="b" items="${p.books}">
				'${b.title}'
				</gcit:forEach></td>
				<td><a data-toggle="modal" data-target="#editPublisherModal"
					href="a_editpublisher?publisherId=${p.publisherId}"><button
							type="button" class="btn btn-sm btn-primary">Edit!</button></a></td>
				<td><button type="button" class="btn btn-sm btn-danger"
						onclick="javascript:location.href='deletePublisher?publisherId=${p.publisherId}'">Delete!</button></td>
			</tr>
		</gcit:forEach>
	</table>
</div>

<div class="modal fade bs-example-modal-lg" tabindex="-1"
	id="editPublisherModal" role="dialog" aria-labelledby="myLargeModalLabel">
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