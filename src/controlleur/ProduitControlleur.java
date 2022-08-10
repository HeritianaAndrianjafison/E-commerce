package controlleur;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.beans.Produit;
import model.service.CategorieService;
import model.service.ProduitService;

/**
 * Servlet implementation class ProduitControlleur
 */
@WebServlet("/ProduitControlleur")
public class ProduitControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProduitControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("categorie")!=null &&  request.getParameter("produit")!=null)
		{
			int categorie =1;
			Produit p = new Produit();
			 categorie = Integer.valueOf(request.getParameter("categorie"));
			String nom_produit=request.getParameter("produit");
			p.setId_categorie(categorie);
			p.setNom_produit(nom_produit);
			ArrayList <Produit>listeProduits = new ArrayList <Produit>();
			CategorieService cs = new CategorieService();
			ProduitService ps = new ProduitService();
			
			try {
				request.setAttribute("categories", cs.recupererCategorie());
				listeProduits=ps.rechercheAvancer(p);
				request.setAttribute("listeProduits", listeProduits);
				this.getServletContext().getRequestDispatcher("/rechercherProduit.jsp").forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
