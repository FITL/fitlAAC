package com.fitlAAC.apis;

import java.sql.Timestamp;

public class UpdateStudentInfo {
	Serialization ser = new Serialization();
	StudentInfo st;
	String NetID;
	
	UpdateStudentInfo(String netID){
		this.NetID=netID;
		try{
			st=(StudentInfo)ser.readJavaObject(this.NetID);
		}catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	void updateNetID(String netID)
	{
		st.netID= netID;
	}
	void updateName(String fName, String lName){
		st.fName=fName;
		st.lName=lName;
	}
	void updateCompPanelNo(int compPanelNo){
		st.compPanelNo=compPanelNo;
	}
	void updateTimeSpent(Timestamp Time,int PanelNo){
		st.panelTimeSpentArr[PanelNo]=Time;
	}
	void updateNoOfTimesVideoWatched(int PanelNo){
		st.noOfTimesVideoWatched[PanelNo]++;
	}
	void updateQuizScore(int PanelNo, int score){
		st.quizScore[PanelNo]=score;
	}
	void updateQuizAttempts(int PanelNo){
		st.quizAtempts[PanelNo]++;
	}
}
