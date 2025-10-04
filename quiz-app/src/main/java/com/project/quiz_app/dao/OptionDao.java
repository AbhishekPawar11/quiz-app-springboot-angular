package com.project.quiz_app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.quiz_app.entity.Option;

public interface OptionDao extends JpaRepository<Option, Long>{

}
