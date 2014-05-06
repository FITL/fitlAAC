package com.fitlAAC.apis;

import java.io.Serializable;
import java.sql.Timestamp;

public class StudentInfo implements Serializable{
	public String netID;
	public String fName;
	String lName;
	String sEmail;
	int compPanelNo;
	Timestamp [] panelTimeSpentArr;
	int noOfTimesVideoWatched[];
	int quizScore[];
	int quizAtempts[];
}
