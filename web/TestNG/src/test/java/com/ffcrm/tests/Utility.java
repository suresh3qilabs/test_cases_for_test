package com.ffcrm.tests;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.util.HashMap;
import java.util.Random;

public class Utility extends BaseClass{

	public static HashMap<String, String> monthsMapping = new HashMap<String, String>() {{
		put("1", "Jan");
		put("2", "Feb");
		put("3", "Mar");
		put("4", "Apr");
		put("5", "May");
		put("6", "Jun");
		put("7", "Jul");
		put("8", "Aug");
		put("9", "Sep");
		put("10", "Oct");
		put("11", "Nov");
		put("12", "Dec");
	}};
	public static void selctFromDD(WebElement Element, String option) {
		Select category = new Select(Element);
		category.selectByVisibleText(option);
	}

	public static int getRandomNumber() {
		Random rand = new Random();
		int randInt = rand.nextInt(1000);
		return randInt;
	}

}
