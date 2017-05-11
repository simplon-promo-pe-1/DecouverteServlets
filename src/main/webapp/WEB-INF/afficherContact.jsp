<%@page import="co.simplon.annuaire.domaine.Hobbie"%>
<%@ page import="co.simplon.annuaire.domaine.Contact" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<c:set var="hobbies" value="${contact.hobbies}" scope="page" />
	<jsp:useBean id="hobbies" type="java.util.Set<Hobbie>" />
	Nombre de hobbies : <%= hobbies.size() %>
	<br/>
	<ul>	
		<c:forEach items="${hobbies}" var="hobby">
			<li>${hobby.nom}</li>
		</c:forEach>
	</ul>
</body>
</html>