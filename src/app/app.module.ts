import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule, JsonpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { AuthorObservableComponent } from './author-observable.component';
import { BookObservableComponent } from './book-observable.component';
import { BookCopyObservableComponent } from './bookcopy-observable.component';
import { BookLoanObservableComponent } from './bookloan-observable.component';
import { BorrowerObservableComponent } from './borrower-observable.component';
import { BranchObservableComponent } from './branch-observable.component';
import { GenreObservableComponent } from './genre-observable.component';
import { PublisherObservableComponent } from './publisher-observable.component';
//import { AuthorPromiseComponent } from './author-promise.component';

import { AuthorService } from './author.service';
import { BookService } from './book.service';
import { BookCopyService } from './bookcopy.service';
import { BookLoanService } from './bookloan.service';
import { BorrowerService } from './borrower.service';
import { BranchService } from './branch.service';
import { GenreService } from './genre.service';
import { PublisherService } from './publisher.service';

@NgModule({
  declarations: [
    AppComponent,
    AuthorObservableComponent,
    BookObservableComponent,
    BookCopyObservableComponent,
    BookCopyObservableComponent, 
    BorrowerObservableComponent, 
    BranchObservableComponent,
    GenreObservableComponent,
    PublisherObservableComponent
    //AuthorPromiseComponent,
  ],
  imports: [
    BrowserModule,
    HttpModule
  ],
  providers: [AuthorService, BookService, BookCopyService, BookLoanService, 
              BorrowerService, BranchService, GenreService, PublisherService],
  bootstrap: [AppComponent]
})

export class AppModule { }

