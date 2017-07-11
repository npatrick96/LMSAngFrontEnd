import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpModule, JsonpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { ObservableComponent } from './observable.component';
import { PromiseComponent } from './promise.component';
import { AuthorService } from './author.service';

@NgModule({
  declarations: [
    AppComponent,
    ObservableComponent,
    PromiseComponent,
  ],
  imports: [
    BrowserModule,
    HttpModule
  ],
  providers: [AuthorService],
  bootstrap: [AppComponent]
})

export class AppModule { }

