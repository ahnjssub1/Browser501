package ch11_el;

import java.text.DecimalFormat;
//EL 에서 static() 사용하기
public class FormatUtil {
	public static String number(long number, String pattern) {
		DecimalFormat format= new DecimalFormat(pattern);
		return format.format(number); //123456=>123,456
	}
}
