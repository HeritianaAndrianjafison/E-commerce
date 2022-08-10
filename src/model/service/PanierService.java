package model.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;

import model.beans.Membre;
import model.beans.Panier;
import model.beans.Produit;
import model.crud.PanierCrud;
import model.crud.ProduitCrud;

public class PanierService {
	public String addPanier(Panier pan) throws SQLException
	{
		pan.setEst_suprimer(2);
		pan.setEst_valide(2);
		PanierCrud pc = new PanierCrud(pan);
		String retour ="produit ou membre inexistant";
		pc.ajouterPanier();
		retour="produit ajouté dans le panier";
		System.out.println(retour);
		return retour;
	}
	
	public void validerPanier(int id_membre) throws SQLException
	{
		String reference = "id_membre = "+id_membre;
		Panier pan = new Panier();
		pan.setId_membre(id_membre);
		pan.setEst_valide(1);
		PanierCrud pc = new PanierCrud(pan);
		pc.updatePanier(reference);
	}
	
	public void suprimerPanier(int id_membre , int id_produit) throws SQLException
	{
		String reference = "id_produit = " +id_produit;
		Panier pan = new Panier();
		pan.setId_membre(id_membre);
		pan.setId_produit(id_produit);
		pan.setEst_suprimer(1);
		PanierCrud pc = new PanierCrud(pan);
		pc.updatePanier(reference);
	}
	public ArrayList<Produit> recupererProduitPAnier(Panier p) throws SQLException
	{
		ArrayList<Produit> retour = new  ArrayList<Produit> ();
		p.setEst_suprimer(2);
		p.setEst_valide(2);
		PanierCrud pc = new PanierCrud(p);
		ProduitCrud pcr = new ProduitCrud();
		ArrayList<Panier> listePanier = pc.recupererPAnier();		
		for(int i=0 ; i< listePanier.size() ; i++)
		{
			//System.out.println(listePanier.size());
			Produit pr = new Produit();
			pr.setId_produit(listePanier.get(i).getId_produit());
			pcr.setP(pr);
			//System.out.println(pcr.recupererProduit().get(0));
			retour.add(pcr.recupererProduit().get(0));
		}
		return retour;
	}
	
	public int totalPrix(Panier p) throws SQLException
	{
		int retour = 0;
		recupererProduitPAnier(p);
		for(int i=0 ; i< recupererProduitPAnier(p).size() ; i++)
		{
			retour=retour + recupererProduitPAnier(p).get(i).getPrix_produit();
		}
		return retour;
	}
}
