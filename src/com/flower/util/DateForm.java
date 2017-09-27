package com.flower.util;

public class DateForm {
	public String getHMM(String str){

		String fin = str.substring(0, 4)+"年";//年
		fin = fin+str.substring(4, 6)+"月";//月
		fin = fin+str.substring(6, 8)+"日     ";//日
		fin = fin+str.substring(8, 10)+":";//时
		fin = fin+str.substring(10, 12)+":";//分
		fin = fin+str.substring(12, 14);//秒		
		return fin;
		
	}/*
	public static void main(String[] args) {
		DateForm aa = new DateForm();
		String bb = "20170626025626213"; 
		bb = aa.getHMM(bb);
		System.out.println(bb);
		
	}*/

}
