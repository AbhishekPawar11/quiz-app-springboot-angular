import { Routes } from '@angular/router';
import { QuizListComponent } from './pages/quiz-list/quiz-list.component';
import { QuizQuestionsComponent } from './pages/quiz-questions/quiz-questions.component';
import { QuizResultComponent } from './pages/quiz-result/quiz-result.component';

export const routes: Routes = [
     {path :"" , component: QuizListComponent},
     {path :"quiz/:id" , component: QuizQuestionsComponent},
     {path : "result" , component:QuizResultComponent}
];
