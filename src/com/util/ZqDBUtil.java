package com.util;


import java.sql.Clob;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/**
 * 数据库相关操作工具类
 */
public class ZqDBUtil {
	
	//将ResultSet 转成List<Map<String,String>>
	public static List<Map<String,String>> getHashMap(ResultSet rs) throws SQLException{

		List<Map<String,String>> dataTable = new ArrayList<Map<String,String>> ();
		ResultSetMetaData rsmd = rs.getMetaData();
		
		while(rs.next()){
			Map<String,String> item = new HashMap<String,String>();
			for(int i=1; i<=rsmd.getColumnCount();i++){
					if(rsmd.getColumnTypeName(i).equals("CLOB")){
							Clob colClob = rs.getClob(i);
							if(colClob == null){
								putToHash(item, rsmd.getColumnName(i).toLowerCase(), "");
							}else{
								putToHash(item, rsmd.getColumnName(i).toLowerCase(), getClobtoString(rs.getClob(i)));
							}
					}else{
						putToHash(item, rsmd.getColumnName(i).toLowerCase(), rs.getString(i));
					}
			}
			dataTable.add(item);
		}
		return dataTable;
	}
	
	private static void putToHash(Map<String,String> item,String key,String value){
			if(value!= null){
				item.put(key, value);
			}
	}
	
	private static String getClobtoString(Clob clob) throws SQLException{
		return clob.getSubString(((long)1),((int)(clob.length())));
	}
}
