package days16;

import days14.Tv;

/**
 * @author LEE
 * @date 2024. 1. 22. - 오전 11:29:28
 * @subject
 * @content
 */
public class Ex04 {

	public static void main(String[] args) {

		// 기존 Tv
		// 자막 기능 0 + 새로운 Tv 필요하다.
		CaptionTv ctv =new CaptionTv();
		ctv.channel =11;
		ctv.channelDown();
		System.out.println(ctv.channel);
		ctv.dispCaption("hello World~");
		ctv.caption = true;// 자막 on
		ctv.dispCaption("Hi~");
		
		

	}//main

}//class

class CaptionTv extends Tv{
	
	//필드
	boolean caption; //자막기능 on(true)/off(false)
	
	//메서드
	void dispCaption(String text) {
		if(this.caption) {
			System.out.println(text);
		}
	}
}