package com.hcc.advweb;

import java.util.ArrayList;

public interface recipeService {

	public ArrayList<recipe> getRecipeList();
	
	public recipe recipeSearch(int id);
	
	public ArrayList<recipe> getRecipeListUSA();
	
	public ArrayList<recipe> getRecipeListFR();
	
}
