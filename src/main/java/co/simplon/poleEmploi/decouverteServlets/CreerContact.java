package co.simplon.poleEmploi.decouverteServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.simplon.annuaire.domaine.Contact;

/**
 * Servlet implementation class CreerContact
 */
@WebServlet("/creerContact.do")
public class CreerContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreerContact() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Contact contact = new Contact();
		contact.setNom(request.getParameter("nom"));
		contact.setPrenom(request.getParameter("prenom"));
		contact.setEmail(request.getParameter("email"));

		// Set response content type
		response.setContentType("text/html");

		// Actual logic goes here.
		PrintWriter out = response.getWriter();
		out.println("<h1>toString() = " + contact + "</h1>");
	}

}
