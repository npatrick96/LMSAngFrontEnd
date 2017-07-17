import { Injectable } from '@angular/core';
import { Http, Response } from '@angular/http';
import { Observable } from 'rxjs';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';

import { Publisher } from './publisher';
import * as myGlobals from '../globals';

@Injectable()
export class PublisherService {
  url = myGlobals.baseUrl+"publishers";
  //url = "http://localhost:8080/api/publishers";
  constructor(private http: Http) { }
  getPublishersWithObservable(): Observable<Publisher[]> {
    return this.http.get(this.url)
      .map(this.extractData)
      .catch(this.handleErrorObservable);
  }
  getPublishersWithPromise(): Promise<Publisher[]> {
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