package com.cglia.pm.dao.impl;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cglia.pm.dao.PatientDAO;
import com.cglia.pm.db.util.DataBaseUtil;
import com.cglia.pm.model.Patient;
import com.cglia.pm.model.User;

@Repository
public class PatientDaoImpl implements PatientDAO {


	//------------------------Sign Up----------------------------//

	@Override
	public boolean createUser(User user) {
		try (Connection connection = DataBaseUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO UserCredentials (email, password) VALUES (?, ?)")) {
			preparedStatement.setString(1, user.getEmail());
			preparedStatement.setString(2, user.getPassword());
			int result = preparedStatement.executeUpdate();
			return result > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

	//-----------------------Login-----------------------------//

	@Override
	public boolean validateUser(String email, String password) {
		try (Connection connection = DataBaseUtil.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM UserCredentials WHERE email = ? AND password = ?")) {
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, password);
			try (ResultSet resultSet = preparedStatement.executeQuery()) {
				return resultSet.next(); // Returns true if a row is found
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}


	//-----------------------------Adding Patient----------------------//
	@Override
	public Integer save(Patient patient) {
		final String query = "INSERT INTO Patients (fullName, maritalStatus, gender, mobNo, payment, address) VALUES (?, ?, ?, ?, ?, ?)";
		int out = 0;
		try (
				Connection con = DataBaseUtil.getConnection();
				PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
				) {
			ps.setString(1, patient.getFullName());
			ps.setString(2, patient.getMaritalStatus());
			ps.setString(3, patient.getGender());
			ps.setLong(4, patient.getMobNo());
			ps.setDouble(5, patient.getPayment());
			ps.setString(6, patient.getAddress());

			out = ps.executeUpdate();
			if (out != 0) {
				try (ResultSet rs = ps.getGeneratedKeys()) {
					if (rs.next()) {
						Integer patientId = rs.getInt(1);
						System.out.println("Patient saved with id=" + patientId);
						return patientId;
					}
				}
			} else {
				System.out.println("Patient save failed");
				return out;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return out;
	}

	//----------------------------update patient-------------------------------//

	@Override
	public Integer update(Patient patient) {
		final String query = "UPDATE Patients SET fullName = ?, maritalStatus = ?, gender = ?, mobNo = ?, payment = ?, address = ? WHERE patientId = ?";
		int count = 0;
		try (Connection con = DataBaseUtil.getConnection();
				PreparedStatement stmt = con.prepareStatement(query)) {
			stmt.setString(1, patient.getFullName());
			stmt.setString(2, patient.getMaritalStatus());
			stmt.setString(3, patient.getGender());
			stmt.setLong(4, patient.getMobNo());
			stmt.setBigDecimal(5, BigDecimal.valueOf(patient.getPayment()));
			stmt.setString(6, patient.getAddress());
			stmt.setInt(7, patient.getPatientId());

			count = stmt.executeUpdate();
			if (count != 0) {
				System.out.println("Patient with ID: " + patient.getPatientId() + " is updated");
			} else {
				System.out.println("Update failed.");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}

	public Patient showPatientById(Integer patientId) {
		Patient patient = null;
		String query = "SELECT * FROM Patients WHERE patientId = ?";
		try(Connection con = DataBaseUtil.getConnection();
				PreparedStatement stmt = con.prepareStatement(query)){
			stmt.setInt(1, patientId);
			ResultSet result = stmt.executeQuery();
			if(result.next()) {
				patient= new Patient();
				patient.setPatientId(result.getInt("patientId"));
				patient.setFullName(result.getString("fullName"));
				patient.setMaritalStatus(result.getString("maritalStatus"));
				patient.setGender(result.getString("gender"));
				patient.setMobNo(result.getLong("mobNo"));
				patient.setPayment(result.getDouble("payment"));
				patient.setAddress(result.getString("address"));
			}
		}		
		catch(Exception e) {
			e.printStackTrace();
		}
		return patient;

	}


	//-------------------------delete patient--------------------------------//
	@Override
	public Boolean deleteById(Integer patientId) {
		try {
			Connection con = DataBaseUtil.getConnection();
			String query = "DELETE FROM Patients WHERE  patientId = ?";
			PreparedStatement stm = con.prepareStatement(query);
			stm.setInt(1, patientId);
			return stm.executeUpdate()>0;
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

	//---------------------show all patient---------------------------//

	@Override
	public List<Patient> getAll() {
		List<Patient> patients = new ArrayList<>();
		String query = "SELECT * FROM Patients"; 
		try (Connection con = DataBaseUtil.getConnection();
				PreparedStatement stm = con.prepareStatement(query)) { 
			ResultSet result = stm.executeQuery();
			while (result.next()) {
				Patient patient = new Patient();
				patient.setPatientId(result.getInt("patientId"));
				patient.setFullName(result.getString("fullName"));
				patient.setMaritalStatus(result.getString("maritalStatus"));
				patient.setGender(result.getString("gender"));
				patient.setMobNo(result.getLong("mobNo"));
				patient.setPayment(result.getDouble("payment"));
				patient.setAddress(result.getString("address"));
				patients.add(patient);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return patients;
	}

}
