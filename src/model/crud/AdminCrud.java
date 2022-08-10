package model.crud;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.beans.Admin;
import model.daoFactory.ConnexionBase;

public class AdminCrud {
	
	
	public  ArrayList<Admin> recupererAdmin(Admin m) throws SQLException
	{
		ArrayList<Admin> result = new ArrayList<Admin>();
		Connection con = new ConnexionBase().connect();
		Statement stmt = con.createStatement();
		
		ArrayList<String>  arguments= new ArrayList <String>();
		ArrayList<String>  reference= new ArrayList <String>();
		
		if(m.getPseudo() !=null)
		{
			arguments.add(m.getPseudo());
			reference.add("pseudo");
		}
		
		if(m.getMdp() !=null)
		{
			arguments.add(m.getMdp());
			reference.add("mdp");
		}
		
		String req=reference.get(0) +" = '" + arguments.get(0) + "'";
		for(int i=1 ; i<arguments.size() ; i++ )
		{
			req= req + " AND " + reference.get(i) +" = '" + arguments.get(i) +"'";
		}
		
		try {
			String requette =  "SELECT * FROM admin WHERE " + req;
			System.out.println(requette);
			ResultSet rs =stmt.executeQuery(requette);
			
			while ( rs.next() ) {
				Admin a = new Admin(rs.getInt("id") , rs.getString("pseudo") ,rs.getString("mdp") );	
				result.add(a);
	        }
			
		} finally {
			con.close();
			stmt.close();
		}
		
		return result;
	}
}
