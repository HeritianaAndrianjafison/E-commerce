package model.beans;

public class Admin {
	private int id;
	private String pseudo;
	private String mdp;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}
	public Admin(int id, String pseudo, String mdp) {
		super();
		this.id = id;
		this.pseudo = pseudo;
		this.mdp = mdp;
	}
	
	public Admin(String pseudo, String mdp) {
		super();
		this.pseudo = pseudo;
		this.mdp = mdp;
	}
	public Admin() {
		super();
	}
}
