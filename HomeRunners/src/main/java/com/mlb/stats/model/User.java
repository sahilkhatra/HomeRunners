package com.mlb.stats.model;

public class User {
	private int id;
	private String name;
	private String teamID;
	private float average;
	
	public User() {
		
	}
	
	public User(int id, String name, String teamID, float average) {
		super();
		this.id = id;
		this.name = name;
		this.teamID = teamID;
		this.average = average;
	}

	public User(String name, String teamID, float average) {
		super();
		this.name = name;
		this.teamID = teamID;
		this.average = average;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getteamID() {
		return teamID;
	}
	public void setteamID(String teamID) {
		this.teamID = teamID;
	}
	public float getaverage() {
		return average;
	}
	public void setaverage(int average) {
		this.average = average;
	}

	
}
