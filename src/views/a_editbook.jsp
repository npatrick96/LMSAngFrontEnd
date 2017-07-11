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
	
	$('#editBookModal').on('shown.bs.modal', function () {
		  $('.chosen-select', this).chosen();
		});
	$('#editBookModal').on('shown.bs.modal', function () {
		  $('.chosen-select', this).chosen('destroy').chosen();
		});
	
</script>

<div class="modal-header">
	<button type="button" class="close" data-dismiss="modal"
		aria-label="Close">
		<span aria-hidden="true">&times;</span>
	</button>
	<h4 class="modal-title" id="myModalLabel">Edit Book Details</h4>
</div>
<form action="editBook" method="post">
	<!-- <div class="modal-body"> -->
	<div class="col-md-12">
		<div class="row">
			<span style="width: 250px;">  Edit Book Title</span><input type="text" name="title"
				value="${book.title}" style="width: 250px;"><br /> <input
				type="hidden" name="bookId" value="${book.bookId}">
		</div>
		<div class="row">
			<span style="width: 250px;">  Edit Book Authors</span><select name="authorId" multiple="multiple"
				data-placeholder="Choose Authors..."
				class="chosen-select" style="width: 250px;">
					<gcit:forEach items="${authors}" var="a">
						<gcit:set var="contains" value="false" />
					    <gcit:forEach items="${book.authors}" var="ab">
					    	<gcit:if test="${a eq ab}">
    							<gcit:set var="contains" value="true" />
 				 			</gcit:if>
					    </gcit:forEach>
					    <gcit:if test="${contains eq true}">
					    	<option value="${a.authorId}" selected="selected">${a.authorName}</option>
					    </gcit:if>
					    <gcit:if test="${contains eq false}">
					    	<option value="${a.authorId}">${a.authorName}</option>
					    </gcit:if>
					</gcit:forEach>
			</select>
		</div>
		
		<div class="row">
			<span style="width: 250px;">  Edit Book Genres</span><select name="genreId" multiple="multiple"
				style="width: 250px;" data-placeholder="Choose Genres..."
				class="chosen-select">
				<gcit:forEach items="${genres}" var="g" varStatus="loop">
					<gcit:set var="contains" value="false" />
					    <gcit:forEach items="${book.genres}" var="gb">
					    	<gcit:if test="${g eq gb}">
    							<gcit:set var="contains" value="true" />
 				 			</gcit:if>
					    </gcit:forEach>
					    <gcit:if test="${contains eq true}">
					    	<option value="${g.genreId}" selected="selected">${g.genreName}</option>
					    </gcit:if>
					    <gcit:if test="${contains eq false}">
					    	<option value="${g.genreId}">${g.genreName}</option>
					    </gcit:if>
				</gcit:forEach>
			</select>
		</div>
		
		<div class="row">
			<span style="width: 250px;">  Edit Book Publisher</span><select name="publisherId" style="width: 250px;"
				data-placeholder="Choose Publisher ..." class="chosen-select"> <!--  class="chosen-select-deselect" -->
				<option selected="selected" value=0>Choose Publisher ...</option> <!-- disabled -->
				<gcit:forEach items="${publishers}" var="p" varStatus="loop">
					<gcit:choose>
						<gcit:when test="${p eq book.publisher}">
					    	<option value="${p.publisherId}" selected="selected">${p.publisherName}</option>
					    </gcit:when>
					    <gcit:otherwise>
							<option value="${p.publisherId}">${p.publisherName}</option>
						</gcit:otherwise>
					</gcit:choose>
				</gcit:forEach>
			</select>
		</div>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		<button type="submit" class="btn btn-primary">Edit Book</button>
	</div>
</form>