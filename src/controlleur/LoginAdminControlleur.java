package controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.beans.Admin;
import model.beans.Membre;
import model.service.AdminService;

/**
 * Servlet implementation class LoginAdminControlleur
 */
@WebServlet("/LoginAdminControlleur")
public class LoginAdminControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAdminControlleur() {
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
		
		this.getServletContext().getRequestDispatcher("/loginAdmin.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pseudo = request.getParameter("pseudo");
		String mdp = request.getParameter("mdp");
		Admin a= new Admin();
		a.setPseudo(pseudo);
		a.setMdp(mdp);
		AdminService as = new AdminService();
		String erreur ="erreur";
		Admin mb;
		try {
			if(as.checkLogin(a))
			{
				 mb=as.chercherAdmin(a);
				 HttpSession session = request.getSession();
			     session.setAttribute("id", mb.getId());
			     session.setAttribute("pseudo", mb.getPseudo());
			     
		        this.getServletContext().getRequestDispatcher("/backOffice").forward(request, response);
			}
			else 
			{
				request.setAttribute("erreur", erreur);
				this.getServletContext().getRequestDispatcher("/loginAdmin.jsp").forward(request, response);
			}
				
		} catch (SQLException e) {
		}
	}

}
