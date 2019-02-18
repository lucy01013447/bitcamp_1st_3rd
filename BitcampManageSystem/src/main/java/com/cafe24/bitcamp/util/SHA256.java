package com.cafe24.bitcamp.util;

import java.security.MessageDigest;

public class SHA256 {
	//SHA256을 이용하여 헤시값을 구하는 메소드
	public static String getSHA256(String input) {
		StringBuilder result = new StringBuilder();
		try {
			MessageDigest digest = MessageDigest.getInstance("SHA-256");
			//해킹의 위협에 대비하여 salt값이 필요하다
			byte[] salt = "It is my Salt by OSS".getBytes();
			digest.reset();
			digest.update(salt);
			
			//해시를 적용한 값을 보관
			byte[] chars= digest.digest(input.getBytes("UTF-8"));
			//문자열 형태로 변환
			for (int i = 0; i < chars.length; i++) {
				String hex = Integer.toHexString(0xff & chars[i]);
				if(hex.length() == 1)
					result.append("0");
				result.append(hex);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return result.toString();
	}
}
