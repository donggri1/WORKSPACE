package days24;

import javax.swing.ButtonModel;

/**
 * @author LEE
 * @date 2024. 2. 1. - 오후 12:16:20
 * @subject
 * @content
 */
public class Ex04 {
	public static void main(String[] args) {
		
		Button callButton = new Button();
		callButton.setListener(new CallListener());
		callButton.touch();
		
		Button messButton = new Button();
		messButton.setListener(new MessageListener());
		messButton.touch();
		
	}//main
}//class
//중첩 인터페이스

class Button {
	// 필드
	OnClickListener listener;
	
	//Setter
	public void setListener(OnClickListener listener) {
		this.listener = listener;
	}

	void touch() {
		this.listener.onClick();
	}
	//중첩 인터페이스
	interface OnClickListener{
		// 상수, 추상 메서드 , dms메서드
		void onClick();
	}
	
}

// Button 클래스 안의 OnClickListener 인터페이스를 구현한 클래스 선언
class CallListener implements Button.OnClickListener{

	@Override
	public void onClick() {
		System.out.println("전화를 건다.");
		
	}
	
}

class MessageListener implements Button.OnClickListener{
	
	@Override
	public void onClick() {
		System.out.println("문자 메세지를 보낸다.");
		
	}
	
}








