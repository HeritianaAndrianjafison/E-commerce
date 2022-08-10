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

import model.beans.Panier;
import model.beans.Produit;
import model.crud.PanierCrud;
import model.service.PanierService;
import sun.invoke.empty.Empty;

/**
 * Servlet implementation class PanierControlleur
 */
@WebServlet("/PanierControlleur")
public class PanierControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PanierControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("id_produit")!=null)
		{
			Panier pan = new Panier();
			PanierService ps = new PanierService();
			boolean check = false;
			
			String id_produit = request.getParameter("id_produit");
			
			pan.setId_produit(Integer.valueOf(id_produit));
			
			HttpSession session = request.getSession();
		    int id_membre = (int) session.getAttribute("id_membre"); 
		    pan.setId_membre(id_membre);
		    try {
				ps.addPanier(pan);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		    request.setAttribute("check", check);
		    this.getServletContext().getRequestDispatcher("/home").forward(request, response);
		}
		
		if(request.getParameter("ref")!=null)
		{
			ArrayList <Produit> listePaniers = new ArrayList <Produit> ();
			Panier pan = new Panier();
			HttpSession session = request.getSession();
			int id_membre = (int) session.getAttribute("id_membre");
			pan.setId_membre(id_membre);
			pan.setEst_valide(0);
			int prixTotal=0;
			PanierCrud pcs = new PanierCrud();
			
			PanierService ps = new PanierService();
			try {
				listePaniers=ps.recupererProduitPAnier(pan);
				prixTotal=ps.totalPrix(pan);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("listePaniers", listePaniers);
			request.setAttribute("prixTotal", prixTotal);
			this.getServletContext().getRequestDispatcher("/panier.jsp").forward(request, response);
		}
		
		if(request.getParameter("supr") !=null)
		{
			Panier pan = new Panier();
			HttpSession session = request.getSession();
			int id_membre = (int) session.getAttribute("id_membre");
			int idProduit = Integer.valueOf(request.getParameter("supr"));
			
			PanierService ps = new PanierService();
			try {
				ps.suprimerPanier(id_membre,idProduit);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			this.getServletContext().getRequestDispatcher("/home").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
