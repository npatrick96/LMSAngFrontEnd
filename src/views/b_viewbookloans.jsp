<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container"> <!-- jumbotron class="container" -->
	${message}
	<h4>Hello, <span>${borrower.name}</span>. Welcome to GCIT Library Management System</h4>
	<p>Below is the list of all books you borrowed from the library.</p>
	
	
	<table class="table" id="bookLoansTable">
		<tr>
			<th>No</th>
			<th>Book</th>
			<th>Branch</th>
			<th>Date Out</th>
			<th>Due Date</th>
			<th>Return</th>
		</tr>
		<gcit:forEach items="${bookloans}" var="bl" varStatus="loop">
			<tr>
				<td>${loop.count}</td>
				<td>${bl.book.title}</td>
				<td>${bl.branch.branchName}</td>
				<td>${bl.dateOut}</td>
				<td>${bl.dueDate}</td>
				<td>
					<button type="button" class="btn btn-sm btn-success"
						onclick="javascript:location.href='returnBook?bookId=${bl.book.bookId}&branchId=${bl.branch.branchId}&cardNo=${bl.borrower.cardNo}&dateOut=${fn:replace(bl.dateOut,' ', 'T')}'">Return!</button>
				</td>
			</tr>
		</gcit:forEach>
	</table>
</div>