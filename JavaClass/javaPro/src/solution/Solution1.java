package solution;

import java.lang.reflect.Array;
import java.util.Arrays;


public class Solution1 {
    public static void main(String[] args) {
        String str1 = "aaaaa";
        String str2 = "bbbbb";
        String answer = solution(str1, str2);
        System.out.println(answer);
    }

    
    
    public static String solution(String str1, String str2) {
        StringBuilder result = new StringBuilder(); // 결과 문자열을 저장할 StringBuilder 객체 생성
        int sw = 0;

        char[] Arr1 = str1.toCharArray();
        char[] Arr2 = str2.toCharArray();

        for (int i = 0; i < Arr1.length + Arr2.length; i++) {
            if (sw == 0) {
                result.append(Arr1[i]);
                sw = -1;
            } else if (sw != 0) {
                result.append(Arr2[i]);
                sw = 0;
            }
        }

        return result.toString();
    }
}