package com.cglia.pm.controller;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cglia.pm.model.Patient;
import com.cglia.pm.service.PatientService;
import com.cglia.pm.service.impl.PatientServiceImpl;

@Controller
public class PMController {
	@Autowired
	private PatientService service;
	
	@RequestMapping({"/home","/"})
	public String showHome() {
		return "Home";
	}
	
	@RequestMapping("/aboutus")
	public String showAboutUs() {
		return "AboutUs";
	}
	
	@RequestMapping("/login")
    public String showLoginForm() {
        return "Login"; 
    }
	
	//---------------login-------------------//
	
    @RequestMapping(path = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("email") String email, @RequestParam("password") String password, HttpServletRequest request) {
        try {
			if (service.validateUser(email, password)) {
			    return "redirect:/operation";
			} else {
			    request.setAttribute("error", "Invalid email or password");
			    return "Login"; 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return password;
    }
    
    //--------------------------signup-----------------//

    @RequestMapping("/signup")
    public String showSignupForm() {
        return "SignUp";
    }

    @RequestMapping(path = "/signup", method = RequestMethod.POST)
    public String signup(@RequestParam("email") String email, @RequestParam("password") String password, HttpServletRequest request) {
    	try {
			if (service.createUser(email, password)) {
			    return "redirect:/operation";
			} else {
			    request.setAttribute("error", "Failed to create user. Please try again.");
			    return "SignUp"; 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return password;
    }
	
	@RequestMapping("/application")
	public String showApplication() {
		return "Application";
	}
	
	@RequestMapping("/contact")
	public String showContact() {
		return "Contact";
	}
	
	@RequestMapping("/operation")
	public String showOperation() {
		return "Operation";
	}
	
	@RequestMapping("/addpat")
	public String addPatient() {
		return "AddPat";
	}
	
	//------------------------save----------------//
	
	@RequestMapping(path="/save", method=RequestMethod.POST)
	public String savePatient(@ModelAttribute Patient pat, RedirectAttributes attrs) {
		Integer patientId=service.save(pat);
		attrs.addFlashAttribute("patientId", patientId);
		if(patientId>0) {
			attrs.addFlashAttribute("successmsg","Patient saved successfully with ID:" + patientId);
		}else {
			attrs.addFlashAttribute("failuremsg","System problem. Please contact Help desk.");
		}
		
		return "redirect:/showpatient";
	}
	
	@RequestMapping("/deletepat")
	public String deletePatient() {
		return "DeletePatientById";
	}
	
	//---------------------------delete--------------------//
	
	@RequestMapping(path="/delete", method=RequestMethod.POST)
		public String deletePatient(HttpServletRequest request, RedirectAttributes attrs) {
			int patientId = Integer.parseInt(request.getParameter("patientId"));
	        boolean result = service.deletePatById(patientId);
	        if (result) {
	        	attrs.addFlashAttribute("message", "Patient deleted successfully");
	        } else {
	        	attrs.addFlashAttribute("message", "Failed to delete patient");
	        }
	        return "redirect:/deletepat";
	    }
	
	//---------------show all patient-------------//
	
	@RequestMapping("/showpatient")
	public String showAllPat(HttpServletRequest request) {
		List<Patient> patient = service.getAllPatient();
        request.setAttribute("patients", patient);
        return "ShowAllPatient";
	}
	
	//------------------update-------------------//
	
	@RequestMapping("/update")
	public String showUpdate(HttpServletRequest request) {
		return "UpdateId";
	}
	
	//--------------------------for the form-----------------//
	
	@RequestMapping("/updatepatient")
	public String showUpdatePat(HttpServletRequest request) {
		String id="";
		if(request.getParameter("patientId")!=null) {
			id=request.getParameter("patientId");
			request.setAttribute("id", id);
		};
		int patientId = Integer.parseInt(id);
		if(!id.isEmpty()) {
	        Patient patient = service.showPatientById(patientId);
	        request.setAttribute("patient", patient);    
		}
		
		return "UpdatePatient";
	}
	
	//--------------------for the update-------------------//
	
	@RequestMapping(path="/saveupdate", method=RequestMethod.POST)
	public String showUpdatePatient(@ModelAttribute Patient patient) {
		int count = service.updatePat(patient);
        if (count != 0) {
            System.out.println("Patient with ID: " + patient.getPatientId() + " is updated");
        } else {
            System.out.println("Update failed.");
        }
        return "redirect:/showpatient"; 
    }
	
}
	

