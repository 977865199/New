package com.ischoolbar.programmer.test;

public class Demo {

	public static void main(String[] args) {
		long startNumer = System.currentTimeMillis();
		String str = "������Ŷ�찤��һ��Ʊmmp�ڻ��ǿ���zhaoliyin�׵��Ӳ�����͸��shit";
		boolean flag = SensitiveWord.checkSenstiveWord(str);
		System.out.println("�ַ����ĳ���Ϊ:" + str.length());
		str = SensitiveWord.filterInfoAfter(str);
		System.out.println("�������дʻ�:" + flag);
		long endNumber = System.currentTimeMillis();
		System.out.println("����ʱ��Ϊ" + (endNumber - startNumer) + "ms");
		System.out.println("ת������ַ���Ϊ:\n" + str);
	}

}
