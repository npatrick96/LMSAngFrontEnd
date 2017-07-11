<%@include file="include.html"%>
<div class="container jumbotron"> 
	<!-- jumbotron -->
	${message}
	<h4>Please Enter your Card Number!</h4>

	<form action="borrowerLogin" method="post">
		<!-- Enter you card number: <input type="text" name="cardNo"> <br> -->
		
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<input name="cardNo" class="input-lg" type="number" 
			style="width: 200px;"  min="1" step="1" required="required">
		</div>

		<div class="col-xs-12" style="height: 5px;"></div>
		<div class="row">
	
		<button type="submit"  style="width: 200px;" class="btn btn-primary btn-sm">Log in!</button>
		</div>	
	</form>

</div>



