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

import model.beans.Categorie;
import model.beans.Produit;
import model.service.CategorieService;
import model.service.ProduitService;
import sun.invoke.empty.Empty;

/**
 * Servlet implementation class Controlleur
 */
@WebServlet("/Controlleur")
public class HomeControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		Produit p = new Produit(1);
		Produit p2 = new Produit(2);
		p2.setPage(1);
		p.setPage(1);
		ProduitService ps = new ProduitService();
		ArrayList <Produit> telephoneMobiles = new ArrayList <Produit>();
		ArrayList <Produit> phones = new ArrayList <Produit>();
		ArrayList <Produit> ecouteurs = new ArrayList <Produit>();
		CategorieService cs = new CategorieService();
		ArrayList<Integer> pagePhones  = new ArrayList<Integer>();
		ArrayList<Integer> pageEcouteurs  = new ArrayList<Integer>();
		
		int page=1;
		
		try {
			//ArrayList<Integer> pages = ps.recupererPage();
			pagePhones=ps.recupererPage(1);
			pageEcouteurs=ps.recupererPage(2);
			request.setAttribute("pagePhones", pagePhones);
			request.setAttribute("pageEcouteurs", pageEcouteurs);
			//request.setAttribute("pages", pages);
			request.setAttribute("categories", cs.recupererCategorie());
			telephoneMobiles=ps.dernierProduit();
			phones=ps.rechercherProduit(p);
			ecouteurs=ps.rechercherProduit(p2);
			request.setAttribute("phones", phones);
			request.setAttribute("telephoneMobiles", telephoneMobiles);
			request.setAttribute("ecouteurs", ecouteurs);
			
			if(request.getParameter("page")!=null)
			{
				page = Integer.valueOf(request.getParameter("page"));
				Produit p3 = new Produit(2);
				p3.setPage(page);
				ecouteurs=ps.rechercherProduit(p3);
				request.setAttribute("ecouteurs", ecouteurs);
			}
			
			if(request.getParameter("pagePhone")!=null)
			{
				page = Integer.valueOf(request.getParameter("pagePhone"));
				Produit p4 = new Produit(1);
				p4.setPage(page);
				phones=ps.rechercherProduit(p4);
				request.setAttribute("phones", phones);
				
			}
			this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produit p = new Produit(1);
		CategorieService cs = new CategorieService();
		Produit p2 = new Produit(2);
		p2.setPage(1);
		p.setPage(1);
		ProduitService ps = new ProduitService();
		ArrayList <Produit> telephoneMobiles = new ArrayList <Produit>();
		ArrayList <Produit> ecouteurs = new ArrayList <Produit>();
		ArrayList <Produit> phones = new ArrayList <Produit>();
		ArrayList<Integer> pagePhones  = new ArrayList<Integer>();
		ArrayList<Integer> pageEcouteurs  = new ArrayList<Integer>();
		try {
			pagePhones=ps.recupererPage(1);
			pageEcouteurs=ps.recupererPage(2);
			
			ArrayList<Integer> pages = ps.recupererPage();
			telephoneMobiles=ps.dernierProduit();
			ecouteurs=ps.rechercherProduit(p2);
			phones=ps.rechercherProduit(p);
			request.setAttribute("pagePhones", pagePhones);
			request.setAttribute("pageEcouteurs", pageEcouteurs);
			request.setAttribute("pages", pages);
			request.setAttribute("categories", cs.recupererCategorie());
			request.setAttribute("telephoneMobiles", telephoneMobiles);
			request.setAttribute("ecouteurs", ecouteurs);
			request.setAttribute("phones", phones);
			this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
