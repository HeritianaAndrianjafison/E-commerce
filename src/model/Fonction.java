package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class Fonction
{	
	
	Statement stmt = null;
	
	public void InsertionTable (Statement stmt , String nomDutable , Object [] Ampidirina)
	{
		
		ArrayList listCol=new ArrayList();
	   	int count =0 ;
	   	String req2="";
	   	
	   	try
		{	
	   			ResultSet res = stmt.executeQuery("SELECT * FROM  " + nomDutable);
	   			//ResultSet res = stmt.executeQuery("SELECT * FROM  liste_points");
	   			ResultSetMetaData rsMetaData=res.getMetaData();
	   			
	   			int nbrColonne = rsMetaData.getColumnCount();
	   			
	   		 for (int i = 1; i <= nbrColonne; i++)
	         {
	             // Retourner le nom de la colonne
	             String nom=rsMetaData.getColumnName(i);
	             //System.out.println(nom);
	             // Retourner le type de la colonne
	             String type=rsMetaData.getColumnTypeName(i);
	              listCol.add(nom);
	              count++;
	         }
	   		req2 = (String) listCol.get(1);
	   		 for (int i=2 ; i< listCol.size() ; i++)
	   		 {
	   			req2=req2+","+listCol.get(i);
	   		 }
		}
	   	catch (SQLException e)
		{
		
			e.printStackTrace();
		}
	   	
	   	//System.out.println(Ampidirina[1].getClass().getSimpleName());
	   	Object [] modifier = new Object [Ampidirina.length];
	   	
	   	for(int i=0 ; i<Ampidirina.length ; i++)
	   	{
	   		if(Ampidirina[i].getClass().getSimpleName().equals("String"))
	   		{
	   			modifier[i]="'"+Ampidirina[i]+"'";	
	   		}
	   		else
	   		{
	   			modifier[i]=Ampidirina[i];
	   		}
	   	}
	   	
	   	Object donne = modifier[0];
	   	
	   	for(int i=1 ; i<Ampidirina.length ; i++ )
	   	{
	   		donne= donne + "," + modifier[i];
	   	}
	 
	   	String requette =  "INSERT INTO "+ nomDutable + " (" +req2+ ")"
       		 + " VALUES ("+donne+")";
	   	System.out.println(requette);
	   	try {
			stmt.executeUpdate(requette);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void InsertionTable (Statement stmt , String nomDutable , String apidirina)
	{
		ArrayList listCol=new ArrayList();
		String [] splite ;
	   	int count =0 ; 

		//split.add(apidirina.split(" "));
		
		splite=apidirina.split(" ");
		//splite[0]="";
		String req =String.valueOf("'" + splite[0] + "'");
		
		for (int i=1 ; i<splite.length ; i++ )
		{
			req= req + "," +"'" + splite[i]+ "'" ;
		}
		
		//System.out.println(req);
	   	try
		{	
	   			ResultSet res = stmt.executeQuery("SELECT * FROM  " + nomDutable);
	   			//ResultSet res = stmt.executeQuery("SELECT * FROM  liste_points");
	   			ResultSetMetaData rsMetaData=res.getMetaData();
	   			
	   			int nbrColonne = rsMetaData.getColumnCount();
	   			
	   		 for (int i = 1; i <= nbrColonne; i++)
	         {
	             // Retourner le nom de la colonne
	             String nom=rsMetaData.getColumnName(i);
	             //System.out.println(nom);
	             // Retourner le type de la colonne
	             String type=rsMetaData.getColumnTypeName(i);
	              listCol.add(nom);
	              count++;
	         }
	   		 
	   		 String req2 = (String) listCol.get(0);
	   		 for (int i=1 ; i< listCol.size() ; i++)
	   		 {
	   			req2=req2+","+listCol.get(i);
	   		 }
	   		 
	         //System.out.println(req2);
	        /* System.out.println("INSERT INTO "+ nomDutable + " (" +req2+ ")"
	        		 + " VALUES ("+req+")");*/
	         
	         stmt.executeUpdate ( "INSERT INTO "+ nomDutable + " (" +req2+ ")"
	        		 + " VALUES ("+req+")"); 
		}
	   	catch (SQLException e)
		{
		
			e.printStackTrace();
		}
	}
	
	/*public void InsertionTable (Statement stmt , int id , String nomDutable , Object [] Ampidirina)
	{
		String requette =  String.valueOf(Ampidirina[0]);
		for (int i=0 ; i< Ampidirina.length ; i++)
		{
			if(Ampidirina.length ==1)
			{
				requette=String.valueOf(Ampidirina[i]);
			}else
				requette=requette+","+String.valueOf(Ampidirina[i]);
		}
		
	}*/
	public void updateTable (Statement stmt, String nomDutable , String reference , Object valeurReference , String colone ,   String  Ampidirina )
	{
		 String sql = "UPDATE  " + nomDutable + 
                 " SET " + colone + " = " +  Ampidirina +  "  WHERE " + reference + " = " + valeurReference ;
		 System.out.println(sql);
		try
		{
			stmt.executeUpdate(sql);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
	}
	
	public ArrayList <String[]> find (Statement stmt ,Object [] listeSelect , String nomTable , String reference)
	{
		ArrayList <String[]> donnee = new ArrayList();
		
		ArrayList <String> premiereereDimmention  = new ArrayList();
		
		String listeSouhait = String.valueOf(listeSelect[0]);
		String req="";
		int count =0 ;
		String temp ="";
		ArrayList <String> donneAvantFinal = new ArrayList <String>();
		ArrayList<String[]> temtab = new ArrayList<String[]>();
		
		for (int i=1 ; i< listeSelect.length ; i++)
		{
			if(listeSelect.length ==1)
			{
				listeSouhait=String.valueOf(listeSelect[i]);
			}else
			listeSouhait=listeSouhait+" , "+String.valueOf(listeSelect[i]);
		}
		
		try
		{
			//stmt.executeQuery("SELECT Lname FROM Customers WHERE Snum = 2001");
			//"SELECT " + listeSouhait  + " FROM  " + nomTable 
			//
			//req="SELECT * FROM etudiant";
			req="SELECT " + listeSouhait  + " FROM  " + nomTable + reference;
			System.out.println(req);
			
			//System.out.println(listeSouhait);
			ResultSet rs = stmt.executeQuery( req);
			
			while (rs.next()) {
				//System.out.println(rs.getString(2));
				for(int i=1 ; i<listeSelect.length+1 ; i++ )
				{
					//System.out.println(rs.getString(i) );
					premiereereDimmention.add(rs.getString(i));
					
				}
				}
			
				for(int j=0 ; j<premiereereDimmention.size() ; j++ )
				{
					//System.out.println(premiereereDimmention.get(j));
				}
			//System.out.println(premiereereDimmention.get(1));
			
			/*for(int j=0 ; j <listeSelect.length ; j++  )
			{
				for (int i=j ;i <premiereereDimmention.size() ; i+=listeSelect.length)
				{
					System.out.println(premiereereDimmention.get(i));
				}
				System.out.println("------");
			}*/
			
			
			for(int i=0 ; i< premiereereDimmention.size() ; i++)
			{
				int test = i+1;
				if(test % listeSelect.length == 0)
				{
					
					temp = temp+premiereereDimmention.get(i) + ";";
				}
				else temp = temp + premiereereDimmention.get(i) + ",";
			}
			
		
			//System.out.println(temp);
			
			temtab.add(temp.split(";"));
			//System.out.println(temtab.get(0).length);
			for(int i =0 ; i<temtab.get(0).length ; i++ )
			{
				donneAvantFinal.add(temtab.get(0)[i]);
			}
			
			for(int i=0 ; i< donneAvantFinal.size() ; i++)
			{
				//System.out.println(donnéAvantFinal.get(i));
			}
			
			for(int i=0 ; i< donneAvantFinal.size() ; i++ )
			{
				donnee.add(donneAvantFinal.get(i).split(","));
			}
			
			for (int i = 0; i < donnee.size(); i++)
			{
				for(int j=0 ; j < listeSelect.length ; j++ )
				{
					
					//System.out.print(donnée.get(i)[j] + "  ");
				}
				
				//System.out.println();
			}
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		return donnee ; 
	}
	
	public ArrayList <String[]> find ( Connection con , String listeSelect , String nomTable , String reference ) throws SQLException
	{	
		ArrayList <String> donneAvantFinal = new ArrayList <String>();
		ArrayList<String[]> temtab = new ArrayList<String[]>();
		String temp = "" ;
		ArrayList <String> premiereereDimmention  = new ArrayList();
		
		ArrayList <String[]> donne = new ArrayList <String[]>();
		String listeSouhait = new String ();
		String [] split = listeSelect.split(" ");
		listeSouhait = split[0];
		for (int i=1 ; i<split.length ; i++ )
		{
			listeSouhait=listeSouhait + " , " +  split[i];
		}
		
		try
		{
			String requette ="SELECT " + listeSouhait  + " FROM  " + nomTable + " WHERE " +  reference;
			//System.out.println(requette);
			PreparedStatement stmts =con.prepareStatement(requette); 
			
			ResultSet result = stmts.executeQuery();
			
			while (result.next())
			{
				for(int i=1 ; i<split.length+1 ; i++ )
				{
					//System.out.println(rs.getString(i) );
					premiereereDimmention.add(result.getString(i));
					
				}
			}
			
			for(int i=0 ; i< premiereereDimmention.size() ; i++)
			{
				int test = i+1;
				if(test % split.length == 0)
				{
					
					temp = temp+premiereereDimmention.get(i) + ";";
				}
				else temp = temp + premiereereDimmention.get(i) + ",";
			}
			
			temtab.add(temp.split(";"));
			//System.out.println(temtab.get(0).length);
			for(int i =0 ; i<temtab.get(0).length ; i++ )
			{
				donneAvantFinal.add(temtab.get(0)[i]);
			}
			
			for(int i=0 ; i< donneAvantFinal.size() ; i++ )
			{
				donne.add(donneAvantFinal.get(i).split(","));
			}
			
			for (int i = 0; i < donne.size(); i++)
			{
				for(int j=0 ; j < split.length ; j++ )
				{
					
					//System.out.print(donnée.get(i)[j] + "  ");
				}
				
				//System.out.println();
			}
			
			
		} catch (Exception e)
		{
			
		}
		return donne;
	}
	
	public void suprimerDonnee(String reference , String table , Statement stmt , Object valeur) throws SQLException
	{		
		String sql = "DELETE FROM "+table+" WHERE " + reference  +" = '" + valeur + "'" ;
		System.out.println(sql);
	    stmt.executeUpdate(sql);
	}
}
