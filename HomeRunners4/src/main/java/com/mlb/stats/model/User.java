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
	private int SV;
	private int HR;
	private int AB;
	private float AVG;
	private float OBP;
	private float SLG;
	private float OPS;
	private int SHO;
	private int ER;
	private int GS;
	private int BB;
	private float ERA;
	
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
	 * @param SV - saves
	 * @param HR - home runs
	 * @param AB - at bat
	 * @param AVG - batting average
	 * @param OBP - on base percentage
	 * @param SLG - slugging percentage
	 * @param OPS - on-base plus slugging
	 * @param SHO - shut out
	 * @param ER - earned run
	 * @param GS - games started
	 * @param BB - base on balls
	 * @param ERA - earned run average
	 */
	public User(int id, String nameLast, String nameFirst, int height, int weight, int age, String teamID, int HR, int AB, float AVG, 
			float OBP, float SLG, float OPS, int SV, int SHO, int ER, int GS, int BB, float ERA) {
		super();
		this.id = id;
		this.nameLast = nameLast;
		this.nameFirst = nameFirst;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.teamID = teamID;
		this.SV = SV;
		this.HR = HR;
		this.AB = AB;
		this.AVG = AVG;
		this.OBP = OBP;
		this.SLG = SLG;
		this.OPS = OPS;
		this.SHO = SHO;
		this.ER = ER;
		this.GS = GS;
		this.BB = BB;
		this.ERA = ERA;
	}

	/**
	 * 
	 * @param nameLast - last name
	 * @param nameFirst - first name
	 * @param height - player height
	 * @param weight - player weight
	 * @param age - player age
	 * @param teamID - player's team
	 * @param SV - saves
	 * @param HR - home runs
	 * @param AB - at bat
	 * @param AVG - batting average
	 * @param OBP - on base percentage
	 * @param SLG - slugging percentage
	 * @param OPS - on-base plus slugging
	 * @param SHO - shut out
	 * @param ER - earned runs
	 * @param GS - games started
	 * @param BB - base on balls
	 * @param ERA - earned run average
	 */
	public User(String nameLast, String nameFirst, int height, int weight, int age, String teamID, int SV, int HR, int AB, 
			float AVG, float OBP, float SLG, float OPS, int SHO, int ER, int GS, int BB, float ERA) {
		super();
		this.nameLast = nameLast;
		this.nameFirst = nameFirst;
		this.height = height;
		this.weight = weight;
		this.age = age;
		this.teamID = teamID;
		this.SV = SV;
		this.HR = HR;
		this.AB = AB;
		this.AVG = AVG;
		this.OBP = OBP;
		this.SLG = SLG;
		this.OPS = OPS;
		this.SHO = SHO;
		this.ER = ER;
		this.GS = GS;
		this.BB = BB;
		this.ERA = ERA;
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
	public void setAVG(float AVG) {
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
	public void setOBP(float OBP) {
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
	public void setSLG(float SLG) {
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
	public void setOPS(float OPS) {
		this.OPS = OPS;
	}
	
	/** 
	 * 
	 * @return ER
	 */
	public int getER() {
		return ER;
	}
	
	/**
	 * 
	 * @param ER - earned run
	 */
	public void setER(int ER) {
		this.ER = ER;
	}
	
	/** 
	 * 
	 * @return GS
	 */
	public int getGS() {
		return GS;
	}
	
	/**
	 * 
	 * @param GS - games started
	 */
	public void setGS(int GS) {
		this.GS = GS;
	}
	
	/** 
	 * 
	 * @return BB
	 */
	public int getBB() {
		return BB;
	}
	
	/**
	 * 
	 * @param BB - base on balls
	 */
	public void setBB(int BB) {
		this.BB = BB;
	}
	
	/** 
	 * 
	 * @return ERA
	 */
	public float getERA() {
		return ERA;
	}
	
	/**
	 * 
	 * @param ERA - earned run average
	 */
	public void setERA(float ERA) {
		this.ERA = ERA;
	}

	/** 
	 * 
	 * @return HR
	 */
	public int getHR() {
		return HR;
	}
	
	/**
	 * 
	 * @param HR - home runs
	 */
	public void setHR(int HR) {
		this.HR = HR;
	}
	

	/** 
	 * 
	 * @return AB
	 */
	public int getAB() {
		return AB;
	}
	
	/**
	 * 
	 * @param AB - at bat
	 */
	public void setAB(int AB) {
		this.AB = AB;
	}

	/** 
	 * 
	 * @return SHO
	 */
	public int getSHO() {
		return SHO;
	}
	
	/**
	 * 
	 * @param SHO - shut out
	 */
	public void setSHO(int SHO) {
		this.SHO = SHO;
	}

	
	/** 
	 * 
	 * @return SV
	 */
	public int getSV() {
		return SV;
	}
	
	/**
	 * 
	 * @param SV - save
	 */
	public void setSV(int SV) {
		this.SV = SV;
	}

	
}
