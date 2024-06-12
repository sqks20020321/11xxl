package com.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
/**
 * 验证码生成类
 */
import java.util.Random;

public class CheckCode {

	public String getCheckCode(){
		Random random = new Random();
		String sRand="";
		for (int i=0;i<6;i++){
	    String rand=String.valueOf(random.nextInt(10));
	    sRand+=rand;
		}
	    return sRand;
	}
	
	public String OrderNumber(){
		Random random = new Random();
		String sRand="DD";
		for (int i=0;i<8;i++){
		String rand=String.valueOf(random.nextInt(10));
	    sRand+=rand;
		}
	    return sRand;
	}

    public static String formatDateToString(Date date,
            String format) throws ParseException {
        if (date == null) {
            return null;
        }
        SimpleDateFormat df = new SimpleDateFormat(format);
        String str = df.format(date);
        return str;
    }

    /**
     * 获取随机编号
     * @author 
     * @title: getBh
     * @date 2024年3月19日 下午2:39:37
     * @param request
     * @return String
     */
    public static String getBh() {
        String[] beforeShuffle = new String[] { "1", "2", "3", "4", "5", "6",
                "7", "8", "9", "10" };
        List list = Arrays.asList(beforeShuffle);
        Collections.shuffle(list);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i));
        }
        String afterShuffle = sb.toString();
        String number = afterShuffle.substring(5, 9);
        return number;
    }
}
