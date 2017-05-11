package co.simplon.poleEmploi.decouverteServlets;

import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.simplon.annuaire.domaine.Contact;
import co.simplon.annuaire.domaine.Hobbie;

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

		Hobbie hobby1 = new Hobbie();
		hobby1.setNom("Foot");
		Hobbie hobby2 = new Hobbie();
		hobby2.setNom("Running");
		Set<Hobbie> hobbies = new HashSet<>();
		hobbies.add(hobby1);
		hobbies.add(hobby2);
		contact.setHobbies(hobbies);

		request.setAttribute("contact", contact);
		RequestDispatcher rd = request
				.getRequestDispatcher("WEB-INF/afficherContact.jsp");
		rd.forward(request, response);
	}

}
