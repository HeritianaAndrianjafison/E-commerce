package model.service;

import java.sql.SQLException;
import java.util.ArrayList;

import model.Fonction;
import model.beans.Produit;
import model.crud.ProduitCrud;

public class ProduitService {
	public ArrayList <Produit> rechercherProduit(Produit p) throws SQLException
	{
		ArrayList<Produit> retour = new ArrayList<Produit>();
		
		
		ProduitCrud pc = new ProduitCrud(p);
		for(int i=0 ; i<pc.recupererProduit().size() ; i++)
		{
			if(Integer.valueOf(pc.recupererProduit().get(i).getEst_suprimer()) == 0)
			{
				retour.add(pc.recupererProduit().get(i));
			}
		}
		return retour;
	}
	
	public ArrayList <Produit> recupererToutProduit() throws SQLException
	{
		 ArrayList <Produit> retour = new  ArrayList <Produit>();
		 ProduitCrud pc = new ProduitCrud();
		 for(int i=0 ; i< pc.recupererToutlesProduit().size() ; i++)
		 {
			 retour.add(pc.recupererToutlesProduit().get(i));
		 }
		 
		 return retour;
	}
	public ArrayList<Integer> recupererPage() throws SQLException
	{
		ArrayList<Integer> retour = new ArrayList<Integer>();
		ProduitCrud p = new ProduitCrud();
		int page = p.recupererPAge().get(0)+1;
		for(int i=1 ; i<page ; i++)
		{
			retour.add(i);
		}
		return retour;
	}
	
	public ArrayList<Integer> recupererPage(int id_categorie) throws SQLException
	{
		ArrayList<Integer> retour = new ArrayList<Integer>();
		ProduitCrud p = new ProduitCrud();
		int page = p.recupererPage(id_categorie)+1;
		for(int i=1 ; i<page ; i++)
		{
			retour.add(i);
		}
		return retour;
	}
	
	
	public ArrayList <Produit> rechercheAvancer(Produit p) throws SQLException
	{
		ArrayList<Produit> retour = new ArrayList<Produit>();
		
		
		ProduitCrud pc = new ProduitCrud(p);
		for(int i=0 ; i<pc.rechercheAvancer().size() ; i++)
		{
			if(Integer.valueOf(pc.rechercheAvancer().get(i).getEst_suprimer()) == 0)
			{
				retour.add(pc.rechercheAvancer().get(i));
			}
		}
		return retour;
	}
	
	public void insererProduit(Produit p) throws SQLException
	{
		ProduitCrud pc = new ProduitCrud();
		p.setEst_suprimer(0);
		int page= pc.recupererPage(p.getId_categorie());
		int nbrpage = pc.pagination(p.getId_categorie());
		if(nbrpage >= 6)
		{
			page++;
		}
		p.setPage(page);
		pc.insererProduit(p);
	}
	
	public ArrayList<Produit> dernierProduit() throws SQLException
	{
		ArrayList<Produit> retour = new ArrayList<Produit>();
		ProduitCrud pc = new ProduitCrud();
		retour = pc.recupererNouveauProduit();
		return retour;
	}
}
