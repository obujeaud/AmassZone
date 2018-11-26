package service;

import java.util.ArrayList;
import java.util.List;

public class Panier {

	List<PanierItem> listePanier = new ArrayList<PanierItem>();

	public void ajout(PanierItem pi) {
		boolean isInside = false;
		for (PanierItem item : listePanier) {
			if (item.getCodeItem() == pi.getCodeItem()) {
				isInside = true;
				item.setNbProduit(item.getNbProduit() + 1);
			}
		}

		if (!isInside) {
			listePanier.add(pi);
		}
	}

	public List<PanierItem> getListePanier() {
		return listePanier;
	}

	public void deleteItem(PanierItem pi) {
		listePanier.remove(pi);
	}
}