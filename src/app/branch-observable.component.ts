import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { BranchService } from './branch.service';
import { Branch } from './branch';

@Component({
   selector: 'branch-observable',
   templateUrl: './branch-observable.component.html'
})
export class BranchObservableComponent implements OnInit { 
   observableBranches: Observable<Branch[]>
   branches: Branch[];
   errorMessage: String;
   constructor(private branchService: BranchService) { }
   ngOnInit(): void {
        this.observableBranches = this.branchService.getBranchesWithObservable();
  this.observableBranches.subscribe(
            branches => this.branches = branches,
            error =>  this.errorMessage = <any>error);
   }
} 