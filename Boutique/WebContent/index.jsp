<%@page import="service.PanierService"%>
<%@page import="service.Panier"%>
<%@page import="java.awt.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="business.entity.BoutiqueItem"%>
<%@page import="persistence.dao.BoutiqueDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	BoutiqueDao bdao = new BoutiqueDao();
%>
<script>
function mysubmit(id){
	window.location = "redirectPanier.jsp?leId="+id+"";
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AmasseZone</title>
</head>
<body>
	<h1>Bienvenue sur AmasseZone.fr</h1>
	<form action="redirectPanier.jsp" method="get" id="form">
		<table border="2px solid">
			<tr>
				<th>ID Produit</th>
				<th>Code Produit</th>
				<th>Désignation</th>
				<th>Prix</th>
				<th>Ajouter</th>
			</tr>
			<%
				for (BoutiqueItem b : bdao.findAll()) {
			%><tr>
				<td><%=b.getId()%></td>
				<td><%=b.getCode()%></td>
				<td><%=b.getLabel()%></td>
				<td><%=b.getPrice()%></td>
				<td><input type="button" id="ajoutItem"
					value="Ajouter au panier" onclick="mysubmit(<%=b.getId()%>)" /></td>
			</tr>
			<%
				}
			%>
		</table>
	</form>
	<form action="panier.jsp" method="get">
		<input type="submit" id="voirPanier" value="Voir panier" />
	</form>
</body>
</html>