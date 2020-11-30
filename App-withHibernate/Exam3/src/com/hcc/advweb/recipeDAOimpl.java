package com.hcc.advweb;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.SessionFactory;

@Repository
public class recipeDAOimpl implements recipeDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public recipeDAOimpl() {
		// TODO Auto-generated constructor stub
	}
	
	
	@Override
	public ArrayList<recipe> getRecipeList() {
		ArrayList<recipe> recipeList = 
				(ArrayList<recipe>)sessionFactory.
				getCurrentSession().createQuery("FROM recipes").
				list();
		return recipeList;
	}

	@Override
	public recipe recipeSearch(int id) {
		recipe rcp = (recipe)sessionFactory.getCurrentSession().get(recipe.class, id);
		return rcp;
	}

	@Override
	public ArrayList<recipe> getRecipeListUSA() {
		ArrayList<recipe> recipeListUSA = 
				(ArrayList<recipe>)sessionFactory.
				getCurrentSession().createQuery("FROM recipes WHERE country='USA'").
				list();
		return recipeListUSA;
	}
	
	@Override
	public ArrayList<recipe>  getRecipeListFR(){
		ArrayList<recipe> recipeListFr = 
				(ArrayList<recipe>)sessionFactory.
				getCurrentSession().createQuery("FROM recipes WHERE country='France'").
				list();
		return recipeListFr;
	}

}
