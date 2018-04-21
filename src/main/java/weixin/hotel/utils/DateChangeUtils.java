package weixin.hotel.utils;

import org.junit.Test;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateChangeUtils {

	/**
	 * 将string类型转型为timeStamp string格式yyyy-mm-dd hh:mm:ss[.fffffffff]
	 * 
	 * @param date
	 * @return
	 */
	public static Timestamp stringToTimestamp(String date) {
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		try {
			ts = Timestamp.valueOf(date);
			// System.out.println(ts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ts;
	}

	/**
	 * tiamstamp类型转string
	 * 
	 * @param timeStamp
	 *
	 * @return yyyy-MM-dd
	 */
	public static String timestampToString(Timestamp timeStamp) {
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String tsStr = "";
		tsStr = sdf.format(timeStamp);
		return tsStr;
	}

	/**
	 * tiamstamp类型转string
	 * @param timeStamp
	 * @return
	 */
	public static String timestampToStringComplete(Timestamp timeStamp) {
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String tsStr = "";
		tsStr = sdf.format(timeStamp);
		return tsStr;
	}

	/**
	 * 计算字符串日期之间的差
	 * 
	 * @param smdate
	 *            yyyy-MM-dd
	 * @param bdate
	 *            yyyy-MM-dd
	 * @return
	 */
	public static int daysBetween(String smdate, String bdate) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		try {
			cal.setTime(sdf.parse(smdate));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long time1 = cal.getTimeInMillis();
		try {
			cal.setTime(sdf.parse(bdate));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long time2 = cal.getTimeInMillis();
		long between_days = (time2 - time1) / (1000 * 3600 * 24);

		return Integer.parseInt(String.valueOf(between_days));
	}

	/**
	 * 将string类型转型为string string格式yyyy/mm/dd
	 * @param date
	 * @return
	 */
	public static String stringToString(String date) {
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		try {
			
			/* System.out.println(date); */
			ts = Timestamp.valueOf(date);
			DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			String tsStr = "";
			tsStr = sdf.format(ts);
			return tsStr;
			// System.out.println(ts);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 计算字符串日期之间的差
	 * 
	 * @param smdate
	 *            yyyy-MM-dd HH:mm:ss
	 * @param bdate
	 *            yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static int daysBetween2(String smdate, String bdate) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();
		try {
			cal.setTime(sdf.parse(smdate));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long time1 = cal.getTimeInMillis();
		try {
			cal.setTime(sdf.parse(bdate));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long time2 = cal.getTimeInMillis();
		long between_days = (time2 - time1) / (1000 * 3600 * 24);

		return Integer.parseInt(String.valueOf(between_days));
	}

	/**
	 * 当前日期加N天
	 * @param today
	 * @param n
	 * @return
	 */
	public static String addNDay(String today,int n){   
        SimpleDateFormat f =  new SimpleDateFormat("yyyy-MM-dd");   
        try{   
            Date d = new Date(f.parse(today).getTime()+24*3600*1000*n);     
            return  f.format(d);   
        }catch(Exception ex) {   
            return "输入格式错误";     
        }   
    }

    public static String getYYYYMMDD(String date){
		String ret = date.substring(0,10);
		return ret;
	}
	@Test
	public void fun1() {
		String ts = stringToString("2017/2/1");
		String d1 = "2017-09-17 18:00:00.0";
		String d2 = "2017-03-02 12:00:00";
		System.out.println(getYYYYMMDD(d1));
	}
}
