import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';

import { GenreService } from './genre.service';
import { Genre } from './genre';

@Component({
   selector: 'genre-observable',
   templateUrl: './genre-observable.component.html'
})
export class GenreObservableComponent implements OnInit { 
   observableGenres: Observable<Genre[]>
   genres: Genre[];
   errorMessage: String;
   constructor(private genreService: GenreService) { }
   ngOnInit(): void {
        this.observableGenres = this.genreService.getGenresWithObservable();
  this.observableGenres.subscribe(
            genres => this.genres = genres,
            error =>  this.errorMessage = <any>error);
   }
} 