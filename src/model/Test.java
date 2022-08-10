package model;

import java.sql.SQLException;

import model.beans.Membre;
import model.beans.Produit;
import model.crud.ProduitCrud;
import model.service.CategorieService;
import model.service.ProduitService;

public class Test {

	public static void main(String[] args) throws SQLException {
		
	/*	Membre m1 = new Membre("tix");
		m1.setEmail("antema155@gmail.com");
		m1.setMdp("123");
		m1.insererMembre(); */ 
		
		Membre m2 = new Membre("MAJs" , "123");
		m2.setNom("bogosy");
		
	/*	Membre m3 = new Membre(1);
		m3.setEmail("MAJ");
		m3.updateMembre(); */
		
	/*	MembreService ms = new MembreService();
		//ms.checkLogin(m2); 
		ms.inscription(m2); */
		
	/*	Panier p = new Panier();
		Membre ms = new Membre("ok", "123", "ok");
		ms.setId_membre(1);
		Produit prod = new Produit("product", 123, 1, "ok ok ");
		prod.setId_produit(1);
		
		PanierService ps = new PanierService();
		ps.addPanier(p, ms, prod); */
		
	/*	Produit p =new Produit(1);
		System.out.println(p.recupererProduit().get(2).getId_produit()); */
		
	/*	PanierService ps = new PanierService();
		ps.validerPanier(1); */ 
		
	/*	Panier p = new Panier();
		p.setId_membre(1);
		p.setEst_valide(0);
		
		PanierService ps = new PanierService();
		 ArrayList<Produit> listeProduitPanier = ps.recupererProduitPAnier(p);
		 for(int i=0 ; i< listeProduitPanier.size() ; i++)
		 {
			 System.out.println(listeProduitPanier.get(i).getNom_produit());
		 }*/
		
		/*Panier pans = new Panier();
		pans.setId_produit(8);
		pans.setId_membre(1);
		
		PanierService pss = new PanierService();
		pss.suprimerPanier(1, 8);*/
		
		CategorieService cs = new CategorieService();
		
		/*for(int i=0 ; i< cs.recupererCategorie().size() ; i++)
		{
			System.out.println(cs.recupererCategorie().get(i).getNom_categorie());
		}*/
		
		//ProduitService ps = new ProduitService();
		
		/*Produit p = new Produit();
		p.setId_categorie(1);
		ProduitCrud pc = new ProduitCrud();
		pc.setP(p);
		for(int i=0 ; i< pc.recupererProduit().size() ; i++)
		{
			System.out.println(pc.recupererProduit().get(i).getNom_produit());
		}*/
		
		//pc.recupererProduit(contrainte, valeur)
		/*PanierService ps = new PanierService();
		Panier pan = new Panier();
		pan.setEst_suprimer(2);
	
		PanierCrud pcs = new PanierCrud();
		ps.recupererProduitPAnier(pan);*/
		
		ProduitService psd = new ProduitService();
		for(int i=0 ; i< psd.recupererPage(1).size() ; i++)
		{
			System.out.println(psd.recupererPage(1).get(i));
		}
		
	}
}
