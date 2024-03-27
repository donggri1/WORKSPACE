package days17;

/**
 * @author LEE
 * @date 2024. 1. 23. - 오후 2:49:31
 * @subject
 * @content
 */
public class Ex11 {
	
	public static void main(String[] args) {
		//		구문분석
		String parsingFile = "hello.xml";
		String docType = "xml";
		
		parseable parse = ParserManager.getParser(docType);
		
		
		
	}//main
}//class

interface parseable{
	void parse(String fileName);
	default void print() {
		System.out.println("각각 parser에서 인쇄기능 구현..");
	}
}

// XML 파일을 구문분석하느 클래스
class XMLParser implements parseable{

	@Override
	public void parse(String fileName) {
		System.out.println("> XML파일 구문 분석코딩...");
	}
	
}

//HTML파일을 구문분석하는 클래스
class HTMLParser implements parseable{

	@Override
	public void parse(String fileName) {
		System.out.println("> HTML파일 구문 분석코딩...");
	}
}

//Xml 파일-> XmlParser
//Html 파일-> HtmlParser
class ParserManager{
	public static parseable getParser( String docType) {
		if (docType.equals("xml")) {
			return new XMLParser();
		}else if(docType.equals("HTML")) {
			return new HTMLParser();
		}else {
				return null;
			}
		}}


