package model.beans;

import java.sql.Date;

public class Produit {
	private int id_produit = 0;
	private String nom_produit = "";
	private int prix_produit  = 0;
	private int id_categorie  = 0;
	private String description  = "";
	private String image_produit="";
	private Date date_ajout;
	private String date_modif;
	private int est_suprimer;
	private int page;
	
	public int getId_produit() {
		return id_produit;
	}
	public void setId_produit(int id_produit) {
		this.id_produit = id_produit;
	}
	public String getNom_produit() {
		return nom_produit;
	}
	public void setNom_produit(String nom_produit) {
		this.nom_produit = nom_produit;
	}
	public int getPrix_produit() {
		return prix_produit;
	}
	public void setPrix_produit(int prix_produit) {
		this.prix_produit = prix_produit;
	}
	public int getId_categorie() {
		return id_categorie;
	}
	public void setId_categorie(int id_categorie) {
		this.id_categorie = id_categorie;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage_produit() {
		return image_produit;
	}
	public void setImage_produit(String image_produit) {
		this.image_produit = image_produit;
	}
	public Date getDate_ajout() {
		return date_ajout;
	}
	public void setDate_ajout(Date date_ajout) {
		this.date_ajout = date_ajout;
	}
	public String getDate_modif() {
		return date_modif;
	}
	public void setDate_modif(String ajout) {
		this.date_modif = ajout;
	}
	public int getEst_suprimer() {
		return est_suprimer;
	}
	public void setEst_suprimer(int est_suprimer) {
		this.est_suprimer = est_suprimer;
	}
	public Produit(int id_categorie) {
		super();
		this.id_categorie = id_categorie;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	
	
	public Produit()
	{
		super();
	}
	
	public Produit(int id_produit, String nom_produit, int prix_produit, int id_categorie, String description,
			String image_produit, Date date_ajout, String date_modif, int est_suprimer, int page) {
		super();
		this.id_produit = id_produit;
		this.nom_produit = nom_produit;
		this.prix_produit = prix_produit;
		this.id_categorie = id_categorie;
		this.description = description;
		this.image_produit = image_produit;
		this.date_ajout = date_ajout;
		this.date_modif = date_modif;
		this.est_suprimer = est_suprimer;
		this.page = page;
	}
	public Produit(String nom_produit, int prix_produit, int id_categorie, String description) {
		super();
		this.nom_produit = nom_produit;
		this.prix_produit = prix_produit;
		this.id_categorie = id_categorie;
		this.description = description;
	}
	
	public Produit(String nom_produit, int prix_produit, int id_categorie, String description, String image_produit) {
		super();
		this.nom_produit = nom_produit;
		this.prix_produit = prix_produit;
		this.id_categorie = id_categorie;
		this.description = description;
		this.image_produit = image_produit;
	}
	
	public Produit(int id_produit, String nom_produit, int prix_produit, int id_categorie, String description, String image_produit) {
		super();
		this.id_produit = id_produit;
		this.nom_produit = nom_produit;
		this.prix_produit = prix_produit;
		this.id_categorie = id_categorie;
		this.description = description;
		this.image_produit = image_produit;
	}
	
	public Produit(String nom_produit) {
		super();
		this.nom_produit = nom_produit;
	}
	
}
