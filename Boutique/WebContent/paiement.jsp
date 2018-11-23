<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
				for (BoutiqueItem bi : p.getListePanier()) {
			%><tr>
				<td><%=bi.getCode()%></td>
				<td><%=bi.getLabel()%></td>
				<td>1</td>
				<td><%=bi.getPrice()%></td>
			</tr>
			<%
				}
			%>
		</table>
		<input type="submit" value="Payer" id="sub" onclick="submit()" /> <input
			type="button" value="Retour au site" onclick="continuer()" />
	</form>
</table>
</body>
</html>