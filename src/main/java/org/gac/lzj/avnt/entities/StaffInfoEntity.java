package org.gac.lzj.avnt.entities;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "staff_info", schema = "avntmanagement", catalog = "")
public class StaffInfoEntity {
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

    @Id
    @Column(name = "staff_Id", nullable = false)
    public int getStaffId() {
        return staffId;
    }

    public void setStaffId(int staffId) {
        this.staffId = staffId;
    }

    @Basic
    @Column(name = "staff_Name", nullable = false, length = 128)
    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    @Basic
    @Column(name = "staff_Account", nullable = false, length = 128)
    public String getStaffAccount() {
        return staffAccount;
    }

    public void setStaffAccount(String staffAccount) {
        this.staffAccount = staffAccount;
    }

    @Basic
    @Column(name = "staff_Password", nullable = false, length = 128)
    public String getStaffPassword() {
        return staffPassword;
    }

    public void setStaffPassword(String staffPassword) {
        this.staffPassword = staffPassword;
    }

    @Basic
    @Column(name = "staff_Telephone", nullable = false, length = 128)
    public String getStaffTelephone() {
        return staffTelephone;
    }

    public void setStaffTelephone(String staffTelephone) {
        this.staffTelephone = staffTelephone;
    }

    @Basic
    @Column(name = "staff_Company", nullable = false, length = 128)
    public String getStaffCompany() {
        return staffCompany;
    }

    public void setStaffCompany(String staffCompany) {
        this.staffCompany = staffCompany;
    }

    @Basic
    @Column(name = "staff_Email", nullable = false, length = 128)
    public String getStaffEmail() {
        return staffEmail;
    }

    public void setStaffEmail(String staffEmail) {
        this.staffEmail = staffEmail;
    }

    @Basic
    @Column(name = "staff_Status", nullable = false)
    public int getStaffStatus() {
        return staffStatus;
    }

    public void setStaffStatus(int staffStatus) {
        this.staffStatus = staffStatus;
    }

    @Basic
    @Column(name = "staff_CreateTime", nullable = false)
    public Timestamp getStaffCreateTime() {
        return staffCreateTime;
    }

    public void setStaffCreateTime(Timestamp staffCreateTime) {
        this.staffCreateTime = staffCreateTime;
    }

    @Basic
    @Column(name = "staff_UpdateTime", nullable = false)
    public Timestamp getStaffUpdateTime() {
        return staffUpdateTime;
    }

    public void setStaffUpdateTime(Timestamp staffUpdateTime) {
        this.staffUpdateTime = staffUpdateTime;
    }

    @Basic
    @Column(name = "staff_LastLoginTime", nullable = false)
    public Timestamp getStaffLastLoginTime() {
        return staffLastLoginTime;
    }

    public void setStaffLastLoginTime(Timestamp staffLastLoginTime) {
        this.staffLastLoginTime = staffLastLoginTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StaffInfoEntity that = (StaffInfoEntity) o;

        if (staffId != that.staffId) return false;
        if (staffStatus != that.staffStatus) return false;
        if (staffName != null ? !staffName.equals(that.staffName) : that.staffName != null) return false;
        if (staffAccount != null ? !staffAccount.equals(that.staffAccount) : that.staffAccount != null) return false;
        if (staffPassword != null ? !staffPassword.equals(that.staffPassword) : that.staffPassword != null)
            return false;
        if (staffTelephone != null ? !staffTelephone.equals(that.staffTelephone) : that.staffTelephone != null)
            return false;
        if (staffCompany != null ? !staffCompany.equals(that.staffCompany) : that.staffCompany != null) return false;
        if (staffEmail != null ? !staffEmail.equals(that.staffEmail) : that.staffEmail != null) return false;
        if (staffCreateTime != null ? !staffCreateTime.equals(that.staffCreateTime) : that.staffCreateTime != null)
            return false;
        if (staffUpdateTime != null ? !staffUpdateTime.equals(that.staffUpdateTime) : that.staffUpdateTime != null)
            return false;
        if (staffLastLoginTime != null ? !staffLastLoginTime.equals(that.staffLastLoginTime) : that.staffLastLoginTime != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = staffId;
        result = 31 * result + (staffName != null ? staffName.hashCode() : 0);
        result = 31 * result + (staffAccount != null ? staffAccount.hashCode() : 0);
        result = 31 * result + (staffPassword != null ? staffPassword.hashCode() : 0);
        result = 31 * result + (staffTelephone != null ? staffTelephone.hashCode() : 0);
        result = 31 * result + (staffCompany != null ? staffCompany.hashCode() : 0);
        result = 31 * result + (staffEmail != null ? staffEmail.hashCode() : 0);
        result = 31 * result + staffStatus;
        result = 31 * result + (staffCreateTime != null ? staffCreateTime.hashCode() : 0);
        result = 31 * result + (staffUpdateTime != null ? staffUpdateTime.hashCode() : 0);
        result = 31 * result + (staffLastLoginTime != null ? staffLastLoginTime.hashCode() : 0);
        return result;
    }
}
