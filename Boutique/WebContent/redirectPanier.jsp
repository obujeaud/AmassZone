
<%@page import="service.PanierService"%>
<%@page import="service.Panier"%>
<%@page import="service.PanierItem"%>
<%@page import="business.entity.BoutiqueItem"%>
<%@page import="persistence.dao.BoutiqueDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		BoutiqueDao bdao = new BoutiqueDao();
		PanierService ps = new PanierService();
		if (request.getParameter("leId") != null) {
			BoutiqueItem b = bdao.findById(Long.parseLong(request.getParameter("leId")));
			PanierItem pi = new PanierItem(b);
			ps.addArticle(session, pi);
		} else if (request.getParameter("idDelete") != null) {
			ps.deleteArticle(session, ps.getLaListe(session).get(Integer.parseInt(request.getParameter("idDelete"))));
		} else {
			int i = 0;
			for (PanierItem p : ps.getLaListe(session)) {
				p.setNbProduit(Integer.parseInt(request.getParameter("leP" + i)));
				i++;
			}
		}
		response.sendRedirect("panier.jsp");
	%>
</body>
</html>