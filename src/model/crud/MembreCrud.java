package model.crud;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Fonction;
import model.beans.Membre;
import model.daoFactory.ConnexionBase;

public class MembreCrud {
	private Membre m ;
	
	public Membre getM() {
		return m;
	}

	public void setM(Membre m) {
		this.m = m;
	}
	
	public MembreCrud(Membre m) {
		super();
		this.m = m;
	}
	public MembreCrud() {
		super();
	}
	
	public void insererMembre() throws SQLException
	{
		Connection con = new ConnexionBase().connect();
		Statement stmt = con.createStatement();
		Fonction f = new Fonction();
		
		Object [] apidirina= {m.getEmail() , m.getNom() , m.getMdp()};
		
		try {
			f.InsertionTable(stmt, "membre", apidirina);	
		} finally {
			con.close();
			stmt.close();
		}
	}
	
	public  ArrayList<Membre> recupererMembre() throws SQLException
	{
		ArrayList<Membre> result = new ArrayList<Membre>();
		Connection con = new ConnexionBase().connect();
		Statement stmt = con.createStatement();
		
		ArrayList<String>  arguments= new ArrayList <String>();
		ArrayList<String>  reference= new ArrayList <String>();
		
		if(m.getNom() !=null)
		{
			arguments.add(m.getNom());
			reference.add("nom");
		}
		
		if(m.getEmail() !=null)
		{
			arguments.add(m.getEmail());
			reference.add("email");
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
			String requette =  "SELECT * FROM membre WHERE " + req;
			System.out.println(requette);
			ResultSet rs =stmt.executeQuery(requette);
			
			while ( rs.next() ) {
				Membre m = new Membre(rs.getInt("id_membre") , rs.getString("nom") , rs.getString("mdp") , rs.getString("email"));	
				result.add(m);
	        }
			
		} finally {
			con.close();
			stmt.close();
		}
		
		return result;
	}
	
	public  ArrayList<Membre> recupererMembre(String contrainte , String valeur) throws SQLException
	{
		 ArrayList<Membre> retour  = new ArrayList<Membre>();
		 Connection con = new ConnexionBase().connect();
		 Statement stmt = con.createStatement();
		 
		 try {
				String requette =  "SELECT * FROM membre WHERE " + contrainte + " = '" + valeur +"'";
				System.out.println(requette);
				ResultSet rs =stmt.executeQuery(requette);
				
				while ( rs.next() ) {
					Membre m = new Membre(rs.getInt("id_membre") , rs.getString("nom") , rs.getString("mdp") , rs.getString("email"));	
					retour.add(m);
		        }
				
			} finally {
				con.close();
				stmt.close();
			}
		 
		 return retour;
	}
	
	public void updateMembre() throws SQLException
	{
		ConnexionBase con = new ConnexionBase();
		Connection connect = con.connect();
		Statement stmt = null;
		
		ArrayList<String>  arguments= new ArrayList <String>();
		ArrayList<String>  reference= new ArrayList <String>();
		
		if(m.getNom() !=null)
		{
			arguments.add(m.getNom());
			reference.add("nom");
		}
		
		if(m.getEmail() !=null)
		{
			arguments.add(m.getEmail());
			reference.add("email");
		}
		if(m.getMdp() !=null)
		{
			arguments.add(m.getMdp());
			reference.add("mdp");
		}
		
		String req=reference.get(0) +" = '" + arguments.get(0) + "'";
		for(int i=1 ; i<arguments.size() ; i++ )
		{
			req= req + " , " + reference.get(i) +" = '" + arguments.get(i) +"'";
		}
		
		try {
			stmt=connect.createStatement();
			String sql =  "UPDATE membre " + "SET " + req + " WHERE id_membre = " + m.getId_membre();
			System.out.println(sql);
		    stmt.executeUpdate(sql);        
		} finally {
			connect.close();
			stmt.close();
		}
	}
}
