package com.accenture.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.accenture.model.Marche;


@Controller
public class MarcheController {

	@RequestMapping(value = "/addMarche")
	public String addMarche(@ModelAttribute ("venta") Marche venta){
		Double suma=0.0;
		
		Map<Integer,Double> listadeprecio= new HashMap<Integer,Double>();
		Map<Integer,String> ldp= new HashMap<Integer,String>();
		
		List<Double> total=new ArrayList<Double>();
		
		//venta.setSomme(0.0);
		//venta.setVenta(0);
		listadeprecio.put(408001, 50.50);
		listadeprecio.put(408002, 120.00);
		listadeprecio.put(408003, 1000.00);
		listadeprecio.put(408004, 220.30);
		listadeprecio.put(408005, 380.80);
		listadeprecio.put(408006, 800.40);
		ldp.put(408001, "Anvil");
		ldp.put(408002, "Dynamite");
		ldp.put(408003, "Earthquake");
		ldp.put(408004, "Integrating Pistol");
		ldp.put(408005, "Magnet");
		ldp.put(408006, "Tornado Seed");
		System.out.println("Id "+venta.getVenta());
		total.add(listadeprecio.get(venta.getVenta()));
		if( total.get(0)==null){
			suma=0.0;
			venta.setSomme(suma);
		}
		else{
			if(venta.getSomme()==0.0){

				total.add(listadeprecio.get(venta.getVenta()));
				System.out.println(" "+total.get(0));
				suma=total.get(0);
				System.out.println("Suma "+venta.getSomme());
				venta.setSomme(suma);
				System.out.println("Total "+venta.getSomme());
				
			}
			else{
				suma=venta.getSomme();
				for(Double iterator: total){
					suma+=iterator;
				}
				System.out.println("Suma "+venta.getSomme());
				venta.setSomme(suma);
				System.out.println("Total "+venta.getSomme());
			}
			
		}
		return "addMarche";
		
	}
}