package com.project.quiz_app.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.stereotype.Service;

import com.project.quiz_app.dao.QuizDao;
import com.project.quiz_app.entity.Quiz;
import com.project.quiz_app.service.QuizService;

@Service
public class QuizServiceImpl implements QuizService{
   
	@Autowired
	private QuizDao quizDao;
    
	public List<Quiz> getAllQuiz(){
		List<Quiz> quizes = quizDao.findAll();
		
			return quizes;
	   }
	
	
}
