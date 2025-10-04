package com.project.quiz_app.dto;

import java.util.ArrayList;
import java.util.List;

public class ResponseDto<T> {
    
	private List<T> data;
	private boolean error;
	private String message;
	
	
	public ResponseDto(List<T> data , String message){
		this.data = data;
		this.error = false;
		this.message = message;
	}
	
	public ResponseDto(boolean error , String message){
		this.data = null;
		this.error = error;
		this.message = message;
	}
	
	public List<T> getData() {
		return data;
	}
	public void setData(List<T> data) {
		this.data = data;
	}
	public boolean isError() {
		return error;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
