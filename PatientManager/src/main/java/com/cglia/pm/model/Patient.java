package com.cglia.pm.model;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Patient {
    private String fullName;
    private Integer patientId;
    private String maritalStatus;
    private String gender;
    private Long mobNo;
    private Double payment;
    private String address;

    public Patient() {

    }

    public Patient(String fullName, Integer patientId, String maritalStatus, String gender, Long mobNo,
                   Double payment, String address) {
        super();
        this.fullName = fullName;
        this.patientId = patientId;
        this.maritalStatus = maritalStatus;
        this.gender = gender;
        this.mobNo = mobNo;
        this.payment = payment;
        this.address = address;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    /*public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }*/

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Long getMobNo() {
        return mobNo;
    }

    public void setMobNo(Long mobNo) {
        this.mobNo = mobNo;
    }

    public Double getPayment() {
        return payment;
    }

    public void setPayment(Double payment) {
        this.payment = payment;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        /*SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String dobString = dateFormat.format(this.dob);*/
        return "Patient [fullName=" + fullName + ", patientId=" + patientId +  ", maritalStatus="
                + maritalStatus + ", gender=" + gender + ", mobNo=" + mobNo + ", payment=" + payment + ", address="
                + address + "]";
    }
}
