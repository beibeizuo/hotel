package weixin.hotel.utils.random;

public class RandomGUIDUtil {

	/**
	 * ����Ψһ������ַ���
	 * 
	 * @return
	 */
	//@Test
	public static String  generateKey() {
	/*	System.out.println( java.util.UUID.randomUUID());
         UUID x = java.util.UUID.randomUUID();
         System.out.println("x"+x);
         System.out.println("x"+x.);*/
		//����
		/*
		HashSet map=new HashSet();
		System.out.println(System.currentTimeMillis());
		for(int i=0;i<1000000;i++)
			map.add(new RandomGUID(true).valueAfterMD5.toUpperCase());
		System.out.println(map.size());
		System.out.println(System.currentTimeMillis());*/
		return new RandomGUID(true).valueAfterMD5.toUpperCase();
	}
}
