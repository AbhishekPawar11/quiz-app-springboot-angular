import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { MatButton } from "@angular/material/button";
import { MatIconModule } from '@angular/material/icon';

@Component({
  selector: 'app-quiz-result',
  imports: [CommonModule, MatButton ,MatIconModule],
  templateUrl: './quiz-result.component.html',
  styleUrl: './quiz-result.component.scss'
})
export class QuizResultComponent {
   
  result :any;
  constructor(private router : Router){
     
    const nav = this.router.getCurrentNavigation();
    this.result= nav?.extras?.state?.['result'];
  }

  goToHome(){
    this.router.navigate(['/']);
  }
}
