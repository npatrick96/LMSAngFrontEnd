import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
  <div class="container" role="main">
	<div class="header clearfix">
			<nav>
				<ul class="nav nav-pills pull-right">
					<li role="presentation"><a href="admin">Admin</a></li>  
					<li role="presentation"><a href="librarian">Librarian</a></li>
					<li role="presentation"><a href="borrower">Borrower</a></li>
				</ul>
			</nav>
			<h3 class="text-muted"><a href="welcome.jsp" class="text-muted">GCIT - LMS WEB</a></h3>
		</div>
	</div>
  
  <div class="container jumbotron">
  <!-- <author-promise></author-promise> --> 
  <author-observable></author-observable>
  <book-observable></book-observable>
  <bookloan-observable></bookloan-observable>
  <bookcopy-observable></bookcopy-observable>
  <borrower-observable></borrower-observable>
  <branch-observable></branch-observable>
  <genre-observable></genre-observable>
  <publisher-observable></publisher-observable>
  </div>
  `,
  styleUrls: ['../template_files/jumbotron-narrow.css',
    '../template_files/bootstrap.min.css',
    '../template_files/bootstrap-chosen.css',
    '../template_files/bootstrap-theme.min.css',
    '../template_files/ie10-viewport-bug-workaround.css',
    '../template_files/theme.css']
})

export class AppComponent {

}
