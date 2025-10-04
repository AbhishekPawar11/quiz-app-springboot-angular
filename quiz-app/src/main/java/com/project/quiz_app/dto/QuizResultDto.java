package com.project.quiz_app.dto;

import java.util.List;

public class QuizResultDto {
   
	private int score;
	private int total;
	 private List<QuestionResultDto> results;
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public List<QuestionResultDto> getResults() {
		return results;
	}
	public void setResults(List<QuestionResultDto> results) {
		this.results = results;
	}
	 
	 
}
