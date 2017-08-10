package com.spring.service;


import com.spring.model.Category;

public interface CategoryService {
	
	public void add(Category category);
	public void edit(Category category);
	public void delete(int Catid);
	public Category getCategory(int Catid);
	

}

