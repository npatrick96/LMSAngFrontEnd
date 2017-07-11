<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container">
	<!-- jumbotron class="container" -->
	<h3>Welcome to GCIT Library Management System</h3>
	<h6>Below is the list of all BookLoans in our Library System.</h6>
	${message}
	<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<gcit:forEach var="i" begin="1" end="${pages}">
				<li><a href="a_viewbookloans?pageNo=${i}">${i}</a></li>
			</gcit:forEach>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	<table class="table" id="bookLoansTable">
		<tr>
			<th>No</th>
			<th>Book</th>
			<th>Branch</th>
			<th>Borrower</th>
			<th>Date Out</th>
			<th>Due Date</th>
			<th>Date In</th>
			<th>Override</th>
		</tr>
		<gcit:forEach items="${bookloans}" var="bl" varStatus="loop">
			<tr>
				<td>${loop.count}</td>
				<td>${bl.book.title}</td>
				<td>${bl.branch.branchName}</td>
				<td>${bl.borrower.name}</td>
				<td>${bl.dateOut}</td>
				<td>${bl.dueDate}</td>
				<td>${bl.dateIn}</td>
				<td>
				<gcit:choose>
				<gcit:when test="${empty bl.dateIn}">
					<a data-toggle="modal" data-target="#editBookLoanModal" 
					href="a_editbookloan?bookId=${bl.book.bookId}&branchId=${bl.branch.branchId}&cardNo=${bl.borrower.cardNo}&dateOut=${fn:replace(bl.dateOut,' ', 'T')}"><button
							type="button" class="btn btn-sm btn-danger">Override!</button></a>
				</gcit:when>
				<gcit:otherwise>
					<a data-toggle="modal" data-target="#editBookLoanModal" 
					href="a_editbookloan?bookId=${bl.book.bookId}&branchId=${bl.branch.branchId}&cardNo=${bl.borrower.cardNo}&dateOut=${fn:replace(bl.dateOut,' ', 'T')}"><button
							type="button" class="btn btn-sm btn-danger" disabled>Override!</button></a>
				</gcit:otherwise>
				</gcit:choose>
				</td>
			</tr>
		</gcit:forEach>
	</table>
</div>

<div class="modal fade bs-example-modal-lg" tabindex="-1"
	id="editBookLoanModal" role="dialog"
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