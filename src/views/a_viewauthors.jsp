<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
function searchAuthors(){
	$.ajax({
		url: "searchAuthors",
		data:{
			searchString: $('#searchString').val() //  ,pageNo: $('#pageNo').val()
		}
	}).done(function (data){
		$('#viewArea').html(data)
	})
}
</script>


<div class="container"> <!--  jumbotron -->
	<h3>Welcome to GCIT Library Management System</h3>
	<h6>Below is the list of all Authors in featured our Library
		System.</h6>
	${message}
	<div>
		<input type="text" name="searchString" id="searchString"
			placeholder="Author Name" aria-describedby="basic-addon1"
			oninput="searchAuthors()" value="${searchString}"> 
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
				<li><a href="a_viewauthors?pageNo=${i}&searchString=${searchString}">${i}</a></li>
			</gcit:forEach>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	
	<table class="table" id="authorsTable">
		<tr>
			<th>Author ID</th>
			<th>Author Name</th>
			<th>Books by Author</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<gcit:forEach items="${authors}" var="a" varStatus="loop">
			<tr>
				<td>${loop.count}</td> <!-- you can also use index -->
				<td>${a.authorName}</td>
				<td><gcit:forEach var="b" items="${a.books}">
				'${b.title}'
				</gcit:forEach></td>
				<td><a href="a_editauthor?authorId=${a.authorId}&searchString=${searchString}&pageNo=${pageNo}" data-toggle="modal" data-target="#editAuthorModal"><button type="button" class="btn btn-sm btn-primary">Edit!</button></a></td>
				<td><button type="button" class="btn btn-sm btn-danger"
						onclick="javascript:location.href='deleteAuthor?authorId=${a.authorId}&searchString=${searchString}&pageNo=${pageNo}'">Delete!</button></td>
			</tr>
		</gcit:forEach>
	</table>
	</div>
	
</div>


<div class="modal fade bs-example-modal-md" tabindex="-1"
	id="editAuthorModal" role="dialog" aria-labelledby="myMediumModalLabel">
	<div class="modal-dialog modal-md" role="document">
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