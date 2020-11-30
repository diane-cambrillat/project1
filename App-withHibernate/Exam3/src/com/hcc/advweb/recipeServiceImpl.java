package com.hcc.advweb;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class recipeServiceImpl implements recipeService {
	
	@Autowired
	private recipeDAO recipeDao;
	
	public recipeServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	
	@Override
	@Transactional
	public ArrayList<recipe> getRecipeList(){
		return recipeDao.getRecipeList();
	}
	
	@Override
	@Transactional
	public recipe recipeSearch(int id) {
		return recipeDao.recipeSearch(id);
		
	}
	
	@Override
	@Transactional
	public ArrayList<recipe> getRecipeListUSA(){
		return recipeDao.getRecipeListUSA();
	}
	
	@Override
	@Transactional
	public ArrayList<recipe> getRecipeListFR(){
		return recipeDao.getRecipeListFR();
	}
}
