import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { BorrowerService } from './borrower.service';
import { Borrower } from './borrower';

@Component({
   selector: 'borrower-observable',
   templateUrl: './borrower-observable.component.html'
})
export class BorrowerObservableComponent implements OnInit { 
   observableBorrowers: Observable<Borrower[]>
   borrowers: Borrower[];
   errorMessage: String;
   constructor(private borrowerService: BorrowerService) { }
   ngOnInit(): void {
        this.observableBorrowers = this.borrowerService.getBorrowersWithObservable();
  this.observableBorrowers.subscribe(
            borrowers => this.borrowers = borrowers,
            error =>  this.errorMessage = <any>error);
   }
} 