import { Component, OnInit } from '@angular/core';

import { AuthorService } from './author.service';
import { Author } from './author';

@Component({
   selector: 'author-promise',
   templateUrl: './author-promise.component.html'
})
export class AuthorPromiseComponent implements OnInit { 
   promiseAuthors: Promise<Author[]>
   authors: Author[];
   errorMessage: String;
   constructor(private authorService: AuthorService) { }
   ngOnInit(): void {
  this.promiseAuthors = this.authorService.getAuthorsWithPromise();
  this.promiseAuthors.then(
           authors => this.authors = authors,
           error =>  this.errorMessage = <any>error);
   }
} 