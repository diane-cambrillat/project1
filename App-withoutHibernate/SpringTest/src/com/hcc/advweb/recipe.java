package com.hcc.advweb;

public class recipe {
	
	private int id;
	private String recipe_name;
	private String country;
	private String region;  
	private String recipe; 
	private String video; 
	private String type; 
	private String level;
	private String photo;
	
	
	
	public recipe(int id, String recipe_name, String country, String region, String recipe, String video, String type,
			String level, String photo) {
		super();
		this.id = id;
		this.recipe_name = recipe_name;
		this.country = country;
		this.region = region;
		this.recipe = recipe;
		this.video = video;
		this.type = type;
		this.level = level;
		this.photo = photo;
	}
	@Override
	public String toString() {
		return "recipe [id=" + id + ", recipe_name=" + recipe_name + ", country=" + country + ", region=" + region
				+ ", recipe=" + recipe + ", video=" + video + ", type=" + type + ", level=" + level + ", photo=" + photo
				+ "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRecipe_name() {
		return recipe_name;
	}
	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getRecipe() {
		return recipe;
	}
	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
