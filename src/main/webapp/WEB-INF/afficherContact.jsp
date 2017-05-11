<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mon contact</title>
</head>
<body>
	<h1>Mon contact</h1>
	<c:set var="contact" value="${model.contact}" scope="page" />
	<c:set var="hobbies" value="${contact.hobbies}" scope="page" />
	Nom : ${contact.nom}
	<br/>
	Prénom : ${contact.prenom}
	<br/>
	Email : ${contact.email}
	<br/>
	<br/>
	Nombre de hobbies : ${model.nbHobbies}
	<br/>
	<ul>	
		<c:forEach items="${hobbies}" var="hobby">
			<li>${hobby.nom}</li>
		</c:forEach>
	</ul>
</body>
</html>