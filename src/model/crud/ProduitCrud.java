package model.crud;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import model.Fonction;
import model.beans.Produit;
import model.daoFactory.ConnexionBase;

public class ProduitCrud {
	
	private Produit p;
	
	
	public Produit getP() {
		return p;
	}

	public void setP(Produit p) {
		this.p = p;
	}
	
	public ProduitCrud(Produit p) {
		super();
		this.p = p;
	}
	public ProduitCrud() {
		super();
	}

	public void insererProduit(Produit p) throws SQLException
	{
		Date date = new Date();
		String ajout = new SimpleDateFormat("yyyy-MM-dd").format(date);
		Object [] apidirina = {p.getNom_produit() , p.getPrix_produit() , p.getId_categorie() , p.getDescription() , p.getImage_produit() , p.getPage() ,   ajout , ajout  , p.getEst_suprimer()};
		Connection con = new ConnexionBase().connect();
		Statement stmt = con.createStatement();
		Fonction f = new Fonction();	
		try {
			f.InsertionTable(stmt, "produit", apidirina);	
		} finally {
			con.close();
			stmt.close();
		}
		
	}
	
	public  ArrayList<Produit> recupererProduit() throws SQLException
	{
		ArrayList<Produit> result = new ArrayList<Produit>();
		ConnexionBase conne= new ConnexionBase();
		Connection con = conne.connect();
		Statement stmt = con.createStatement();
		
		ArrayList<String>  arguments= new ArrayList <String>();
		ArrayList<String>  reference= new ArrayList <String>();
		
		if(p.getId_produit() !=0)
		{
			arguments.add(String.valueOf(p.getId_produit()));
			reference.add("id_produit");
		}
		
		if(p.getNom_produit() !="")
		{
			arguments.add(p.getNom_produit());
			reference.add("nom_produit");
		}
		if(p.getId_categorie() != 0)
		{
			arguments.add(String.valueOf(p.getId_categorie()));
			reference.add("id_categorie");
		}
		if(p.getPrix_produit() !=0 )
		{
			arguments.add(String.valueOf(p.getPrix_produit()));
			reference.add("prix_produit");
		}
		if(p.getDescription() != "")
		{
			arguments.add(p.getDescription());
			reference.add("description");
		}
		if(p.getImage_produit() != "")
		{
			arguments.add(p.getImage_produit());
			reference.add("image_produit");
		}
		
		if(p.getPage() !=0)
		{
			arguments.add(String.valueOf(p.getPage()));
			reference.add("page");
		}
		String req=reference.get(0) +" = '" + arguments.get(0) + "'";
		for(int i=1 ; i<arguments.size() ; i++ )
		{
			req= req + " AND " + reference.get(i) +" = '" + arguments.get(i) +"'";
		}
		
		try {
			String requette =  "SELECT * FROM produit WHERE " + req +"AND est_suprimer=0";
			System.out.println(requette);
			ResultSet rs =stmt.executeQuery(requette);
			
			while ( rs.next() ) {
				Produit p = new Produit(rs.getInt("id_produit"), rs.getString("nom_produit"), rs.getInt("prix_produit") , rs.getInt("id_categorie") , rs.getString("description") , rs.getString("image_produit"));
				p.setDescription(rs.getString("description"));
				p.setId_categorie(rs.getInt("id_categorie"));
				p.setId_produit(rs.getInt("id_produit"));
				p.setNom_produit(rs.getString("nom_produit"));
				p.setPrix_produit(rs.getInt("prix_produit"));
				p.setImage_produit(rs.getString("image_produit"));
		
				result.add(p);
	        }
			
		} finally {
			con.close();
			stmt.close();
		}
		
		return result;
	}
	
	public ArrayList<Produit> recupererToutlesProduit() throws SQLException
	{
		 ArrayList<Produit> retour  = new ArrayList<Produit>();
		 Connection con = new ConnexionBase().connect();
		 Statement stmt = con.createStatement();
		 String req="SELECT * FROM produit WHERE est_suprimer=0 ";
		 
		 ResultSet rs =stmt.executeQuery(req);
			
			while ( rs.next() ) {
				Produit p = new Produit(rs.getInt("id_produit") , rs.getString("nom_produit") , rs.getInt("prix_produit") , rs.getInt("id_categorie") , rs.getString("description") , rs.getString("image_produit"));	
				p.setDescription(rs.getString("description"));
				p.setId_categorie(rs.getInt("id_categorie"));
				p.setId_produit(rs.getInt("id_produit"));
				p.setNom_produit(rs.getString("nom_produit"));
				p.setPrix_produit(rs.getInt("prix_produit"));
				p.setImage_produit(rs.getString("image_produit"));
				p.setPage(rs.getInt("page"));
				p.setEst_suprimer(rs.getInt("est_suprimer"));
				retour.add(p);
	        }
		 
		 return retour;
	}
	
	public  ArrayList<Produit> recupererProduit(String contrainte , String valeur) throws SQLException
	{
		 ArrayList<Produit> retour  = new ArrayList<Produit>();
		 Connection con = new ConnexionBase().connect();
		 Statement stmt = con.createStatement();
		 
		 try {
				String requette =  "SELECT * FROM produit WHERE " + contrainte + " = '" + valeur +"'";
				System.out.println(requette);
				ResultSet rs =stmt.executeQuery(requette);
				
				while ( rs.next() ) {
					Produit m = new Produit(rs.getString("nom_produit") , rs.getInt("prix_produit") , rs.getInt("id_categorie") , rs.getString("description") , rs.getString("image_produit"));	
					retour.add(m);
		        }
				
			} finally {
				con.close();
				stmt.close();
			}
		 
		 return retour;
	}
	
	public  ArrayList<Produit> recupererToutProduit() throws SQLException
	{
		 ArrayList<Produit> retour  = new ArrayList<Produit>();
		 Connection con = new ConnexionBase().connect();
		 Statement stmt = con.createStatement();
		 
		 try {
				String requette =  "SELECT * FROM produit WHERE est_suprimer=0 ";
				System.out.println(requette);
				ResultSet rs =stmt.executeQuery(requette);
				
				while ( rs.next() ) {
					Produit m = new Produit(rs.getString("nom_produit") , rs.getInt("prix_produit") , rs.getInt("id_categorie") , rs.getString("description") , rs.getString("image_produit"));	
					retour.add(m);
		        }
				
			} finally {
				con.close();
				stmt.close();
			}
		 
		 return retour;
	}
	
	public void  suprimerProduit(Produit p) throws SQLException // niova mila manome produit p 
	{
		ConnexionBase con = new ConnexionBase();
		Connection connect = con.connect();
		Statement stmt = null;
		try {
			stmt=connect.createStatement();
			String requette =  "UPDATE produit SET est_suprimer = 1  WHERE id_produit = " + p.getId_produit();
			stmt.executeUpdate(requette);
		} finally {
			connect.close();
			stmt.close();
		}
	}
	
	public void updateProduit() throws SQLException
	{
		ConnexionBase con = new ConnexionBase();
		Connection connect = con.connect();
		Statement stmt = null;
		Date date = new Date();
		String ajout = new SimpleDateFormat("yyyy-MM-dd").format(date);
		p.setDate_modif(ajout);
		
		ArrayList<String>  arguments= new ArrayList <String>();
		ArrayList<String>  reference= new ArrayList <String>();
		if(p.getNom_produit() !="")
		{
			arguments.add(p.getNom_produit());
			reference.add("nom_produit");
		}
		if(p.getId_categorie() != 0)
		{
			arguments.add(String.valueOf(p.getId_categorie()));
			reference.add("id_categorie");
		}
		if(p.getPrix_produit() !=0 )
		{
			arguments.add(String.valueOf(p.getPrix_produit()));
			reference.add("prix_produit");
		}
		if(p.getDescription() != "")
		{
			arguments.add(p.getDescription());
			reference.add("description");
		}
		if(p.getImage_produit() != "")
		{
			arguments.add(p.getDescription());
			reference.add("image_produit");
		}
		
		String req=reference.get(0) +" = '" + arguments.get(0) + "'";
		for(int i=1 ; i<arguments.size() ; i++ )
		{
			req= req + " , " + reference.get(i) +" = '" + arguments.get(i) +"'";
		}
		
		try {
			stmt=connect.createStatement();
			String sql =  "UPDATE produit " + "SET " + req + " WHERE id_produit = " + p.getId_produit();
			System.out.println(sql);
		    stmt.executeUpdate(sql);        
		} finally {
			connect.close();
			stmt.close();
		}
	}
	
	public ArrayList<Integer> recupererPAge() throws SQLException
	{
		ConnexionBase con = new ConnexionBase();
		Connection connect = con.connect();
		Statement stmt = null;
		
		ArrayList<Integer> retour = new ArrayList<Integer> ();
		
		try {
			stmt=connect.createStatement();
			String sql =  "SELECT MAX(page) FROM produit WHERE est_suprimer=0";
			System.out.println(sql);
			ResultSet rs =stmt.executeQuery(sql);    
			
			while ( rs.next() ) {
				
				retour.add(rs.getInt(1));
	        }
			
		} finally {
			connect.close();
			stmt.close();
		}
		
		return retour;
	}
	
	public ArrayList<Produit> rechercheAvancer() throws SQLException
	{
		ArrayList<Produit> result = new ArrayList<Produit>();
		ConnexionBase conne= new ConnexionBase();
		Connection con = conne.connect();
		Statement stmt = con.createStatement();
		
		ArrayList<Object>  arguments= new ArrayList <Object>();
		ArrayList<String>  reference= new ArrayList <String>();
		
		if(p.getId_produit() !=0)
		{
			arguments.add(String.valueOf(p.getId_produit()));
			reference.add("id_produit");
		}
		
		if(p.getNom_produit() !="")
		{
			arguments.add(p.getNom_produit());
			reference.add("nom_produit");
		}
		if(p.getId_categorie() != 0)
		{
			arguments.add(String.valueOf(p.getId_categorie()));
			reference.add("id_categorie");
		}
		if(p.getPrix_produit() !=0 )
		{
			arguments.add(String.valueOf(p.getPrix_produit()));
			reference.add("prix_produit");
		}
		if(p.getDescription() != "")
		{
			arguments.add(p.getDescription());
			reference.add("description");
		}
		if(p.getImage_produit() != "")
		{
			arguments.add(p.getImage_produit());
			reference.add("image_produit");
		}
		if(p.getPage() != 0)
		{
			arguments.add(p.getPage());
			reference.add("page");
		}
		
		String req=reference.get(0) +" = '" + arguments.get(0) + "'";
		for(int i=1 ; i<arguments.size() ; i++ )
		{
			req= req + " AND " + reference.get(i) +" = '" + arguments.get(i) +"'";
		}
		
		try {
			String requette =  "SELECT * FROM produit WHERE nom_produit LIKE '%"+ p.getNom_produit() + "%' AND id_categorie = " +p.getId_categorie() + " LIMIT 6";
			System.out.println(requette);
			ResultSet rs =stmt.executeQuery(requette);
			
			while ( rs.next() ) {
				Produit p = new Produit(rs.getInt("id_produit"), rs.getString("nom_produit"), rs.getInt("prix_produit") , rs.getInt("id_categorie") , rs.getString("description") , rs.getString("image_produit"));
				p.setDescription(rs.getString("description"));
				p.setId_categorie(rs.getInt("id_categorie"));
				p.setId_produit(rs.getInt("id_produit"));
				p.setNom_produit(rs.getString("nom_produit"));
				p.setPrix_produit(rs.getInt("prix_produit"));
				p.setImage_produit(rs.getString("image_produit"));
				p.setPage(rs.getInt("page"));
				p.setEst_suprimer(rs.getInt("est_suprimer"));
				result.add(p);
	        }
			
		} finally {
			con.close();
			stmt.close();
		}
		
		return result;
	}
	
	public int recupererPage(int categorie) throws SQLException
	{
		int retour = 1;
		ConnexionBase conne= new ConnexionBase();
		Connection con = conne.connect();
		Statement stmt = con.createStatement();
		
		String requette =  "SELECT MAX(page) FROM produit WHERE id_categorie = "+ categorie +" AND est_suprimer=0";
		System.out.println(requette);
		ResultSet rs =stmt.executeQuery(requette);
		while ( rs.next() ) {
			retour =rs.getInt(1);
		}
		return retour;
	}
	
	public int pagination(int categorie) throws SQLException
	{
		int retour = 1;
		ConnexionBase conne= new ConnexionBase();
		Connection con = conne.connect();
		Statement stmt = con.createStatement();
		int page = recupererPage(categorie);
		
		String requette =  "SELECT COUNT('page') FROM produit WHERE page = " + page +" AND id_categorie = " + categorie;
		System.out.println(requette);
		ResultSet rs =stmt.executeQuery(requette);
		while ( rs.next() ) {
			retour =rs.getInt(1);
		}
		
		return retour;
	}
	
	public ArrayList<Produit>recupererNouveauProduit() throws SQLException
	{
		ArrayList<Produit> retour = new ArrayList<Produit>();
		ConnexionBase conne= new ConnexionBase();
		Connection con = conne.connect();
		Statement stmt = con.createStatement();
		
		String requette =  "SELECT * FROM produit WHERE est_suprimer=0 ORDER BY id_produit DESC LIMIT 6";
		System.out.println(requette);
		ResultSet rs =stmt.executeQuery(requette);
		while ( rs.next() ) {
			Produit p = new Produit(rs.getInt("id_produit"), rs.getString("nom_produit"), rs.getInt("prix_produit") , rs.getInt("id_categorie") , rs.getString("description") , rs.getString("image_produit"));
			p.setDescription(rs.getString("description"));
			p.setId_categorie(rs.getInt("id_categorie"));
			p.setId_produit(rs.getInt("id_produit"));
			p.setNom_produit(rs.getString("nom_produit"));
			p.setPrix_produit(rs.getInt("prix_produit"));
			p.setImage_produit(rs.getString("image_produit"));
			p.setPage(rs.getInt("page"));
			p.setEst_suprimer(rs.getInt("est_suprimer"));
			retour.add(p);
		}
		
		return retour;
	}
}
