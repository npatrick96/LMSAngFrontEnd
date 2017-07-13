import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { BookLoanService } from './bookloan.service';
import { BookLoan } from './bookloan';

@Component({
   selector: 'bookloan-observable',
   templateUrl: './bookloan-observable.component.html'
})
export class BookCopyObservableComponent implements OnInit { 
   observableBookLoans: Observable<BookLoan[]>
   bookloans: BookLoan[];
   errorMessage: String;
   constructor(private bookLoanService: BookLoanService) { }
   ngOnInit(): void {
  this.observableBookLoans = this.bookLoanService.getBookLoansWithObservable();
  this.observableBookLoans.subscribe(
            bookloans => this.bookloans = bookloans,
            error =>  this.errorMessage = <any>error);
   }
} 