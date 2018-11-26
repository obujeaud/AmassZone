<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function mysubmit() {
		if (document.getElementById("num").value != "0123456789") {
			window.location = "redirectPaiement.jsp?erreur=erreur";
		} else {
			window.location = "redirectPaiement.jsp?payed=oui";
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="redirectPaiement.jsp" method="get">
		<label for="numCarte">Numéro de carte bleue : <input
			type="text" id="num" name="leNum" /></label> <label for="moisCarte">Mois
			d'expiration : <select>
				<option id="1">01</option>
				<option id="2">02</option>
				<option id="3">03</option>
				<option id="4">04</option>
				<option id="5">05</option>
				<option id="6">06</option>
				<option id="7">07</option>
				<option id="8">08</option>
				<option id="5">09</option>
				<option id="6">10</option>
				<option id="7">11</option>
				<option id="8">12</option>
		</select>
		</label> <label for="anCarte">Année d'expiration : <select>
				<option id="1">2018</option>
				<option id="2">2019</option>
				<option id="3">2020</option>
				<option id="4">2021</option>
				<option id="5">2022</option>
				<option id="6">2023</option>
				<option id="7">2024</option>
				<option id="8">2025</option>
		</select>
		</label> <label for="cryptCarte">Cryptogramme : <input type="text"
			id="crypt" name="leCrypt" /></label> <input type="button" value="Procéder"
			id="proc" name="leProc" onclick="mysubmit()" /> <input type="button"
			value="Retour" id="retour" name="leRetour" onclick="back()" />
	</form>
</body>
</html>