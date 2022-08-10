package model.service;

import java.sql.SQLException;

import model.beans.Membre;
import model.crud.MembreCrud;

public class MembreService {
	public boolean checkLogin(Membre m) throws SQLException
	{
		MembreCrud mc = new MembreCrud(m);
		boolean retour = false;
		if(mc.recupererMembre().size() > 0 )
		{
			if(m.getEmail() != null && m.getMdp() != null)
			{
				retour=true;
			}
		}
		System.out.println(retour);
		return retour;
	}
	
	public String inscription (Membre m) throws SQLException
	{
		String retour="";
		MembreCrud mc = new MembreCrud(m);
		if(mc.recupererMembre().size() > 0 )
		{
			retour="membre existe deja";
		}
		
		if(mc.recupererMembre("email", m.getEmail()).size() >0)
		{
			retour="email deja prise";
		}
		else 
		{
			mc.insererMembre();
			retour="inscription avec succee";
		}
		System.out.println(retour);
		return retour;
	}
	
	public Membre chercherMembre(Membre m) throws SQLException
	{
		MembreCrud mc = new MembreCrud(m);
		Membre retour = mc.recupererMembre().get(0);
		return retour;
	}
}
