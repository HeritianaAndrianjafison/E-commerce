package controlleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.service.CategorieService;

/**
 * Servlet implementation class BackofficeControlleur
 */
@WebServlet("/BackofficeControlleur")
public class BackofficeControlleur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BackofficeControlleur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		CategorieService cs = new CategorieService();
		try {
			request.setAttribute("categories", cs.recupererCategorie());
		} catch (Exception e) {
			
		}
		HttpSession session = request.getSession(); 
		if(session.getAttribute("id") != null)
		{
			this.getServletContext().getRequestDispatcher("/gestion_produit.jsp").forward(request, response);
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
		CategorieService cs = new CategorieService();
		try {
			request.setAttribute("categories", cs.recupererCategorie());
		} catch (Exception e) {
			
		}
		if(session.getAttribute("id") != null)
		{
			this.getServletContext().getRequestDispatcher("/gestion_produit.jsp").forward(request, response);
		}
		else {
			this.getServletContext().getRequestDispatcher("loginAdmin").forward(request, response);
		}
	}

}
