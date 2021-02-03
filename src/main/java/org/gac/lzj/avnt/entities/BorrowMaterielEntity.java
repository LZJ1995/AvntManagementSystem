package org.gac.lzj.avnt.entities;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "borrow_materiel", schema = "avntmanagement", catalog = "")
public class BorrowMaterielEntity {
    private int borrowMaterielId;

    @Id
    @javax.persistence.Column(name = "borrow_materiel_Id", nullable = false)
    public int getBorrowMaterielId() {
        return borrowMaterielId;
    }

    public void setBorrowMaterielId(int borrowMaterielId) {
        this.borrowMaterielId = borrowMaterielId;
    }

    private Timestamp borrowTime;

    @Basic
    @javax.persistence.Column(name = "borrow_time", nullable = true)
    public Timestamp getBorrowTime() {
        return borrowTime;
    }

    public void setBorrowTime(Timestamp borrowTime) {
        this.borrowTime = borrowTime;
    }

    private Timestamp borrowReturnTime;

    @Basic
    @javax.persistence.Column(name = "borrow_ReturnTime", nullable = true)
    public Timestamp getBorrowReturnTime() {
        return borrowReturnTime;
    }

    public void setBorrowReturnTime(Timestamp borrowReturnTime) {
        this.borrowReturnTime = borrowReturnTime;
    }

    private String borrowPurpose;

    @Basic
    @javax.persistence.Column(name = "borrow_Purpose", nullable = true, length = 32)
    public String getBorrowPurpose() {
        return borrowPurpose;
    }

    public void setBorrowPurpose(String borrowPurpose) {
        this.borrowPurpose = borrowPurpose;
    }

    private Integer borrowCount;

    @Basic
    @javax.persistence.Column(name = "borrow_count", nullable = true)
    public Integer getBorrowCount() {
        return borrowCount;
    }

    public void setBorrowCount(Integer borrowCount) {
        this.borrowCount = borrowCount;
    }

    private String borrowStates;

    @Basic
    @javax.persistence.Column(name = "borrow_States", nullable = true, length = 1)
    public String getBorrowStates() {
        return borrowStates;
    }

    public void setBorrowStates(String borrowStates) {
        this.borrowStates = borrowStates;
    }

    private String borrowName;

    @Basic
    @javax.persistence.Column(name = "borrow_Name", nullable = true, length = 32)
    public String getBorrowName() {
        return borrowName;
    }

    public void setBorrowName(String borrowName) {
        this.borrowName = borrowName;
    }

    private Integer borrowPhone;

    @Basic
    @javax.persistence.Column(name = "borrow_Phone", nullable = true)
    public Integer getBorrowPhone() {
        return borrowPhone;
    }

    public void setBorrowPhone(Integer borrowPhone) {
        this.borrowPhone = borrowPhone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BorrowMaterielEntity that = (BorrowMaterielEntity) o;

        if (borrowMaterielId != that.borrowMaterielId) return false;
        if (borrowTime != null ? !borrowTime.equals(that.borrowTime) : that.borrowTime != null) return false;
        if (borrowReturnTime != null ? !borrowReturnTime.equals(that.borrowReturnTime) : that.borrowReturnTime != null)
            return false;
        if (borrowPurpose != null ? !borrowPurpose.equals(that.borrowPurpose) : that.borrowPurpose != null)
            return false;
        if (borrowCount != null ? !borrowCount.equals(that.borrowCount) : that.borrowCount != null) return false;
        if (borrowStates != null ? !borrowStates.equals(that.borrowStates) : that.borrowStates != null) return false;
        if (borrowName != null ? !borrowName.equals(that.borrowName) : that.borrowName != null) return false;
        if (borrowPhone != null ? !borrowPhone.equals(that.borrowPhone) : that.borrowPhone != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = borrowMaterielId;
        result = 31 * result + (borrowTime != null ? borrowTime.hashCode() : 0);
        result = 31 * result + (borrowReturnTime != null ? borrowReturnTime.hashCode() : 0);
        result = 31 * result + (borrowPurpose != null ? borrowPurpose.hashCode() : 0);
        result = 31 * result + (borrowCount != null ? borrowCount.hashCode() : 0);
        result = 31 * result + (borrowStates != null ? borrowStates.hashCode() : 0);
        result = 31 * result + (borrowName != null ? borrowName.hashCode() : 0);
        result = 31 * result + (borrowPhone != null ? borrowPhone.hashCode() : 0);
        return result;
    }
}
