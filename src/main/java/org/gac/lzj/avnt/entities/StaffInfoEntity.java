package org.gac.lzj.avnt.entities;


import com.fasterxml.jackson.annotation.JsonManagedReference;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;


public class StaffInfoEntity  implements Serializable{
    private int staffId;
    private String staffName;
    private String staffAccount;
    private String staffPassword;
    private String staffTelephone;
    private String staffCompany;
    private String staffEmail;
    private int staffStatus;
    private Timestamp staffCreateTime;
    private Timestamp staffUpdateTime;
    private Timestamp staffLastLoginTime;
    private Set<BorrowInfoEntity> borrowInfo= new HashSet();

    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public String getStaffAccount() {
        return staffAccount;
    }

    public void setStaffAccount(String staffAccount) {
        this.staffAccount = staffAccount;
    }

    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword;
    }

    public String getStaffTelephone() {
        return staffTelephone;
    }

    public void setStaffTelephone(String staffTelephone) {
        this.staffTelephone = staffTelephone;
    }

    public String getStaffCompany() {
        return staffCompany;
    }

    public void setStaffCompany(String staffCompany) {
        this.staffCompany = staffCompany;
    }

    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    public int getStaffStatus() {
        return staffStatus;
    }

    public void setStaffStatus(int staffStatus) {
        this.staffStatus = staffStatus;
    }

    public Timestamp getStaffCreateTime() {
        return staffCreateTime;
    }

    public void setStaffCreateTime(Timestamp staffCreateTime) {
        this.staffCreateTime = staffCreateTime;
    }

    public Timestamp getStaffUpdateTime() {
        return staffUpdateTime;
    }

    public void setStaffUpdateTime(Timestamp staffUpdateTime) {
        this.staffUpdateTime = staffUpdateTime;
    }

    public Timestamp getStaffLastLoginTime() {
        return staffLastLoginTime;
    }

    public void setStaffLastLoginTime(Timestamp staffLastLoginTime) {
        this.staffLastLoginTime = staffLastLoginTime;
    }

    public Set<BorrowInfoEntity> getBorrowInfo() {
        return borrowInfo;
    }

    public void setBorrowInfo(Set<BorrowInfoEntity> borrowInfo) {
        this.borrowInfo = borrowInfo;
    }
}
