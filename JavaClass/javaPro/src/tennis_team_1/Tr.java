package tennis_team_1;

import java.util.ArrayList;

public class Tr{
	
	public void k(){
		
	
	
	
	int p= 1;
	int set = 5;
	public static int [][] scoreArr = new int [2][5]; //2팀 5세트까지 점수 저장
	static int plus = 0;

	// 2팀과 3개의 점수 체계(포인트, 게임, 세트)
	static int [][] scores1 = new int[2][4];
	DispScoreBoard dp = new DispScoreBoard();
	public static ArrayList <String> team1totalscore1= new ArrayList<String>();
	public static ArrayList <String> team2totalscore1= new ArrayList<String>();
	String []  point = {"0", "15", "30", "40", "WIN"};
	
	
	scores[p-1][0]++;
	scoreArr[p-1][0]++;
	
	if (scores[p-1][0]==3&&scores[2-p][0]==3) {
		playDuce(set);	
	}
	
	if (scores[p-1][0]>3) {
		team1totalscore1.add(point[scores[p-1][0]]);
		team1totalscore1.add(point[scores[p-1][0]]);
		scores[p-1][0]=0;scores[p-1][0]=0;
		
		
	}
	
	
	//plusGame
	
	
	
	
	}	
}
