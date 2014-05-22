package com.fitlAAC.apis;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class UpdateStudentInfo {
	Serialization ser = new Serialization();
	StudentInfo st;
	String NetID;
	
	public UpdateStudentInfo(String netID){
		this.NetID=netID;
		try{
			st=(StudentInfo)ser.readJavaObject(this.NetID);
		}catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	//For Tracking
	Date date= new Date();
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
	
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
	
	public void updateStartTimeOfVideo(int PanelNo){
		//Fetching the current time and updating it on the Student info object
		
		st.videoStartTime[PanelNo]=format.format(cal.getTime());
		System.out.println("Start time of video on PanelNo:"+PanelNo+" time:"+st.videoStartTime[PanelNo]);
		doSerialize("updateStartTimeOfVideo");
	}
	public void updateEndTimeOfVideo(int PanelNo){
		//Fetching the current time and updating it on the Student info object
		st.videoEndTime[PanelNo]=format.format(cal.getTime());
		System.out.println("End time of video on PanelNo:"+PanelNo+" time:"+st.videoStartTime[PanelNo]);
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
		//d1 = format.parse(dateStart);
		long diffMinutes = 0;
		try {
			Date dstart=format.parse(st.videoStartTime[PanelNo]);
			Date dend=format.parse(st.videoEndTime[PanelNo]);
			
			long diff = dstart.getTime() - dend.getTime();
			 
			//long diffSeconds = diff / 1000 % 60;
			diffMinutes = diff / (60 * 1000) % 60;
			//long diffHours = diff / (60 * 60 * 1000) % 24;
			//long diffDays = diff / (24 * 60 * 60 * 1000);
 
			//System.out.print(diffDays + " days, ");
			//System.out.print(diffHours + " hours, ");
			//System.out.print(diffMinutes + " minutes, ");
			//System.out.print(diffSeconds + " seconds.");
			
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		if((Math.abs(diffMinutes)>2) && (Math.abs(diffMinutes)<8)){
			st.noOfTimesVideoWatched[PanelNo]++;
			System.out.println("Intro Video Wactched: "+st.noOfTimesVideoWatched[PanelNo]);
		}
		doSerialize("updateEndTimeOfVideo");
	}

	void updateQuizScore(int PanelNo, int score){
		st.quizScore[PanelNo]=score;
	}
	void updateQuizAttempts(int PanelNo){
		st.quizAtempts[PanelNo]++;
	}
	
	void doSerialize(String method)
	{
		try{
			if(ser.writeJavaObject(NetID, st)){
				System.out.println("Video info updated");
			}
		}catch(Exception e){
			System.out.println("Inside UpdateStudentInfo->Method Name:"+method );
			e.printStackTrace();
		}
	}
	
	
	
	
	
}
