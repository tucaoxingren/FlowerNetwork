package com.flower.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 获取时间戳的工具类
 * @author zch
 *
 */

public class DateUtil {
	public static String getRandom() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		Date date = new Date();
		
		return sdf.format(date);		
	}

}
