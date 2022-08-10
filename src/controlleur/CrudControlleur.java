package controlleur;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.beans.Produit;
import model.crud.ProduitCrud;
import model.service.CategorieService;
import model.service.ProduitService;

/**
 * Servlet implementation class CrudControlleur
 */
@WebServlet("/CrudControlleur")
public class CrudControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrudControlleur() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); 
		Produit phone = new Produit(1);
		Produit ecouteur = new Produit(2);
		phone.setPage(1);
		ecouteur.setPage(1);
		ProduitService ps = new ProduitService();
		ArrayList <Produit> telephoneMobiles = new ArrayList <Produit>();
		ArrayList <Produit> phones = new ArrayList <Produit>();
		ArrayList <Produit> ecouteurs = new ArrayList <Produit>();
		CategorieService cs = new CategorieService();
		ArrayList<Integer> pagePhones  = new ArrayList<Integer>();
		ArrayList<Integer> pageEcouteurs  = new ArrayList<Integer>();
		int page=1;
		if(session.getAttribute("id") != null)
		{
			if(request.getParameter("supr")!=null)
			{
				try {
					pagePhones = ps.recupererPage(1);
					request.setAttribute("pagePhones", pagePhones);
					 pageEcouteurs = ps.recupererPage(2);
					request.setAttribute("pageEcouteurs", pageEcouteurs);
					request.setAttribute("categories", cs.recupererCategorie());	
					phones=ps.rechercherProduit(phone);
					ecouteurs=ps.rechercherProduit(ecouteur);
					request.setAttribute("phones", phones);
					request.setAttribute("ecouteurs", ecouteurs);
					
					this.getServletContext().getRequestDispatcher("/suprimerProduit.jsp").forward(request, response);
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if(request.getParameter("page")!=null)
			{
				ArrayList<Integer> pages = new ArrayList<Integer>();
				page = Integer.valueOf(request.getParameter("page"));
				Produit p3 = new Produit(2);
				Produit p4 = new Produit(1);
				p4.setPage(page);
				p3.setPage(page);
				try {
					pages= ps.recupererPage();
					ecouteurs=ps.rechercherProduit(p3);
					phones=ps.rechercherProduit(p4);
					pagePhones = ps.recupererPage(1);
					pageEcouteurs = ps.recupererPage(2);
					
				} catch (SQLException e) {
				}
				request.setAttribute("pagePhones", pagePhones);
				request.setAttribute("pageEcouteurs", pageEcouteurs);
				request.setAttribute("pages", page);
				request.setAttribute("phones", phones);
				request.setAttribute("ecouteurs", ecouteurs);
				
				this.getServletContext().getRequestDispatcher("/suprimerProduit.jsp").forward(request, response);
			}
			
			if(request.getParameter("suprimer")!=null)
			{
				ProduitCrud pc = new ProduitCrud();
				Produit p = new Produit();
				int id= Integer.valueOf(request.getParameter("suprimer"));
				p.setId_produit(id);
				try {
					pc.suprimerProduit(p);
				} catch (SQLException e) {
					System.out.println("Erreur de supression de produit ");
				}
				this.getServletContext().getRequestDispatcher("/backOffice").forward(request, response);
			}
			
			if(request.getParameter("maj")!=null)
			{
				try {
					pagePhones = ps.recupererPage(1);
					request.setAttribute("pagePhones", pagePhones);
					 pageEcouteurs = ps.recupererPage(2);
					request.setAttribute("pageEcouteurs", pageEcouteurs);
					request.setAttribute("categories", cs.recupererCategorie());	
					phones=ps.rechercherProduit(phone);
					ecouteurs=ps.rechercherProduit(ecouteur);
					request.setAttribute("phones", phones);
					request.setAttribute("ecouteurs", ecouteurs);
					
					this.getServletContext().getRequestDispatcher("/majProduit.jsp").forward(request, response);
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if(request.getParameter("update")!=null)
			{
				CategorieService cse = new CategorieService();
				try {
					request.setAttribute("categories", cse.recupererCategorie());
				} catch (Exception e) {
					
				}
				int id_produit = Integer.valueOf(request.getParameter("update"));
				request.setAttribute("id_produit", id_produit);
				this.getServletContext().getRequestDispatcher("/updateProduit.jsp").forward(request, response);
			}
		}
		else {
			this.getServletContext().getRequestDispatcher("/loginAdmin").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(); 
		String nom_produit="";
		int prix_produit=0;
		String description="aucune description";
		Produit p = new Produit();
		int id_produit=0;
		int categorie=1;
		//response.getWriter().print(request.getParameter("nom_produit"));
		
		if(session.getAttribute("id") != null)
		{
				if(request.getParameter("nom_produit")!=null)
				{
					 nom_produit=request.getParameter("nom_produit");
				}
				if(request.getParameter("id_produit")!=null)
				{
					id_produit=Integer.valueOf(request.getParameter("id_produit"));
				}
				if(request.getParameter("prix_produit")!="")
				{
					prix_produit=Integer.valueOf(request.getParameter("prix_produit"));
				}
				if(request.getParameter("desciption")!=null)
				{
					description=request.getParameter("desciption");
				}
				if(request.getParameter("categorie")!=null)
				{
					categorie=Integer.valueOf(request.getParameter("categorie"));
				}
			p.setId_produit(id_produit);
			p.setNom_produit(nom_produit);
			p.setPrix_produit(prix_produit);
			p.setDescription(description);
			p.setId_categorie(categorie);
			
			ProduitCrud pc = new ProduitCrud();
			pc.setP(p);
			
			//response.getWriter().print(request.getParameter("nom_produit"));
			
			try {
				pc.updateProduit();
				this.getServletContext().getRequestDispatcher("/backOffice").forward(request, response);
			} catch (SQLException e) {
				System.out.println("erreur lors du mise a jour du Produit");
			}	
		}
	}

}
