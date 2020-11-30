package com.hcc.advweb;

import com.hcc.util.DatabaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class recipeList {

	public static ArrayList <recipe> recipesList = new ArrayList <recipe>(); 
	public static ArrayList <recipe> recipeListUSA = new ArrayList <recipe>(); 
	public static ArrayList <recipe> recipeListFR = new ArrayList <recipe>(); 
	public static recipe returned_recipe=null;
	
	public recipeList() {
		
	}
	
	public static ArrayList<recipe> getRecipeList() {
		if((recipesList== null) || (recipesList.size() == 0)) {
		try {
		Connection conn=DatabaseUtil.getConnection();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("Select * FROM studentdb.recipes;");
		while (rs.next()) {
			int id = rs.getInt("id");
			String dish=rs.getString("recipe_name");
			String country = rs.getString("country");
			String region = rs.getString("region");
			String recipe = rs.getString("recipe");
			String video = rs.getString("video");
			String type = rs.getString("type");
			String level = rs.getString("level");
			String photo = rs.getString("photo");
			System.out.println("----"+id+" "+dish+" "+country+" "+level);
			recipesList.add(new recipe(id, dish, country,region,recipe,video, type, level, photo));
		}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
		return recipesList;
	}
	
	public static recipe recipeSearch(ArrayList<recipe> recipesList,int id) {
		
		for (recipe rcp : recipesList) {
			if (rcp.getId()==id) {
			returned_recipe=rcp;
			System.out.println("Recipe found: "+rcp.getRecipe_name());
			}
		}
		return returned_recipe;
	}
	
	public static ArrayList<recipe> getRecipeListUSA() {
		if((recipeListUSA== null) || (recipeListUSA.size() == 0)) {
		try {
		Connection conn=DatabaseUtil.getConnection();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("Select * FROM studentdb.recipes WHERE country='USA';");
		while (rs.next()) {
			int id = rs.getInt("id");
			String dish=rs.getString("recipe_name");
			String country = rs.getString("country");
			String region = rs.getString("region");
			String recipe = rs.getString("recipe");
			String video = rs.getString("video");
			String type = rs.getString("type");
			String level = rs.getString("level");
			String photo = rs.getString("photo");
			System.out.println("----"+id+" "+dish+" "+country+" "+level);
			recipeListUSA.add(new recipe(id, dish, country,region,recipe,video, type, level, photo));
		}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		}
		return recipeListUSA;
	}
	
	public static ArrayList<recipe> getRecipeListFR() {
		if((recipeListFR== null) || (recipeListFR.size() == 0)) {
		try {
		Connection conn=DatabaseUtil.getConnection();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("Select * FROM studentdb.recipes WHERE country='France';");
		while (rs.next()) {
			int id = rs.getInt("id");
			String dish=rs.getString("recipe_name");
			String country = rs.getString("country");
			String region = rs.getString("region");
			String recipe = rs.getString("recipe");
			String video = rs.getString("video");
			String type = rs.getString("type");
			String level = rs.getString("level");
			String photo = rs.getString("photo");
			System.out.println("----"+id+" "+dish+" "+country+" "+level);
			recipeListFR.add(new recipe(id, dish, country,region,recipe,video, type, level, photo));
		}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		}
		return recipeListFR;
	}
}
