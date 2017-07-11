<%@include file="include.html"%>


<div class="jumbotron container">
<p>Hello ${message}, please pick an action!</p>

<a href="b_pickbranch?cardNo=${cardNo}">Checkout a Book</a><br/>
<a href="b_viewbookloans?cardNo=${cardNo}">Return a Book</a><br/>

</div>