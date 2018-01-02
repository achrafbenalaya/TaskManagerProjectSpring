package tn.iit.task.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Utils {

	@SuppressWarnings("deprecation")
	public static Date convertor(String date) {
		if (date.length() == 10) {
			try {
				System.out.println("ME.convertor "+date);
				char[] charArray = date.toCharArray();
				char[] months = { charArray[0], charArray[1] };
				char[] days = { charArray[3], charArray[4] };
				char[] years = { charArray[6], charArray[7], charArray[8], charArray[9] };
				String daysString = new String(days);
				String monthsString = new String(months);
				String yearsString = new String(years);
				int daysInt = Integer.parseInt(daysString);
				int monthsInt = Integer.parseInt(monthsString);
				int yearsInt = Integer.parseInt(yearsString);
				return new Date(yearsInt - 1900, monthsInt, daysInt);
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("ME.Utils " + e.getMessage() + "****");
				return null;
			}
		} else {
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date dateD = format.parse(date);
				return dateD;
			} catch (ParseException e) {
				System.out.println("ME.Utils " + e.getMessage() + "****");
				return null;
			}
		}
	}

	public static Date StringToDate(String date) {
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			Date dateD = format.parse(date);
			return dateD;
		} catch (ParseException e) {
			System.out.println("ME.Utils " + e.getMessage() + "****");
			return null;
		}
	}

	public static Date StringToDateSecend(String date) {
		DateFormat format = new SimpleDateFormat("dd-MM-yyyy");
		try {
			Date dateD = format.parse(date);
			return dateD;
		} catch (ParseException e) {
			System.out.println("ME.Utils " + e.getMessage() + "****");
			return null;
		}
	}

}
