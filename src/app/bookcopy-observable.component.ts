import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { BookCopyService } from './bookcopy.service';
import { BookCopy } from './bookcopy';

@Component({
   selector: 'bookcopy-observable',
   templateUrl: './bookcopy-observable.component.html'
})
export class BookCopyObservableComponent implements OnInit { 
   observableBookCopies: Observable<BookCopy[]>
   bookcopies: BookCopy[];
   errorMessage: String;
   constructor(private bookCopyService: BookCopyService) { }
   ngOnInit(): void {
  this.observableBookCopies = this.bookCopyService.getBookCopiessWithObservable();
  this.observableBookCopies.subscribe(
            bookcopies => this.bookcopies = bookcopies,
            error =>  this.errorMessage = <any>error);
   }
} 