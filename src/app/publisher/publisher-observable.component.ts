import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { PublisherService } from './publisher.service';
import { Publisher } from './publisher';

@Component({
   selector: 'publisher-observable',
   templateUrl: './publisher-observable.component.html'
})
export class PublisherObservableComponent implements OnInit { 
   observablePublishers: Observable<Publisher[]>
   publishers: Publisher[];
   errorMessage: String;
   constructor(private publisherService: PublisherService) { }
   ngOnInit(): void {
        this.observablePublishers = this.publisherService.getPublishersWithObservable();
  this.observablePublishers.subscribe(
            publishers => this.publishers = publishers,
            error =>  this.errorMessage = <any>error);
   }
} 