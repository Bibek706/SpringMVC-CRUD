package com.cglia.pm.dao;

import java.util.List;
import com.cglia.pm.model.Patient;
import com.cglia.pm.model.User;

public interface PatientDAO {

	public Integer save(Patient patient);
	
	public Integer update(Patient patient);
	
	public Patient showPatientById(Integer patientId);
	
	public Boolean deleteById(Integer patientId);
	
	public List<Patient> getAll();
	
	boolean createUser(User user);
	
    boolean validateUser(String email, String password);
}
