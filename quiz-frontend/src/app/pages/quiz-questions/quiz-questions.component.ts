import { Component, OnInit } from '@angular/core';
import { QuizService } from '../../services/quiz.service';
import { ActivatedRoute, Router } from '@angular/router';
import { CommonModule } from '@angular/common';
import { MatButtonModule } from "@angular/material/button";
import { MatIconModule } from '@angular/material/icon';


@Component({
  selector: 'app-quiz-questions',
  imports: [CommonModule, MatButtonModule, MatIconModule],
  templateUrl: './quiz-questions.component.html',
  styleUrl: './quiz-questions.component.scss'
})
export class QuizQuestionsComponent implements OnInit {
  QuizId! : number;
  quiz:any = null;
  timer:number = 120;
  interval: any;
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
    //this.QuizId = Number(this.route.snapshot.paramMap.get('id'));
    this.quiz = sessionStorage.getItem("quiz");
     if(this.quiz == null || this.quiz.length <0){
       this.router.navigate(['/']);
     }
     this.quiz = JSON.parse(this.quiz);
    this.QuizId = this.quiz.id;
    this.timer = this.quiz.timer;
    this.loadQuestions();
    this.startTimer();
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
    
   startTimer(){
     this.interval = setInterval(()=>{
        if(this.timer > 0){
          this.timer--;
        }else{
          this.submitQuiz();
        }
     }, 1000)
   }
  
   formatTime(seconds:number):string{
      const minutes = Math.floor(seconds/60);
      const remainingSeconds = seconds % 60;
      return `${minutes}:${remainingSeconds <10? '0' : ''}${remainingSeconds}`;
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
       clearInterval(this.interval);
       this.quizService.submitQuiz(this.QuizId , this.answers).subscribe({
          next:(res)=>{
             this.router.navigate(['/result'] , {state:{result:res}});
             sessionStorage.removeItem("quiz");
          },
          error:(err)=>console.error(err)
       })
   }
  
   ngOnDestroy(): void {
    clearInterval(this.interval);
  }
}
