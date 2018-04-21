package weixin.hotel.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateTransformer {

	public static void main(String[] args) {
		try {
			DateTransformer.plusDay(1, "2017-08-25 18:00:00");
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 指定日期加上天数后的日期
	 * 
	 * @param num
	 *            为增加的天数
	 * @param newDate
	 *            创建时间
	 * @return
	 * @throws ParseException
	 */
	public static String plusDay(int num, String newDate) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date currdate = format.parse(newDate);
		System.out.println("现在的日期是：" + currdate);
		
		
		Date endDate = addDate(currdate, num); // 指定日期加上20天
		
		
	
		String enddate = format.format(endDate);
		System.out.println("增加天数以后的日期：" + enddate + " 18:00:00");
		return enddate;
	}
	
	public static Date addDate(Date date,long day) throws ParseException {
		 long time = date.getTime(); // 得到指定日期的毫秒数
		 day = day*24*60*60*1000; // 要加上的天数转换成毫秒数
		 time+=day; // 相加得到新的毫秒数
		 return new Date(time); // 将毫秒数转换成日期
	}

	// 当前日期加上天数：

	/**
	 * 当前日期加上天数后的日期
	 * 
	 * @param num
	 *            为增加的天数
	 * @return
	 */
	public static String plusDay2(int num) {
		Date d = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String currdate = format.format(d);
		System.out.println("现在的日期是：" + currdate);

		Calendar ca = Calendar.getInstance();
		ca.add(Calendar.DATE, num);// num为增加的天数，可以改变的
		d = ca.getTime();
		String enddate = format.format(d);
		System.out.println("增加天数以后的日期：" + enddate);
		return enddate;
	}

}
