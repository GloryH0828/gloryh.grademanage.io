package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.lang.invoke.*;


public class JDBCUtil {
	
	
	public static final String dburl="jdbc:mysql://localhost:3306/grademanage?user=root&password=1234&useUnicode=true&characterEncoding=utf8";
	
	
	
	/////////////////////一下是老师的操作//////////////////////////////
	
	//实现教师数据的添加
    public boolean addteacher(String gno,String teachername,String pwd){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="insert into teacher set gno='"+gno+"',teachername='"+teachername+"',pwd='"+pwd+"'";
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    
    
    
    
    
    
    //实现教师数据的修改
    public boolean updateteacher(String gno,String teachername,String pwd,String teacherid){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="update teacher set gno='"+gno+"',teachername='"+teachername+"',pwd='"+pwd+"' where teacherid="+teacherid;
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    
    
    //获取所有的老师信息
    public List<Map<String,String>> listteacher(){
    	   	
    	List<Map<String,String>> data=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from teacher";
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			data=ZqDBUtil.getHashMap(rs);
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;

    }
    
    
    
    //获取某一个老师信息
    public Map<String,String> getteacher(String teacherid){
    	   	
    	Map<String,String> data=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from teacher where teacherid="+teacherid;
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			data=ZqDBUtil.getHashMap(rs).get(0);
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;

    }
    
    
  //实现教师数据的删除
    public boolean delteacher(String teacherid){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="delete from teacher where teacherid="+teacherid;
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    
    /////////////////以下是学生的操作/////////////////////////////////////
    
  //实现学生数据的添加
    public boolean addstudent(String sno,String studentname,String pwd,String major){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="insert into student set sno='"+sno+"',studentname='"+studentname+"',pwd='"+pwd+"',major='"+major+"'";
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    

    
    
    //实现学生数据的修改
    public boolean updatestudent(String sno,String studentname,String pwd,String studentid,String major){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="update student set sno='"+sno+"',studentname='"+studentname+"',pwd='"+pwd+"',major='"+major+"' where studentid="+studentid;
			System.out.println("sql:"+sql);
			
			
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    
    
    //获取所有的老师信息
    public List<Map<String,String>> liststudent(){
    	   	
    	List<Map<String,String>> data=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from student";
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			data=ZqDBUtil.getHashMap(rs);
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;

    }
    
    
    
    //获取某一个老师信息
    public Map<String,String> getstudent(String studentid){
    	   	
    	Map<String,String> data=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from student where studentid="+studentid;
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			data=ZqDBUtil.getHashMap(rs).get(0);
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;

    }
    
    
  //实现学生数据的删除
    public boolean delstudent(String studentid){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="delete from student where studentid="+studentid;
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    

    
    
/////////////////////以下是成绩的操作//////////////////////////////
	
	//实现成绩数据的添加
    public boolean addgrade(String course,String studentid,String teachername,String score){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			
			
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="insert into grade set course='"+course+"',studentid='"+studentid+"',teachername='"+teachername+"',score='"+score+"";
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    
    
    
    
    
    
    //实现教师数据的修改
    public boolean updategrade(String gno,String teachername,String pwd,String teacherid){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="update teacher set gno='"+gno+"',teachername='"+teachername+"',pwd='"+pwd+"' where teacherid="+teacherid;
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    
    
    
    //通用的查询列表的
    public List<Map<String,String>> commonlist(String sql){
    	   	
    	List<Map<String,String>> data=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			data=ZqDBUtil.getHashMap(rs);
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;

    }
    
    
    
    //获取某一个老师信息
    public Map<String,String> getgrade(String teacherid){
    	   	
    	Map<String,String> data=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from teacher where teacherid="+teacherid;
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			data=ZqDBUtil.getHashMap(rs).get(0);
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;

    }
    
    
  //实现教师数据的删除
    public boolean delgrade(String teacherid){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=dburl; 
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			//4,执行SQL语句
			String sql="delete from teacher where teacherid="+teacherid;
			int result=stmt.executeUpdate(sql);
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();	
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return flag;

    }
    
    
    
    
    ///////////////////以下是登陆的////////////////////////////
    //查询老师信息是否正确
    public Map<String,String> validateTeacher(String username,String password){
    	   	
    	Map<String,String> record=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from teacher where gno='"+username+"' and pwd='"+password+"'";
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			List<Map<String,String>> data=ZqDBUtil.getHashMap(rs);
			if(data.size()>0){
				record=data.get(0);
			}
			
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return record;

    }
    
    
    
    //查询学生信息是否正确
    public Map<String,String> validateStudent(String username,String password){
    	   	
    	Map<String,String> record=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from student where sno='"+username+"' and pwd='"+password+"'";
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			List<Map<String,String>> data=ZqDBUtil.getHashMap(rs);
			if(data.size()>0){
				record=data.get(0);
			}
			
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return record;

    }
    
    //查询教务人员信息是否正确
    public Map<String,String> validateAdmin(String username,String password){
    	   	
    	Map<String,String> record=null;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			String sql="select * from admin where username='"+username+"' and pwd='"+password+"'";
			ResultSet rs=stmt.executeQuery(sql);
			
			//把查询到的数据转化成List<Map<String,String>>
			List<Map<String,String>> data=ZqDBUtil.getHashMap(rs);
			if(data.size()>0){
				record=data.get(0);
			}
			
			
			//5,关闭连接
			rs.close();
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return record;

    }
    
    
    
    //通用的添加，修改和删除的 ,insert ,update,delete
    public boolean commonupdate(String sql){
    	   	
    	boolean flag=false;
    	try {
    		
    		//1,加载JDBC驱动
			Class.forName("com.mysql.jdbc.Driver");
			
			//2,建立连接
			String url=	dburl;		
			Connection con= DriverManager.getConnection(url);
			
			//3,创建Statement
			Statement stmt = con.createStatement(); 
			
			//4,执行SQL语句
			int result=stmt.executeUpdate(sql);
			
			
			if(result>0){
				flag=true;
			}
			
			//5,关闭连接
			stmt.close();
			con.close();
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;

    }
    
    
    

}
