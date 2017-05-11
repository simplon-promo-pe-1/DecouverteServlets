<%@page import="co.simplon.annuaire.domaine.Hobbie"%>
<%@ page import="co.simplon.annuaire.domaine.Contact" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mon contact</title>
</head>
<body>
	<h1>Mon contact</h1>
	Nom : ${contact.nom}
	<br/>
	Prénom : ${contact.prenom}
	<br/>
	Email : ${contact.email}
	<br/>
	<br/>
	<% Contact contact = ((Contact) request.getAttribute("contact")); %>
	Nombre de hobbies : <%= contact.getHobbies().size() %>
	<br/>
	<ul>
		<%
		for (Hobbie hobby : contact.getHobbies()) {
		%>
			<li><%= hobby.getNom() %></li>
		<%
		}
		%>
	</ul>
</body>
</html>