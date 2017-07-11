import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule, JsonpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { AuthorObservableComponent } from './author-observable.component';
import { BookObservableComponent } from './book-observable.component';
import { AuthorPromiseComponent } from './author-promise.component';

import { AuthorService } from './author.service';
import { BookService } from './book.service';

@NgModule({
  declarations: [
    AppComponent,
    AuthorObservableComponent,
    AuthorPromiseComponent,
    BookObservableComponent,
  ],
  imports: [
    BrowserModule,
    HttpModule
  ],
  providers: [AuthorService, BookService],
  bootstrap: [AppComponent]
})

export class AppModule { }

