package com.flower.test;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

public class FileCopyTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String webPath = "D:\\Program Files\\apache-tomcat-7.0.42\\"
				+ "webapps\\flower\\upload\\g5.jpg";
		String filePath = "D:\\Program Files\\apache-tomcat-7.0.42\\"
				+ "webapps\\flower\\image\\g5.jpg";
		File dest = new File(webPath);
	    File source = new File(filePath);//被复制
	    try {
			Files.copy(source.toPath(),dest.toPath());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
