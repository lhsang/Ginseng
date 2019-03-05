package com.lhsang.dashboard.utils;

import java.text.NumberFormat;
import java.util.Locale;

public class FormatUnit {
	public static String formatMoneyToVND(int money) {
		Locale localeVN = new Locale("vi", "VN");
		NumberFormat currencyVN = NumberFormat.getCurrencyInstance(localeVN);
		return currencyVN.format(money);
	}
	
	public static String nearestWord(int pos,String str) {
		int r=pos;
		while(r<str.length()-1) {
			if(Character.isLetterOrDigit(str.charAt(r))){
				r+=1;
			}else break;
		}
		return str.substring(0, r);
	}
}
