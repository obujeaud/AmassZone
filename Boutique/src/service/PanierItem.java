package service;

import business.entity.BoutiqueItem;

public class PanierItem {
	private String codeItem;
	private String designItem;
	private double prix;
	private int nbProduit;

	public PanierItem(BoutiqueItem b) {
		this.codeItem = b.getCode();
		this.designItem = b.getLabel();
		this.prix = b.getPrice();
		this.nbProduit = 1;
	}
	
	public String getCodeItem() {
		return codeItem;
	}

	public String getDesignItem() {
		return designItem;
	}

	public double getPrix() {
		return prix;
	}

	public int getNbProduit() {
		return nbProduit;
	}

	public void setNbProduit(int nbProduit) {
		this.nbProduit = nbProduit;
	}
}