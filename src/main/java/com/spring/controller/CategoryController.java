package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dao.CategoryDAO;
import com.spring.model.Category;

@Controller
public class CategoryController {

	
	@Autowired
	CategoryDAO categoryDAO;
	@RequestMapping(value = { "category"})
	public String Category(@ModelAttribute("category") Category category,BindingResult result,Model model) {
		//model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("Category", "true");
		return "Category";
	}
	@RequestMapping(value = { "saveCategory" }, method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category,RedirectAttributes attributes) {
		categoryDAO.saveCategory(category);
		attributes.addFlashAttribute("SuccessMessage", "Category has been added/Updated Successfully");
		return "redirect:/category";
	}
	
	}
