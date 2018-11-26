<%@page import="service.PanierService"%>
<%@page import="service.PanierItem"%>
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
	PanierService ps = new PanierService();
	double prixTotal = 0;
%>
<script>
	function continuer() {
		window.location = "index.jsp";
	}

	function myDelete(obj) {
		window.location = "redirectPanier.jsp?idDelete=" + obj;
	}
	
	function payer(){
		window.location = "redirectPaiement.jsp";
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Panier</h1>
	<form action="redirectPanier.jsp" method="post" id="form">
		<table>
			<tr>
				<th>Code Produit</th>
				<th>Désignation</th>
				<th>Nombre de produits</th>
				<th>Prix de la ligne</th>
				<th>Enlever le produit</th>
			</tr>
			<%
				int i = 0;
				for (PanierItem bi : ps.getLaListe(session)) {
			%>
			<tr>
				<td><%=bi.getCodeItem()%></td>
				<td><%=bi.getDesignItem()%></td>
				<td><input type="text" id="produit<%=i%>" name="leP<%=i%>"
					value="<%=bi.getNbProduit()%>" /></td>
				<td><%=bi.getPrix() * bi.getNbProduit()%></td>
				<td><input type="button" value="Detruire" id="delete<%=1%>"
					name="leDelete<%=i%>" onclick="myDelete(<%=i%>)" /></td>
			</tr>
			<%
					prixTotal += bi.getPrix() * bi.getNbProduit();
					i++;
				}
			%>
		</table>
		<h3>
			Prix total :
			<%=prixTotal%></h3>
		<input type="button" value="Payer" id="sub" onclick="payer()" /> <input
			type="button" value="Continuer les achats" onclick="continuer()" />
		<input type="submit" value="Mettre a jour" id="maj" />
	</form>
</body>
</html>