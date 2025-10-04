import { Component, OnInit } from '@angular/core';
import { QuizService } from '../../services/quiz.service';
import { ActivatedRoute, Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { MatButtonModule } from "@angular/material/button";


@Component({
  selector: 'app-quiz-questions',
  imports: [CommonModule, MatButtonModule],
  templateUrl: './quiz-questions.component.html',
  styleUrl: './quiz-questions.component.scss'
})
export class QuizQuestionsComponent implements OnInit {
  QuizId! : number;
  
  questions:any[] = [];
  currentIndex:number = 0;
   questionsRespMsg:string = "";
  answers:{[key:number] : number} = {};

   constructor(
    private quizService : QuizService,
    private router : Router,
    private route : ActivatedRoute
   ){}

  ngOnInit(): void {
    this.QuizId = Number(this.route.snapshot.paramMap.get('id'));
    this.loadQuestions();
  }


   loadQuestions(){
      this.quizService.getQuestions(this.QuizId).subscribe({
          next:(res)=>{

            if(res.data.length > 0){
              this.questions = res.data;
            }else{
              this.questionsRespMsg = res.message;
            }
             
          },
          error:(err) => console.error(err)
      })
   }

   selectOption(questionId : number , optionId :number){
      this.answers[questionId] = optionId;
   }

   nextQuestion(){
       if(this.currentIndex < this.questions.length-1){
         this.currentIndex++;
       }
   }

   prevQuestion(){
    if(this.currentIndex > 0){
      this.currentIndex--;
    }
   }

   submitQuiz(){
       this.quizService.submitQuiz(this.QuizId , this.answers).subscribe({
          next:(res)=>{
             this.router.navigate(['/result'] , {state:{result:res}});
          },
          error:(err)=>console.error(err)
       })
   }

}
