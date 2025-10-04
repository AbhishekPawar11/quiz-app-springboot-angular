package com.project.quiz_app.dto;

public class QuestionResultDto {
	private Long questionId;
    private String questionText;
    private String selectedOptionText;
    private String correctOptionText;
    private boolean isCorrect;
    
    
    
	public Long getQuestionId() {
		return questionId;
	}
	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}
	public String getQuestionText() {
		return questionText;
	}
	public void setQuestionText(String questionText) {
		this.questionText = questionText;
	}
	public String getSelectedOptionText() {
		return selectedOptionText;
	}
	public void setSelectedOptionText(String selectedOptionText) {
		this.selectedOptionText = selectedOptionText;
	}
	public String getCorrectOptionText() {
		return correctOptionText;
	}
	public void setCorrectOptionText(String correctOptionText) {
		this.correctOptionText = correctOptionText;
	}
	public boolean isCorrect() {
		return isCorrect;
	}
	public void setCorrect(boolean isCorrect) {
		this.isCorrect = isCorrect;
	}
    
    
}
