<%@page import="service.Panier"%>
<%@page import="persistence.dao.BoutiqueDao"%>
<%@page import="business.entity.BoutiqueItem"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%  
	Panier p = (Panier) session.getAttribute("panier");
%>
<script>
	function submit() {
		var formu = document.getElementById("form");
		form.submit();
	}

	function continuer() {
		window.location.assign("index.jsp");
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Panier</h1>
	<form action="redirectPaiement.jsp" method="post" id="form">
		<table>
			<tr>
				<th>Code Produit</th>
				<th>Désignation</th>
				<th>Nombre de produits</th>
				<th>Prix de la ligne</th>
				<th>Enlever le produit</th>
			</tr>
			<%
				for (BoutiqueItem bi : p.getListePanier()) {
			%><tr>
				<td><%=bi.getCode()%></td>
				<td><%=bi.getLabel()%></td>
				<td>1</td>
				<td><%=bi.getPrice()%></td>
				<td><input type="button" value="Détruire" id="delete"
					name="leDelete" />
			</tr>
			<%
				}
			%>
		</table>
		<input type="submit" value="Payer" id="sub" onclick="submit()" /> <input
			type="button" value="Continuer les achats" onclick="continuer()" />
	</form>
</body>
</html>