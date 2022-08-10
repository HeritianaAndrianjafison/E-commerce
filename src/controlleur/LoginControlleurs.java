package controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Fonction;
import model.beans.Membre;
import model.service.MembreService;

/**
 * Servlet implementation class LoginControlleurs
 */
@WebServlet("/LoginControlleurs")
public class LoginControlleurs extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControlleurs() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_produit = request.getParameter("deco");
		HttpSession session = request.getSession();
		session.invalidate();
		
		this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		Membre m= new Membre(email,mdp);
		MembreService ms = new MembreService();
		String erreur ="erreur";
		Membre mb;
		try {
			if(ms.checkLogin(m))
			{
				 mb=ms.chercherMembre(m);
				 HttpSession session = request.getSession();
			     session.setAttribute("id_membre", mb.getId_membre());
			     session.setAttribute("nom_membre", mb.getNom());
			     
		        this.getServletContext().getRequestDispatcher("/home").forward(request, response);
			}
			else 
			{
				request.setAttribute("erreur", erreur);
				this.getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			}
				
		} catch (SQLException e) {
		}
	}

}
