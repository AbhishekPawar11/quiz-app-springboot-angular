package com.project.quiz_app.dao;
import org.springframework.data.jpa.repository.JpaRepository;

import com.project.quiz_app.entity.Quiz;

public interface QuizDao  extends JpaRepository<Quiz , Long>{
       
}
