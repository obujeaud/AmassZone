<%@page import="service.PanierItem"%>
<%@page import="business.entity.BoutiqueItem"%>
<%@page import="persistence.dao.BoutiqueDao"%>
<%@page import="service.Panier"%>
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
  BoutiqueItem b = new BoutiqueDao().findById(Long.parseLong(request.getParameter("idHid")));
  PanierItem pi = new PanierItem(b);
  Panier p = new Panier(pi);
  session.setAttribute("panier", p);
  response.sendRedirect("panier.jsp");
%>
</body>
</html>