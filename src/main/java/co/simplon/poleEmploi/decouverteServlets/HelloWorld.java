package co.simplon.poleEmploi.decouverteServlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Extend HttpServlet class
public class HelloWorld extends HttpServlet {

	private String messageGet;
	private String messagePut;

	public void init() throws ServletException {
		// Do required initialization
		messageGet = "Hello ";
		messagePut = "Bonjour ";
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String message = messageGet;
		String parametre = request.getParameter("nom");
		if (parametre != null) {
			message += parametre;
		} else {
			message += "World";
		}

		// Set response content type
		response.setContentType("text/html");

		// Actual logic goes here.
		PrintWriter out = response.getWriter();
		out.println("<h1>" + message + "</h1>");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("hello.jsp");
		rd.forward(request, response);
	}

	public void destroy() {
		// do nothing.
	}
}