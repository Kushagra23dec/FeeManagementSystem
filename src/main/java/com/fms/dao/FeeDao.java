package com.fms.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.fms.dto.FeeDto;
 

public class FeeDao {
private int a;

	public FeeDao() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
				System.out.println("Driver loaded Successfully...");
				}
		catch(ClassNotFoundException e) {
			System.out.println("Driver Not Loaded .......");
			return;
		}
		
	}
	
	
	public List<FeeDto> getStudentsDetail(String name,int rollno) {
		
		 
		
		List<FeeDto> fobj = new ArrayList<FeeDto>();
			 
		
		
		Connection con = null;
		Statement stmt = null;
		try {
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/feeman","root","Manas");
			 
		     stmt = con.createStatement();	
		
		}
		catch(Exception e) {
			System.out.println("Exception in con and stmt ");
		}
		
		try {
		     
		     String sql = "SELECT * FROM student;";
			ResultSet rs = stmt.executeQuery(sql);
			 
			while(rs.next()) {
				FeeDto u = new FeeDto();
				System.out.println("Testing Name: "+name);
   			//System.out.println("id: "+rs.getString(1)+" Name: "+rs.getString(2));
				 u.setRollno(Integer.parseInt(rs.getString("rollno")));
				 u.setsName(rs.getString("name"));
				 u.setfName(rs.getString("fname"));
				 u.setsPno(rs.getString("spno"));
				 u.setfPno(rs.getString("fpno"));
				 u.setTotalFee(Integer.parseInt(rs.getString("totalfee")));
				 u.setPaidFee(Integer.parseInt(rs.getString("paidfee")));
				 u.setDueFee(Integer.parseInt(rs.getString("duefee")));
			if(u.getRollno() == rollno && u.getsName().equals(name) == true ) {
				
				a = 1;
				fobj.add(u);
				break;
			 
				 
			}
			 
				 
			} 
				
			
			try {
				
				  
				
				con.close();
				
			}
			catch(Exception e2) {
				System.out.println("Close Exception ");
				 
			}
			
			return fobj;
			
			
		}
		catch(SQLException e) {
			System.out.println("Sql Exception" + e.getMessage());
			
		}
		
		try {
			con.close();
			
		}
		catch(Exception e2) {
			System.out.println("Close Exception ");
			 
		}
		 
 		
 		fobj = null;
 		a = 0 ;
		return fobj;
	
	
 
	
	}
	
	
	public int getA() {
		return a;
	}
	
	
	
	
}
