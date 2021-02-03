package org.gac.lzj.avnt.entities;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "borrow_car", schema = "avntmanagement", catalog = "")
public class BorrowCarEntity {
    private int borrowCarId;

    @Id
    @javax.persistence.Column(name = "borrow_Car_Id", nullable = false)
    public int getBorrowCarId() {
        return borrowCarId;
    }

    public void setBorrowCarId(int borrowCarId) {
        this.borrowCarId = borrowCarId;
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

    private String borrowName;

    @Basic
    @javax.persistence.Column(name = "borrow_Name", nullable = true, length = 32)
    public String getBorrowName() {
        return borrowName;
    }

    public void setBorrowName(String borrowName) {
        this.borrowName = borrowName;
    }

    private String borrowPhone;

    @Basic
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

        BorrowCarEntity that = (BorrowCarEntity) o;

        if (borrowCarId != that.borrowCarId) return false;
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
        int result = borrowCarId;
        result = 31 * result + (borrowTime != null ? borrowTime.hashCode() : 0);
        result = 31 * result + (borrowReturnTime != null ? borrowReturnTime.hashCode() : 0);
        result = 31 * result + (borrowPurpose != null ? borrowPurpose.hashCode() : 0);
        result = 31 * result + (borrowCount != null ? borrowCount.hashCode() : 0);
        result = 31 * result + (borrowName != null ? borrowName.hashCode() : 0);
        result = 31 * result + (borrowPhone != null ? borrowPhone.hashCode() : 0);
        return result;
    }
}
