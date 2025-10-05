package com.project.quiz_app.entity;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="tbl_quiz")
public class Quiz {
     
	@Id
	@GeneratedValue(strategy =  GenerationType.IDENTITY)
	private Long id;
	private String title;
	private String description;
	private int timer = 120;
	
	@OneToMany(mappedBy = "quiz" , cascade =  CascadeType.ALL , fetch=FetchType.EAGER)
	private List<Question> question = new ArrayList<>();
    
	
	public Quiz() {
		
	}
	
	public Quiz(Long id, String title, String description, List<Question> question , int timer) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.question = question;
		this.timer = timer;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Question> getQuestion() {
		return question;
	}

	public void setQuestion(List<Question> question) {
		this.question = question;
	}

	public int getTimer() {
		return timer;
	}

	public void setTimer(int timer) {
		this.timer = timer;
	}
	
	
}
