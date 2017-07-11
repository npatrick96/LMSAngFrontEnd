<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<div class="container">
	<!-- jumbotron -->
	<h4>Welcome to GCIT Library Management System.</h4>
	<p>
		Below is the list of books available at ${branch.branchName}.
	</p>
	
	<table class="table" id="booksAvailableTable">
		<tr>
			<th>No</th>
			<th>Book Name</th>
			<th>Number of Copies</th>
			<th>Pick Book</th>
		</tr>
		<gcit:forEach items="${copies}" var="bc" varStatus="loop">
			<tr>
				<td>${loop.count}</td>
				<td>${bc.book.title}</td>
				<td>${bc.noOfCopies}</td>
				<td><button type="button" class="btn btn-sm btn-primary"
					onclick="javascript:location.href='checkOutBook?bookId=${bc.book.bookId}&branchId=${branchId}&cardNo=${cardNo}'">
					Borrow 1 Copy!</button></td>
			</tr>
		</gcit:forEach>
	</table>
</div>

