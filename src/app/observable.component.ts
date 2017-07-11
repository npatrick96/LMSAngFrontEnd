import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { AuthorService } from './author.service';
import { Author } from './author';

@Component({
   selector: 'app-observable',
   templateUrl: './observable.component.html'
})
export class ObservableComponent implements OnInit { 
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