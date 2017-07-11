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

	<h4>Add New Author Below</h4>


	<form action="addAuthor" method="post">
		<div class="row">
			<span style="width: 250px;">Author Name</span>
		</div>
		<div class="row">
			<input name="authorName" class="input-md" type="text" placeholder="Author Name" style="width: 250px;">
		
		</div>
		<div class="row">
			<span style="width: 250px;">Books by Author</span>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-12">

				<select name="bookId"  multiple="multiple" size="5" data-placeholder="Choose Books..." style="width: 250px;" class ="chosen-select">
					
					<gcit:forEach items="${books}" var="b" varStatus="loop">
						<option value="${b.bookId}">${b.title}</option>
					</gcit:forEach>
				</select>
			</div>
		</div>
		
		<div class="col-xs-12" style="height: 5px;"></div>

		<button type="submit" style="width: 250px;" class="btn-primary btn btn-lg">Add
			Author!</button>
		<div class="col-xs-12" style="height: 5px;"></div>

	</form>

</div>
