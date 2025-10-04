package com.project.quiz_app.dto;

import org.springframework.stereotype.Component;

@Component
public class OptionDto {
	 private Long id;
	    private String text;
	    
	    
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
	    
	    
}
