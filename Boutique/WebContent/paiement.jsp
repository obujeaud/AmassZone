<%@page import="service.PanierItem"%>
<%@page import="service.PanierService"%>
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
function continuer(){
	window.location = "index.jsp";
}

function payer(){
	if(confirm("Voulez-vous payer ?") == true){
		window.location = "cartebleue.jsp";
	}
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
			</tr>
			<%
				for (PanierItem bi : ps.getLaListe(session)) {
			%><tr>
				<td><%=bi.getCodeItem()%></td>
				<td><%=bi.getDesignItem()%></td>
				<td><%=bi.getNbProduit()%></td>
				<td><%=bi.getPrix() * bi.getNbProduit()%></td>
			</tr>
			<%
				prixTotal += bi.getPrix() * bi.getNbProduit();
				}
			%>
		</table>
		<h3>
			Prix total :
			<%=prixTotal%></h3>
		<input type="button" value="Payer" id="sub" onclick="payer()" /> <input
			type="button" value="Retour au site" onclick="continuer()" />
	</form>
</body>
</html>