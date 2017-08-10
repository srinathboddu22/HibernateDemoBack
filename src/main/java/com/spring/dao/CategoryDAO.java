package com.spring.dao;

import java.util.List;

import com.spring.model.Category;

public interface CategoryDAO {

	public boolean saveCategory(Category category);
	
	public List<Category> list();
	
	public Category getCategoryById(int category_id);
	
	public Category removeCategoryById(int category_id);

	public void add(Category category);

	public void edit(Category category);

	public void delete(int catid);

	public Category getCategory(int catid);

	public List getAllCategory();
	
	
}


