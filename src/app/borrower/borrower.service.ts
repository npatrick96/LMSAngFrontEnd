import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';

import { Borrower } from './borrower';
import * as myGlobals from '../globals';

@Injectable()
export class BorrowerService {
  url = myGlobals.baseUrl+"borrowers";
  //url = "http://localhost:8080/api/borrowers";
  constructor(private http: Http) { }
  getBorrowersWithObservable(): Observable<Borrower[]> {
    return this.http.get(this.url)
      .map(this.extractData)
      .catch(this.handleErrorObservable);
  }
  getBorrowersWithPromise(): Promise<Borrower[]> {
    return this.http.get(this.url).toPromise()
      .then(this.extractData)
      .catch(this.handleErrorPromise);
  }
  private extractData(res: Response) {
    let body = res.json();
    return body;
  }
  private handleErrorObservable(error: Response | any) {
    console.error(error.message || error);
    return Observable.throw(error.message || error);
  }
  private handleErrorPromise(error: Response | any) {
    console.error(error.message || error);
    return Promise.reject(error.message || error);
  }
}