package com.cglia.pm.service;

import java.util.List;

import com.cglia.pm.model.Patient;

public interface PatientService {
	
	public Integer save(Patient patient);

	public Integer updatePat(Patient patient);

	public boolean deletePatById(Integer patientId);
	
	public Patient showPatientById(Integer patientId);
	
	public List<Patient> getAllPatient();
	
	boolean createUser(String email, String password);
	
    boolean validateUser(String email, String password);


}
