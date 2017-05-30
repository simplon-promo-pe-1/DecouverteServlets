function bonjour() {
	var prenom = document.getElementById("prenom").value;
	var xhttp;
	xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		console.log("Changement d'etat a " + this.readyState);
		if (this.readyState == 4 && this.status == 200) {
			console.log("Reponse serveur : " + this.responseText);
			document.getElementById("interaction").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", "helloAjax?prenom=" + prenom, true);
	xhttp.send();
	console.log("Appel du serveur");
}