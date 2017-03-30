package com.accenture.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.accenture.model.Activity;

@Controller
public class ExerciseController {

	@RequestMapping(value = "/addExercise")
	public String addExercise(@ModelAttribute ("actividad") Activity actividad){
		if(actividad.getActividad()!=null)
		{
		System.out.println("Activity: " + actividad.getActividad()+" "+ actividad.getMinutes()+" minutes ");
		}
		
		
		
		return "addExercise";
		
	}
}
