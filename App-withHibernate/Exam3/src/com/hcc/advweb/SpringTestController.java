package com.hcc.advweb;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class SpringTestController {
	
	@Autowired
	private recipeService rcpService;
	
	public SpringTestController() {
		// TODO Auto-generated constructor stub
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String viewStudentDetails(ModelMap model) {
	    return "home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String logIn(HttpServletRequest request) {
		System.out.println("-----------try to log in ----------");
		
		String cusername = request.getParameter("loginuser");
		String cpwd = request.getParameter("loginpwd");

		
		HttpSession session = request.getSession();
		if ((cusername.equals("Diane")) && (cpwd.equals("1234"))) {
			session.setAttribute("logged", "True");
			System.out.println("successfully logged in");
		} else {
			session.setAttribute("logged", "False");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			System.out.println("not logged");
		}
	    return "home";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.setAttribute("logged", "False");
		System.out.println("Successfully logged out");
		
		return "home";
	}
	
	@RequestMapping(value = "/recipes", method = RequestMethod.GET)
	public String accessRecipeList(HttpServletRequest request) {
		System.out.println("-----------getting American recipes through /recipe----------");
		ArrayList<recipe> recipesUSA = rcpService.getRecipeListUSA();
		System.out.println("-----------getting French recipes through /recipe----------");
		ArrayList<recipe> recipesFR = rcpService.getRecipeListFR();
		request.setAttribute("recipesUSA", recipesUSA);
		request.setAttribute("recipesFR", recipesFR);
		
		System.out.println("-----------Looking for recipe through /recipe----------");
		int id = 1;
		ArrayList<recipe> recipeLt = rcpService.getRecipeList();
		recipe found_recipe= rcpService.recipeSearch(id);
		request.setAttribute("dish", found_recipe.getRecipe_name());
		request.setAttribute("country", found_recipe.getCountry() );
		request.setAttribute("region", found_recipe.getRegion());
		request.setAttribute("video", found_recipe.getVideo());
		request.setAttribute("recipe", found_recipe.getRecipe());
		request.setAttribute("type", found_recipe.getType());
		request.setAttribute("level", found_recipe.getLevel());
		request.setAttribute("level", found_recipe.getPhoto());
				
		return "recipes";
	}
	
	@RequestMapping(value = "/getrecipe", method = RequestMethod.GET)
	public String getRecipe(HttpServletRequest request) {
		System.out.println("-----------Looking for recipe through through /getrecipe----------");
		int id = Integer.parseInt(request.getParameter("index"));
		ArrayList<recipe> recipeLt = rcpService.getRecipeList();
		recipe found_recipe= rcpService.recipeSearch(id);
		request.setAttribute("dish", found_recipe.getRecipe_name());
		request.setAttribute("country", found_recipe.getCountry() );
		request.setAttribute("region", found_recipe.getRegion());
		request.setAttribute("video", found_recipe.getVideo());
		request.setAttribute("recipe", found_recipe.getRecipe());
		request.setAttribute("type", found_recipe.getType());
		request.setAttribute("level", found_recipe.getLevel());
		request.setAttribute("level", found_recipe.getPhoto());
		
		System.out.println("-----------getting American recipes through /getrecipe----------");
		ArrayList<recipe> recipesUSA = rcpService.getRecipeListUSA();
		System.out.println("-----------getting French recipes----------");
		ArrayList<recipe> recipesFR = rcpService.getRecipeListFR();
		request.setAttribute("recipesUSA", recipesUSA);
		request.setAttribute("recipesFR", recipesFR);
		
		return "recipes";
	}
		
}