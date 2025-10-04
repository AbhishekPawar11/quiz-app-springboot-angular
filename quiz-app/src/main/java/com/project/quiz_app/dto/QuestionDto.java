package com.project.quiz_app.dto;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class QuestionDto {
    
	 private Long id;
	    private String text;
	    private List<OptionDto> options;
	    
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getText() {
			return text;
		}
		public void setText(String text) {
			this.text = text;
		}
		public List<OptionDto> getOptions() {
			return options;
		}
		public void setOptions(List<OptionDto> options) {
			this.options = options;
		}
	    
	    
}
