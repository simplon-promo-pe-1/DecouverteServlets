<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
</head>
<body>
	<h1>Hello ${nom}</h1>
	<h1>Hello ${param.nom}</h1>
	<h1>Hello ${param['nom']}</h1>
	<h1>Hello ${requestScope.nom}</h1>
	<h1>Hello <%= request.getParameter("nom") %></h1>
	<h1>Hello <%= request.getAttribute("nom") %></h1>
	<h2>Vous naviguez sur ${header["user-agent"]}</h2>
</body>
</html>