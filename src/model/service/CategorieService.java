package model.service;
import java.sql.SQLException;
import java.util.ArrayList;

import model.beans.Categorie;
import model.crud.CategorieCrud;

public class CategorieService {
	public ArrayList<Categorie> recupererCategorie() throws SQLException
	{
		CategorieCrud cc = new CategorieCrud();
		ArrayList<Categorie> retour = new ArrayList<Categorie>();
		for(int i=0 ; i< cc.recupererCategorie().size() ; i++)
		{
			retour.add(cc.recupererCategorie().get(i));
		}
		return retour;
	}
	
	public ArrayList<String> recupererCategorieS() throws SQLException
	{
		CategorieCrud cc = new CategorieCrud();
		
		ArrayList<String> retour = new ArrayList<String>();
		for(int i=0 ; i< cc.recupererCategorie().size() ; i++)
		{
			retour.add(cc.recupererCategorie().get(i).getNom_categorie());
		}
		return retour;
	}
}
