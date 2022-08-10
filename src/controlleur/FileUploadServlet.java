package controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
/* The Java file upload Servlet example */
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import model.beans.Produit;
import model.service.ProduitService;

@WebServlet(name = "FileUploadServlet", urlPatterns = { "/fileuploadservlet" })
@MultipartConfig(
  fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
  maxFileSize = 1024 * 1024 * 10,      // 10 MB
  maxRequestSize = 1024 * 1024 * 100   // 100 MB
)
public class FileUploadServlet extends HttpServlet {

  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	Produit p= new Produit();
	ProduitService ps = new ProduitService();
    /* Receive file uploaded to the Servlet from the HTML5 form */
    Part filePart = request.getPart("file");
    String fileName = filePart.getSubmittedFileName();
    for (Part part : request.getParts()) {
      part.write("C:\\Users\\P13A-19-Heritiana\\Documents\\jee\\oke\\Ecommerce\\WebContent\\images\\content\\" + fileName);
    }
    p.setId_categorie(Integer.valueOf(request.getParameter("categorie")));
    p.setNom_produit(request.getParameter("nom_produit"));
    p.setDescription(request.getParameter("desciption"));
    p.setPrix_produit(Integer.valueOf(request.getParameter("prix_produit")));
    p.setImage_produit("images/content/"+fileName );
   try {
		ps.insererProduit(p);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    //response.getWriter().print("The file uploaded sucessfully." + fileName);
   this.getServletContext().getRequestDispatcher("/backOffice").forward(request, response);
  }

}