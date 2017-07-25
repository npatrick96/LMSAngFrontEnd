import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule, JsonpModule } from '@angular/http';
import {Routes, RouterModule} from "@angular/router";

import { AuthorService } from './author/author.service';
import { BookService } from './book/book.service';
import { BookCopyService } from './bookcopy/bookcopy.service';
import { BookLoanService } from './bookloan/bookloan.service';
import { BorrowerService } from './borrower/borrower.service';
import { BranchService } from './branch/branch.service';
import { GenreService } from './genre/genre.service';
import { PublisherService } from './publisher/publisher.service';

import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { AuthorObservableComponent } from './author/author-observable.component';
import { AddAuthorComponent } from './author/add-author.component';
import { BookObservableComponent } from './book/book-observable.component';
import { BookCopyObservableComponent } from './bookcopy/bookcopy-observable.component';
import { BookLoanObservableComponent } from './bookloan/bookloan-observable.component';
import { BorrowerObservableComponent } from './borrower/borrower-observable.component';
import { BranchObservableComponent } from './branch/branch-observable.component';
import { GenreObservableComponent } from './genre/genre-observable.component';
import { PublisherObservableComponent } from './publisher/publisher-observable.component';

import { AuthorPromiseComponent } from './author/author-promise.component';
import { AdminComponent } from './admin/admin.component';

const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  //{path: '', redirectTo: 'home', pathMatch: 'full'},
  //{path: 'find', redirectTo: 'search'},
  //{path: '**', component: PageNotFoundComponent},
  {path: 'home', component: HomeComponent},
  {path: 'admin', component: AdminComponent},
  {path: 'authors', component: AuthorObservableComponent},
  {path: 'addauthor', component: AddAuthorComponent},
  {path: 'books', component: BookObservableComponent},
  {path: 'branches', component: BranchObservableComponent},
  {path: 'bookloans', component: BookLoanObservableComponent},
  {path: 'bookcopies', component: BookCopyObservableComponent},
  {path: 'genres', component: GenreObservableComponent},
  {path: 'publishers', component: PublisherObservableComponent},
  {path: 'borrowers', component: BorrowerObservableComponent}
];

@NgModule({
  declarations: [
    AppComponent,
    AuthorObservableComponent,
    AddAuthorComponent,
    BookObservableComponent,
    BookLoanObservableComponent,
    BookCopyObservableComponent, 
    BorrowerObservableComponent, 
    BranchObservableComponent,
    GenreObservableComponent,
    PublisherObservableComponent,
    AuthorPromiseComponent,
    HomeComponent,
    AdminComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    JsonpModule,
    RouterModule.forRoot(routes)
  ],
  providers: [AuthorService, BookService, BookCopyService, BookLoanService, 
              BorrowerService, BranchService, GenreService, PublisherService],
  bootstrap: [AppComponent]
})

export class AppModule { }

