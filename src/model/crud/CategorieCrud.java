package model.crud;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.beans.Categorie;
import model.daoFactory.ConnexionBase;

public class CategorieCrud {
	
	private Categorie c;
	
	public Categorie getC() {
		return c;
	}
	public void setC(Categorie c) {
		this.c = c;
	}


	public ArrayList<Categorie> recupererCategorie() throws SQLException
	{
		ArrayList<Categorie> retour = new ArrayList<Categorie>();
		ConnexionBase conne= new ConnexionBase();
		Connection con = conne.connect();
		Statement stmt = con.createStatement();
		String req="SELECT * FROM categorie ";
		
		ResultSet rs =stmt.executeQuery(req);
		while ( rs.next() ) 
		{
			Categorie c = new Categorie(rs.getInt("id_categorie") , rs.getString("nom_categorie"));
			retour.add(c);
		}
		
		return retour;
	}
}
