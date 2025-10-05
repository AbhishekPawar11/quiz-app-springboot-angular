import { Component, OnInit } from '@angular/core';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';
import { CommonModule } from '@angular/common';
import { Quiz, QuizService } from '../../services/quiz.service';
import { Router } from '@angular/router';
import { MatIconModule } from '@angular/material/icon';


@Component({
  selector: 'app-quiz-list',
  imports: [CommonModule, MatCardModule, MatButtonModule,MatIconModule],
  templateUrl: './quiz-list.component.html',
  styleUrl: './quiz-list.component.scss'
})
export class QuizListComponent implements OnInit {
   
  quizzes:Quiz[] = [];

  constructor(private quizService:QuizService , private router :Router) {}


  ngOnInit(): void {
    this.getAllQuizzes();
    
  }
  

  getAllQuizzes(): void{

    this.quizService.getQuizzes().subscribe(res =>{
      this.quizzes = res.data;
   },
   error =>{
     console.log(error);
   }
  )
  }

  startQuiz(quiz:Quiz){
    sessionStorage.setItem("quiz" , JSON.stringify(quiz));
     this.router.navigate(['/quiz' , quiz.id]);
  }
}
