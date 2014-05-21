package com.fitlAAC.apis;

import java.io.Serializable;
import java.sql.Timestamp;

public class StudentInfo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String netID;
	public String fName;
	String lName;
	String sEmail;
	int compPanelNo;
	Timestamp [] panelTimeStartArr;
	Timestamp [] panelTimeEndArr;
	Timestamp [] panelTimeSpentArr;
	int noOfTimesVideoWatched[];
	int quizScore[];
	int quizAtempts[];
	public StudentInfo(){
		noOfTimesVideoWatched= new int[9];
		panelTimeStartArr= new Timestamp[9];
		panelTimeEndArr= new Timestamp[9];
		panelTimeSpentArr= new Timestamp[9];
		quizScore= new int[9];
		quizAtempts= new int[9];
	}
}
