package service;

import java.util.ArrayList;
import java.util.List;

public class Panier {
	
	List<PanierItem> listePanier = new ArrayList<PanierItem>();
	
	public Panier(PanierItem pi) {
		listePanier.add(pi);
	}
	
	public List<PanierItem> getListePanier() {
		return listePanier;
	}
}