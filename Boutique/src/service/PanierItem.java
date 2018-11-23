package service;

import business.entity.BoutiqueItem;

public class PanierItem {
	private String codeItem;
	private String designItem;
	private double prix;

	public PanierItem(BoutiqueItem b) {
		this.codeItem = b.getCode();
		this.designItem = b.getLabel();
		this.prix = b.getPrice();
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
}