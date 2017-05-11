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
	<jsp:useBean class="co.simplon.annuaire.domaine.Contact" id="contact" scope="request" />
	Nombre de hobbies : <%= contact.getHobbies().size() %>
	<br/>
	<ul>	
		<%
		for (Hobbie hobby : contact.getHobbies()) {
			pageContext.setAttribute("hobby", hobby);
		%>
			<li>${hobby.nom}</li>
		<%
		}
		%>
	</ul>
</body>
</html>