package com.ischoolbar.programmer.test;

public class Demo {

	public static void main(String[] args) {
		long startNumer = System.currentTimeMillis();
		String str = "玉蒲团哦检挨了一炮票mmp口还是看黑zhaoliyin白电视不娱乐透视shit";
		boolean flag = SensitiveWord.checkSenstiveWord(str);
		System.out.println("字符串的长度为:" + str.length());
		str = SensitiveWord.filterInfoAfter(str);
		System.out.println("含有敏感词汇:" + flag);
		long endNumber = System.currentTimeMillis();
		System.out.println("消耗时间为" + (endNumber - startNumer) + "ms");
		System.out.println("转换后的字符串为:\n" + str);
	}

}
