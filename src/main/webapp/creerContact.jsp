<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ma création de contact</title>
<script type="text/javascript" src="js/creerContact.js"></script>
</head>
<body>
	<h1>Ma création de contact</h1>
	<form action="creerContact.do" method="post">
		Nom : <input type="text" name="nom">
		<br/>
		Prénom : <input type="text" name="prenom" id="prenom">
		<span id="interaction">
			<input type="button" value="Bonjour" onclick="bonjour();" />
		</span>
		<br/>
		Email : <input type="email" name="email">
		<br/>
		<input type="submit">
	</form>
</body>
</html>