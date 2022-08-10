package model.crud;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Fonction;
import model.beans.Panier;
import model.beans.Produit;
import model.daoFactory.ConnexionBase;

public class PanierCrud {
	private Panier pan ;
	
	public Panier getPan() {
		return pan;
	}

	public void setPan(Panier pan) {
		this.pan = pan;
	}
	
	public PanierCrud(Panier pan) {
		super();
		this.pan = pan;
	}
	
	public PanierCrud() {
		super();
	}
	
	public void ajouterPanier() throws SQLException
	{
		Connection con = new ConnexionBase().connect();
		Statement stmt = con.createStatement();
		Fonction f = new Fonction();
		
		Object [] apidirina= {pan.getId_produit() , pan.getId_membre() , pan.getQuantiter_produit(),pan.getEst_valide(),pan.getEst_suprimer()};
		
		try {
			f.InsertionTable(stmt, "panier", apidirina);	
		} finally {
			con.close();
			stmt.close();
		}
	}
	
	public ArrayList<Panier> recupererPAnier() throws SQLException
	{
		Panier pan=new Panier();
		pan.setEst_suprimer(2);
		pan.setEst_valide(2);
		ArrayList<Panier> retour = new ArrayList<Panier>();
		Connection con = new ConnexionBase().connect();
		Statement stmt = con.createStatement();
		
		ArrayList<String>  arguments= new ArrayList <String>();
		ArrayList<String>  reference= new ArrayList <String>();
		
		if(pan.getId_membre() !=0)
		{
			arguments.add(String.valueOf(pan.getId_membre()));
			reference.add("id_membre");
		}
		
		if(pan.getId_panier() !=0)
		{
			arguments.add(String.valueOf(pan.getId_panier()));
			reference.add("id_panier");
		}
		
		if(pan.getId_produit() !=0)
		{
			arguments.add(String.valueOf(pan.getId_produit()));
			reference.add("id_produit");
		}
		
		if(pan.getEst_valide() !=0)
		{
			arguments.add(String.valueOf(pan.getEst_valide()));
			reference.add("est_valider");
		}
		
		if(pan.getEst_suprimer() !=0)
		{
			arguments.add(String.valueOf(pan.getEst_suprimer()));
			reference.add("est_suprimer");
		}
		
		String req=reference.get(0) +" = '" + arguments.get(0) + "'";
		for(int i=1 ; i<arguments.size() ; i++ )
		{
			req= req + " AND " + reference.get(i) +" = '" + arguments.get(i) +"'";
		}
		
		try {
			String requette =  "SELECT * FROM panier WHERE " + req;
			//System.out.println(requette);
			ResultSet rs =stmt.executeQuery(requette);
			
			while ( rs.next() ) {
				Panier p = new Panier();
				p.setId_produit(rs.getInt("id_produit"));
				p.setId_panier(rs.getInt("id_panier"));
				p.setId_membre(rs.getInt("id_membre"));
				p.setEst_suprimer(rs.getInt("est_suprimer"));
				p.setEst_valide(rs.getInt("est_valider"));
				
				Produit prd = new Produit();
				prd.setId_produit(rs.getInt("id_produit"));
				ProduitCrud prcrud = new ProduitCrud(prd);
				if(prcrud.recupererProduit().size()>0)
				{
					retour.add(p);
				}
	        }
			
		} finally {
			con.close();
			stmt.close();
		}
		
		return retour;
	}
	
	public void updatePanier(String references) throws SQLException
	{
		ConnexionBase con = new ConnexionBase();
		Connection connect = con.connect();
		Statement stmt = null;
		
		ArrayList<String>  arguments= new ArrayList <String>();
		ArrayList<String>  reference= new ArrayList <String>();
		if(pan.getId_produit() !=0)
		{
			arguments.add(String.valueOf(pan.getId_produit()));
			reference.add("id_produit");
		}
		if(pan.getId_membre() != 0)
		{
			arguments.add(String.valueOf(pan.getId_membre()));
			reference.add("id_membre");
		}
		if(pan.getQuantiter_produit() !=0 )
		{
			arguments.add(String.valueOf(pan.getQuantiter_produit()));
			reference.add("quantiter_produit");
		}
		if(pan.getEst_valide() !=0 )
		{
			arguments.add(String.valueOf(pan.getEst_valide()));
			reference.add("est_valider");
		}
		if(pan.getEst_suprimer() !=0 )
		{
			arguments.add(String.valueOf(pan.getEst_suprimer()));
			reference.add("est_suprimer");
		}
		
		String req=reference.get(0) +" = '" + arguments.get(0) + "'";
		for(int i=1 ; i<arguments.size() ; i++ )
		{
			req= req + " , " + reference.get(i) +" = '" + arguments.get(i) +"'";
		}
		
		try {
			stmt=connect.createStatement();
			String sql =  "UPDATE panier " + "SET " + req + " WHERE " + references;
			System.out.println(sql);
		    stmt.executeUpdate(sql);        
		} finally {
			connect.close();
			stmt.close();
		}
	}
}
