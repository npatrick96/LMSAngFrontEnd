<%@include file="include.html"%>
<%@ taglib prefix="gcit" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<script>
	$(function() {
		$('.chosen-select').chosen();
		$('.chosen-select-deselect').chosen({
			allow_single_deselect : true
		});
	});
</script>

<div class="container jumbotron">
	<h4>Enter New Book Details Below</h4>
	<form action="addBook" method="post">
		<div class="row">
			<span style="width: 250px;">Book Title</span>
		</div>
		
		<div class="row">
			<input name="title" class="input-md" style="width: 250px;"
				type="text" placeholder="Book Title">
		</div>
		
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-12">
				<span style="width: 250px;">Book Authors</span>
				<div class = "row">
				<select name="authorId" multiple="multiple" size="5"
					style="width: 250px;" data-placeholder="Choose Authors..."
					class="chosen-select">
					<gcit:forEach items="${authors}" var="a">
						<option value="${a.authorId}">${a.authorName}</option>
					</gcit:forEach>
				</select> </div> 
				<span style="width: 250px;">Book Genres</span>
				<div class = "row">
				<select name="genreId" multiple="multiple" size="5"
					style="width: 250px;" data-placeholder="Choose Genres..."
					class="chosen-select">
					<gcit:forEach items="${genres}" var="g">
						<option value="${g.genreId}">${g.genreName}</option>
					</gcit:forEach>
				</select> </div> 
				<span style="width: 250px;">Book Publisher</span>
				<div class = "row">
				<select name="publisherId" size="5" style="width: 250px;"
					data-placeholder="Choose Publisher..." class="chosen-select">
					<gcit:forEach items="${publishers}" var="p">
						<option value="${p.publisherId}">${p.publisherName}</option>
					</gcit:forEach>
				</select> </div>
			</div>
		</div>
		
		<div class="col-xs-12" style="height: 5px;"></div>
		<button type="submit" style="width: 250px;" class="btn-primary btn btn-lg">Add
			Book!</button>
		<div class="col-xs-12" style="height: 5px;"></div>
	</form>
</div>


