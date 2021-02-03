package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "borrow_device", schema = "avntmanagement", catalog = "")
public class BorrowDeviceEntity {
    private int borrowDevceId;

    @javax.persistence.Id
    @javax.persistence.Column(name = "borrow_devce_Id", nullable = false)
    public int getBorrowDevceId() {
        return borrowDevceId;
    }

    public void setBorrowDevceId(int borrowDevceId) {
        this.borrowDevceId = borrowDevceId;
    }

    private Timestamp borrowTime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "borrow_time", nullable = true)
    public Timestamp getBorrowTime() {
        return borrowTime;
    }

    public void setBorrowTime(Timestamp borrowTime) {
        this.borrowTime = borrowTime;
    }

    private Timestamp borrowReturnTime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "borrow_ReturnTime", nullable = true)
    public Timestamp getBorrowReturnTime() {
        return borrowReturnTime;
    }

    public void setBorrowReturnTime(Timestamp borrowReturnTime) {
        this.borrowReturnTime = borrowReturnTime;
    }

    private String borrowPurpose;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "borrow_Purpose", nullable = true, length = 32)
    public String getBorrowPurpose() {
        return borrowPurpose;
    }

    public void setBorrowPurpose(String borrowPurpose) {
        this.borrowPurpose = borrowPurpose;
    }

    private Integer borrowCount;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "borrow_count", nullable = true)
    public Integer getBorrowCount() {
        return borrowCount;
    }

    public void setBorrowCount(Integer borrowCount) {
        this.borrowCount = borrowCount;
    }

    private String borrowName;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "borrow_Name", nullable = true, length = 32)
    public String getBorrowName() {
        return borrowName;
    }

    public void setBorrowName(String borrowName) {
        this.borrowName = borrowName;
    }

    private String borrowPhone;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "borrow_Phone", nullable = true, length = 32)
    public String getBorrowPhone() {
        return borrowPhone;
    }

    public void setBorrowPhone(String borrowPhone) {
        this.borrowPhone = borrowPhone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BorrowDeviceEntity that = (BorrowDeviceEntity) o;

        if (borrowDevceId != that.borrowDevceId) return false;
        if (borrowTime != null ? !borrowTime.equals(that.borrowTime) : that.borrowTime != null) return false;
        if (borrowReturnTime != null ? !borrowReturnTime.equals(that.borrowReturnTime) : that.borrowReturnTime != null)
            return false;
        if (borrowPurpose != null ? !borrowPurpose.equals(that.borrowPurpose) : that.borrowPurpose != null)
            return false;
        if (borrowCount != null ? !borrowCount.equals(that.borrowCount) : that.borrowCount != null) return false;
        if (borrowName != null ? !borrowName.equals(that.borrowName) : that.borrowName != null) return false;
        if (borrowPhone != null ? !borrowPhone.equals(that.borrowPhone) : that.borrowPhone != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = borrowDevceId;
        result = 31 * result + (borrowTime != null ? borrowTime.hashCode() : 0);
        result = 31 * result + (borrowReturnTime != null ? borrowReturnTime.hashCode() : 0);
        result = 31 * result + (borrowPurpose != null ? borrowPurpose.hashCode() : 0);
        result = 31 * result + (borrowCount != null ? borrowCount.hashCode() : 0);
        result = 31 * result + (borrowName != null ? borrowName.hashCode() : 0);
        result = 31 * result + (borrowPhone != null ? borrowPhone.hashCode() : 0);
        return result;
    }
}
