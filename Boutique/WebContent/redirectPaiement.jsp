<%@page import="service.PanierService"%>
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
		if (request.getParameter("payed") != null) {
			response.sendRedirect("index.jsp");
			new PanierService().clearSession(session);
		}else if(request.getParameter("erreur") != null){
			if(session.getAttribute("nbErreur") == null){
				session.setAttribute("nbErreur", 1);
			}
			if((int)session.getAttribute("nbErreur") >= 3){
				new PanierService().clearSession(session);
				session.removeAttribute("nbErreur");
				response.sendRedirect("index.jsp");
			}else{
				session.setAttribute("nbErreur", (int)session.getAttribute("nbErreur")+1);
				response.sendRedirect("paiement.jsp");
			}
		}else {
			response.sendRedirect("paiement.jsp");
		}
	%>
</body>
</html>