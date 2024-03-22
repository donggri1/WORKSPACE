package days25;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;

public class Tr {
public static void main(String[] args) {
	
}
	 public String[] solution(int[] numbers, int[] our_score, int[] score_list) {
	        int num_student = numbers.length;
	        String[] answer = new String[num_student];

	        for (int i = 0; i < num_student; i++) {
	            if (our_score[numbers[i]+i] == score_list[i]) {
	                answer[i] = "Same";
	            }
	            else {
	                answer[i] = "Different";
	            }
	        }

	        return answer;
	    }
	}

