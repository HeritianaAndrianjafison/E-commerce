package model.beans;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Fonction;
import model.daoFactory.ConnexionBase;

public class Membre {
	private int id_membre;
	private String nom ;
	private String mdp;
	private String email;
	public int getId_membre() {
		return id_membre;
	}
	public void setId_membre(int id_membre) {
		this.id_membre = id_membre;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Membre(int id_membre, String nom, String mdp, String email) {
		super();
		this.id_membre = id_membre;
		this.nom = nom;
		this.mdp = mdp;
		this.email = email;
	}
	
	public Membre(String nom) {
		super();
		this.nom = nom;
	}
	
	public Membre(int id_membre) {
		super();
		this.id_membre = id_membre;
	}
	public Membre(String nom, String mdp, String email) {
		super();
		this.nom = nom;
		this.mdp = mdp;
		this.email = email;
	}
	
	public Membre( String email , String mdp) {
		super();
		this.mdp = mdp;
		this.email = email;
	}
}
