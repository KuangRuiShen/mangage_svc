package com.main.page.utils;

import java.io.File;

/**
 * @author krs
 * @date 创建时间  2018年6月7日 下午6:31:03
 * @describe
 */
public class MyFileUtil {
	
	


	public  static boolean delAllFile(String path){
		boolean flag = false;
		File file = new File(path);
		if (!file.exists()) {  
	         return flag;  
	       }  
       if (!file.isDirectory()) {  
         return flag;         
       }         
      	
       String[] tempList = file.list();  
       File temp = null;  
       for (int i = 0; i < tempList.length; i++) {  
          if (path.endsWith(File.separator)) {  
             temp = new File(path + tempList[i]);  
          } else {  
              temp = new File(path + File.separator + tempList[i]);  
          }  
          if (temp.isFile()) {  
             temp.delete();  
          }  
          if (temp.isDirectory()) {  
             delAllFile(path + "/" + tempList[i]);//先删除文件夹里面的文件  
             delFolder(path + "/" + tempList[i]);//再删除空文件夹  
             flag = true;  
          }  
       }   		 	 
	return flag;
	}
	
	/**
	 * 删除文件夹,包括面文件
	 * @describe 
	 * @return
	 */
	public static void delFolder(String folderPath) {  
	     try {  
	        delAllFile(folderPath); //删除完里面所有内容  
	        String filePath = folderPath;  
	        filePath = filePath.toString();  
	        File myFilePath = new File(filePath);  
	        myFilePath.delete(); //删除空文件夹  
	     } catch (Exception e) {  
	       e.printStackTrace();   
	     }  
	}


}

	