package model.daoFactory;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnexionBase {
	
	public Connection connect ()
	{
		Connection con = null;
		/* Chargement du driver JDBC pour MySQL */
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
		} catch ( ClassNotFoundException e ) {
		   
		}
		
		/* Connexion à la base de données */
		String url = "jdbc:mysql://node375991-e-commerce.j.layershift.co.uk/tixshop";
		String utilisateur = "root";
		String motDePasse = "TDTmba16376";
		
		try {
		    con = DriverManager.getConnection( url, utilisateur, motDePasse );

		} catch ( SQLException e ) {
		   System.out.println("tsy tafaconnect amin ny base");
		} 
		return con;
	}
}
