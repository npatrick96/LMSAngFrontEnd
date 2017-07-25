import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { AuthorService } from './author.service';
import { Author } from './author';

@Component({
  selector: 'app-add-author',
  templateUrl: './add-author.component.html'
})
// export class AddAuthorComponent implements OnInit {
// 
//   constructor() { }
// 
//   ngOnInit() {
//   }
// 
// }

export class AddAuthorComponent implements OnInit { 
  // constructor() { }
  // 
  // ngOnInit() {
  // }
  observableAuthors: Observable<Author[]>
  authors: Author[];
  errorMessage: String;
  constructor(private authorService: AuthorService) { }
  ngOnInit(): void {
       this.observableAuthors = this.authorService.getAuthorsWithObservable();
 this.observableAuthors.subscribe(
           authors => this.authors = authors,
           error =>  this.errorMessage = <any>error);
  }
} 