<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
function searchBooks(){
	$.ajax({
		url: "searchBooks",
		data:{
			searchString: $('#searchString').val()
			//pageNo: $('#pageNo').val(),
			//pages: $('#pages').val()
		}
	}).done(function (data){
		$('#viewArea').html(data)
	})
}
</script>

<div class="container"> <!-- jumbotron -->
	<h3>Welcome to GCIT Library Management System</h3>
	<h6>Below is the list of all Books in our Library System.</h6>
	${message}
	<div>
		<input type="text" name="searchString" id="searchString"
			placeholder="Author Name" aria-describedby="basic-addon1"
			oninput="searchBooks()"  value="${searchString}">
			<input type="hidden" name="pageNo" id= "pageNo" value="${pageNo}">
			<input type="hidden" name="pages" id= "pages" value="${pages}"> 
	</div>
	<div id="viewArea">

	<nav aria-label="Page navigation">
		<ul class="pagination">
			<li><a href="#" aria-label="Previous"> <span
					aria-hidden="true">&laquo;</span>
			</a></li>
			<gcit:forEach var="i" begin="1" end="${pages}">
				<li><a href="a_viewbooks?pageNo=${i}">${i}</a></li>
			</gcit:forEach>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	<table class="table" id="booksTable">
		<tr>
			<th>No</th>
			<th>Title</th>
			<th>Authors</th>
			<th>Genres</th>
			<th>Publisher</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<gcit:forEach items="${books}" var="b" varStatus="loop">
			<tr>
				<td>${loop.count}</td> <!-- you can also use index -->
				<td>${b.title}</td>
				<td><gcit:forEach var="a" items="${b.authors}">
				'${a.authorName}'
				</gcit:forEach></td>
				<td><gcit:forEach var="g" items="${b.genres}">
				'${g.genreName}'
				</gcit:forEach></td>
				<td>${b.publisher.publisherName}</td>
				<td><a href="a_editbook?bookId=${b.bookId}" data-toggle="modal" data-target="#editBookModal"><button type="button" class="btn btn-sm btn-primary">Edit!</button></a></td>
				<td><button type="button" class="btn btn-sm btn-danger"
						onclick="javascript:location.href='deleteBook?bookId=${b.bookId}'">Delete!</button></td>
			</tr>
		</gcit:forEach>
	</table>
	</div>
</div>

<div class="modal fade bs-example-modal-lg" tabindex="-1"
	id="editBookModal" role="dialog" aria-labelledby="myLargeModalLabel">
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