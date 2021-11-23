package com.mlb.stats.model;

/**
 * 
 * @author Avik Shenoy
 * @version 11/22/2021
 */
public class User {
	private int id;
	private String nameLast;
	private String nameFirst;
	private int height;
	private int weight;
	private int age;
	private String teamID;
	private float AVG;
	private float OBP;
	private float SLG;
	private float OPS;
	
	/**
	 * default constructor
	 */
	public User() {
		
	}
	
	/**
	 * 
	 * @param id - id
	 * @param nameLast - last name
	 * @param nameFirst - first name
	 * @param height - player height
	 * @param weight - player weight
	 * @param age - player age
	 * @param teamID - player's team
	 * @param AVG - batting average
	 * @param OBP - on base percentage
	 * @param SLG - slugging percentage
	 * @param OPS - on-base plus slugging
	 */
	public User(int id, String nameLast, String nameFirst, int height, int weight, int age, String teamID, float AVG, float OBP, float SLG, float OPS) {
		super();
		this.id = id;
		this.nameLast = nameLast;
		this.nameFirst = nameFirst;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.teamID = teamID;
		this.AVG = AVG;
		this.OBP = OBP;
		this.SLG = SLG;
		this.OPS = OPS;
	}

	/**
	 * 
	 * @param nameLast - last name
	 * @param nameFirst - first name
	 * @param height - player height
	 * @param weight - player weight
	 * @param age - player age
	 * @param teamID - player's team
	 * @param AVG - batting average
	 * @param OBP - on base percentage
	 * @param SLG - slugging percentage
	 * @param OPS - on-base plus slugging
	 */
	public User(String nameLast, String nameFirst, int height, int weight, int age, String teamID, float AVG, float OBP, float SLG, float OPS) {
		super();
		this.nameLast = nameLast;
		this.nameFirst = nameFirst;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.teamID = teamID;
		this.AVG = AVG;
		this.OBP = OBP;
		this.SLG = SLG;
		this.OPS = OPS;
	}
	
	/**
	 * 
	 * @return id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @param id - id
	 */
	public void setId(int id) {
		this.id = id;
	}
	
	/**
	 * 
	 * @return last name
	 */
	public String getnameLast() {
		return nameLast;
	}
	
	/**
	 * 
	 * @param nameLast - last name
	 */
	public void setnameLast(String nameLast) {
		this.nameLast = nameLast;
	}
	
	/**
	 * 
	 * @return first name
	 */
	public String getnameFirst() {
		return nameFirst;
	}
	
	/**
	 * 
	 * @param nameFirst - first name
	 */
	public void setnameFirst(String nameFirst) {
		this.nameFirst = nameFirst;
	}
	
	/**
	 * 
	 * @return height
	 */
	public int getheight() {
		return height;
	}
	
	/**
	 * 
	 * @param height - height
	 */
	public void setheight(int height) {
		this.height = height;
	}		
	
	/**
	 * 
	 * @return weight
	 */
	public int getweight() {
		return weight;
	}
	
	/**
	 * 
	 * @param weight - weight
	 */
	public void setweight(int weight) {
		this.weight = weight;		
	}
	
	/**
	 * 
	 * @return age
	 */
	public int getage() {
		return age;
	}
	
	/**
	 * 
	 * @param age - age
	 */
	public void setage(int age) {
		this.age = age;		
	}
	
	/**
	 * 
	 * @return team ID
	 */
	public String getteamID() {
		return teamID;
	}
	
	/**
	 * 
	 * @param teamID - team id
	 */
	public void setteamID(String teamID) {
		this.teamID = teamID;
	}
	
	/**
	 * 
	 * @return AVG
	 */
	public float getAVG() {
		return AVG;
	}
	
	/**
	 * 
	 * @param AVG - average
	 */
	public void setAVG(int AVG) {
		this.AVG = AVG;
	}
	/**
	 * 
	 * @return OBP
	 */
	public float getOBP() {
		return OBP;
	}
	
	/**
	 * 
	 * @param OBP - on base percentage
	 */
	public void setOBP(int OBP) {
		this.OBP = OBP;
	}
	
	/**
	 * 
	 * @return SLG
	 */
	public float getSLG() {
		return SLG;
	}
	
	/**
	 * 
	 * @param SLG - slugging
	 */
	public void setSLG(int SLG) {
		this.SLG = SLG;
	}
	
	/** 
	 * 
	 * @return OPS
	 */
	public float getOPS() {
		return OPS;
	}
	
	/**
	 * 
	 * @param OPS - on-base plus slugging
	 */
	public void setOPS(int OPS) {
		this.OPS = OPS;
	}
	
}
