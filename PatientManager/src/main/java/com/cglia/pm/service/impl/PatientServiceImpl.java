package com.cglia.pm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cglia.pm.dao.PatientDAO;
import com.cglia.pm.model.Patient;
import com.cglia.pm.model.User;
import com.cglia.pm.service.PatientService;

@Service
public class PatientServiceImpl implements PatientService {
	@Autowired
	private PatientDAO dao;
	
	//----------------save-------------------//
	@Override
	public Integer save(Patient patient) {
		
		Integer patientId=dao.save(patient);
		return patientId;
	}
		
	//----------------update-----------//
	
	@Override
	public Integer updatePat(Patient patient) {
		Integer count = dao.update(patient);
		return count;		
	}
	
	
	public Patient showPatientById(Integer patientId) {
		Patient patient = dao.showPatientById(patientId);
		return patient;
		
	}
	
	//---------------------all patient-------------------//
	
	@Override
	public List<Patient> getAllPatient() {
		List<Patient> patients = dao.getAll();
		return patients;
	}
	//---------------------------delete-----------------//
	
	@Override
	public boolean deletePatById(Integer patientId) {
		Boolean result = dao.deleteById(patientId);
		return result;
		// TODO Auto-generated method stub
		
	}
	
	//-------------------------create user----------------//
	
	@Override
    public boolean createUser(String email, String password) {
		User user = new User(email, password);
        return dao.createUser(user);
    }
	
	//----------------------login---------------------//
	
    @Override
    public boolean validateUser(String email, String password) {
        return dao.validateUser(email, password);
    }

}
