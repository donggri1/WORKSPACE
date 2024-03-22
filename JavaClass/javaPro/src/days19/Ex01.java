package days19;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Arrays;
import java.util.Collections;

public class Ex01 {

	public static void main(String[] args) {

		String fileName = "SS20_Team.txt";
		String [] teamMember= null;// 나의 팀원들을 저장하는
		
		String key = "user.dir";
		String userDir = System.getProperty(key);
		//System.out.println(userDir);
		String path = String.format("%s\\src\\days19\\%s", userDir,fileName);
		//System.out.println( path );
		
		String myName = "이동찬";
		String teamLine = null;
		String teamMemberLine =null;
		String teamLeader = null;
		String regex = "\\s*,\\s*";
		
		
		try (FileReader fr =new FileReader(path);
			BufferedReader br = new BufferedReader(fr);){
			
			while ((teamLine = br.readLine())!=null) {
				teamMemberLine = br.readLine();
//				System.out.printf("[%s] : [%s]\n",teamLine,teamMemberLine);
				if(teamMemberLine.contains(myName)) {
					System.out.printf("[%s] : [%s]\n",teamLine,teamMemberLine);
					
					 
					teamMember = teamMemberLine.split(regex);
					// 박우현(팀장)
					teamLeader = teamMember[0].replace("(팀장)", "");// 팀장이라는 글을 제거하겠다는 의도
					
					// 나머지 팀원들 내림차순으로 정렬
					String  [] temp = new String [teamMember.length-1];
					System.arraycopy(teamMember, 1, temp, 0, teamMember.length-1);
					//System.out.println("temp : "+ Arrays.toString(temp));
					Arrays.sort(temp,Collections.reverseOrder());
					//break;//내이름까지만 확인하고 나오기
					System.arraycopy(temp, 0, teamMember, 1, temp.length);
					System.out.println(Arrays.toString(teamMember));
					break;					
				}//if
			}//while
			//출력
			String output = "<ul>\n"
					+ "  <li class=\"leader\">";
			System.out.printf("[%s]\n",teamLine);
			output +=String.join("</li>\n  <li>", teamMember);
			output +="</li>\r\n"
					+ "</ul>";
			
			System.out.println(output);
			
		} catch (Exception e) {
			e.printStackTrace();
		}//try	
		
		

	}//main

}//class
