package model.service;

import java.sql.SQLException;

import model.beans.Admin;
import model.beans.Membre;
import model.crud.AdminCrud;
import model.crud.MembreCrud;

public class AdminService {
	
	
	public boolean checkLogin(Admin a) throws SQLException
	{
		AdminCrud acru = new AdminCrud();
		boolean retour = false;
		if(acru.recupererAdmin(a).size() > 0 )
		{
			if(a.getPseudo() != null && a.getMdp() != null)
			{
				retour=true;
			}
		}
		System.out.println(retour);
		return retour;
	}
	
	public Admin chercherAdmin(Admin a ) throws SQLException
	{
		AdminCrud ac = new AdminCrud();
		Admin retour = ac.recupererAdmin(a).get(0);
		return retour;
	}
}
