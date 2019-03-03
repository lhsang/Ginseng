package com.lhsang.dashboard.utils;

import java.text.NumberFormat;
import java.util.Locale;

public class FormatUnit {
	public static String formatMoneyToVND(int money) {
		Locale localeVN = new Locale("vi", "VN");
		NumberFormat currencyVN = NumberFormat.getCurrencyInstance(localeVN);
		return currencyVN.format(money);
	}
}
