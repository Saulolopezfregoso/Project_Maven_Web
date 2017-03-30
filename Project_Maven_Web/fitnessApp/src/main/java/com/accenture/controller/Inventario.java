package com.accenture.controller;

import java.util.HashMap;

public enum Inventario {
	
	
		COHETE(408001, 800.60),
	EXPLOSIVO(408002, 100.00),
	BOTE(408003, 1000.0),
	PATINES(408004, 300.80);
	
	private final int id;
	private final double price;
	
	Inventario(int id,double price){
		this.id=id;
		this.price=price;		
	}
	
	public int getId(){
		return id;
	}
	public double getPrice(){
		return price;
	}
	
	
}
