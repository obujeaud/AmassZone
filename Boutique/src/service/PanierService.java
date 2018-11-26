package service;

import java.util.List;

import javax.servlet.http.HttpSession;

public class PanierService {
	//Utilise la session pour récupérer un panier
	private Panier leP;
	
	public List<PanierItem> getLaListe(HttpSession session) {
		leP = getLePanier(session);
		return leP.getListePanier();
	}

	public Panier getLePanier(HttpSession session) {
		leP = (Panier) session.getAttribute("panier");
		if(leP == null) {
			leP = new Panier();
			session.setAttribute("panier", leP);
		}
		return leP;
	}

	public void addArticle(HttpSession session,PanierItem pi) {
		leP = getLePanier(session);
		leP.ajout(pi);
	}

	public void deleteArticle(HttpSession session,PanierItem pi) {
		leP = getLePanier(session);
		leP.deleteItem(pi);
	}
	
	public void clearSession(HttpSession session) {
		session.removeAttribute("panier");
	}
}