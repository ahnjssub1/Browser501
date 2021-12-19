package ch11_el;

import java.util.HashMap;
import java.util.Map;

public class Thermometer267 {
	
	private Map<String,Double> locationCelsiusMap= new HashMap<String, Double>();

	public Double getCelsius(String location) {
		return locationCelsiusMap.get(location);
	}

	public void setCelsius(String location, Double value) {
		locationCelsiusMap.put(location, value);
	}
	
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if(celsius==null) {
			return null;
		}
		return celsius.doubleValue()*1.8+32.0;
	}

	//getInfo()를 el에서 사용시: info
	public String getInfo() {
		return "온도계 변환기 1.1";
	}
}
