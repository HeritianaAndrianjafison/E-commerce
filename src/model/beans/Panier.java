package model.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Fonction;
import model.daoFactory.ConnexionBase;

public class Panier {
	private int id_panier=0;
	private int id_produit=0;
	private int id_membre=0;
	private int quantiter_produit=0;
	private int est_valide=0;
	private int est_suprimer=0;
	
	
	public int getId_panier() {
		return id_panier;
	}
	public void setId_panier(int id_panier) {
		this.id_panier = id_panier;
	}
	public int getId_produit() {
		return id_produit;
	}
	public void setId_produit(int id_produit) {
		this.id_produit = id_produit;
	}
	public int getId_membre() {
		return id_membre;
	}
	public void setId_membre(int id_membre) {
		this.id_membre = id_membre;
	}
	public int getQuantiter_produit() {
		return quantiter_produit;
	}
	public void setQuantiter_produit(int quantiter_produit) {
		this.quantiter_produit = quantiter_produit;
	}
	
	public int getEst_valide() {
		return est_valide;
	}
	public void setEst_valide(int est_valide) {
		this.est_valide = est_valide;
	}
	public int getEst_suprimer() {
		return est_suprimer;
	}
	public void setEst_suprimer(int est_suprimer) {
		this.est_suprimer = est_suprimer;
	}
	
}
