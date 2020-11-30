package com.hcc.advweb;
import java.util.ArrayList; 

import java.util.*;  

public interface recipeDAO {
	
	public ArrayList<recipe> getRecipeList();
	
	public recipe recipeSearch(int id);
	
	public ArrayList<recipe> getRecipeListUSA();
	
	public ArrayList<recipe> getRecipeListFR();
}
