import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
  

export interface Quiz {
  id: number;
  title: string;
  description: string;
  timer : number;
}

export interface Response {
     data: Array<any>;
     error: boolean;
     message:string;
}

export interface Result {
    score:number;
    total:number;
    results:Array<any>;
}

@Injectable({
  providedIn: 'root'
})

export class QuizService {

  constructor(private http : HttpClient) { }
  
  private apiUrl = 'http://localhost:8080'
   
  public quiz:any = null;


  getQuizzes():Observable<Response>{
    return this.http.get<Response>(`${this.apiUrl}/quiz`);
  }

  getQuestions(quizId:number):Observable<Response>{
    return this.http.get<Response>(`${this.apiUrl}/question/${quizId}`);
  }

  submitQuiz(quizId:number , answers:Object):Observable<Result>{
     return this.http.post<Result>(`${this.apiUrl}/quiz/${quizId}/submit`, answers);
  }
}
