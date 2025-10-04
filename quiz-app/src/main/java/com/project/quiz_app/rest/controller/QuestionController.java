package com.project.quiz_app.rest.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.quiz_app.dto.OptionDto;
import com.project.quiz_app.dto.QuestionDto;
import com.project.quiz_app.dto.ResponseDto;
import com.project.quiz_app.entity.Question;
import com.project.quiz_app.service.QuestionService;

@RestController
@RequestMapping("/question")
public class QuestionController {
    
	@Autowired
	private QuestionService questionService;
	
	@GetMapping("/{quizId}")
	public ResponseEntity<ResponseDto<QuestionDto>> getAllQuestionsByQuizId(@PathVariable Long quizId){
		 
		List<Question> qList = questionService.findByQuizId(quizId);
		if(qList.isEmpty() || qList == null) {
			 ResponseDto<QuestionDto> res = new ResponseDto<>(false, "No Questions Found"); 
			return new ResponseEntity<ResponseDto<QuestionDto>>(res , HttpStatus.OK);
		}
		List<QuestionDto> questions = new ArrayList<>();
		 qList.stream()
		      .forEach(q ->{
		    	  QuestionDto qDto = new QuestionDto();
		    	  List<OptionDto> optionsList = new ArrayList<>();
		    	   q.getOptions().stream()
		    	                 .forEach(o->{
		    	                	 OptionDto optionDto = new OptionDto();
		    	                	 optionDto.setId(o.getId());
		    	                	 optionDto.setText(o.getText());
		    	                	 optionsList.add(optionDto);
		    	                 });
		    	   qDto.setId(q.getId());
		    	   qDto.setText(q.getText());
		    	   qDto.setOptions(optionsList);
		    	   questions.add(qDto);
		      });
		  ResponseDto<QuestionDto> res = new ResponseDto<>(questions , "Questions Fetched Successfully");
		 return new ResponseEntity<ResponseDto<QuestionDto>>(res , HttpStatus.OK);
		
	}
}
