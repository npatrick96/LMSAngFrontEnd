<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container">
	<!-- jumbotron -->
	<h4>Welcome to GCIT Library Management System</h4>
	<p>Pick one branch from the list below from which you want to
		borrow a book.</p>
	
	<table class="table" id="branchesTable">
		<tr>
			<th>No</th>
			<th>Name</th>
			<th>Address</th>
			<th>Select</th>
		</tr>
		<gcit:forEach items="${branches}" var="br" varStatus="loop">
			<tr>
				<td>${loop.count}</td> <!-- you can also use index -->
				<td>${br.branchName}</td>
				<td>${br.branchAddress}</td>
				<td><a href="b_viewbooksavailable?branchId=${br.branchId}&cardNo=${cardNo}">
					<button type="button" class="btn btn-sm btn-primary">Select!</button>
			</a></td>
			</tr>
		</gcit:forEach>
	</table>
</div>

