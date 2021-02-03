package org.gac.lzj.avnt.entities;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "car_info", schema = "avntmanagement", catalog = "")
public class CarInfoEntity {
    private int carId;

    @Id
    @javax.persistence.Column(name = "car_Id", nullable = false)
    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    private String carNumber;

    @Basic
    @javax.persistence.Column(name = "car_Number", nullable = true, length = 32)
    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    private String carProjectName;

    @Basic
    @javax.persistence.Column(name = "car_ProjectName", nullable = true, length = 32)
    public String getCarProjectName() {
        return carProjectName;
    }

    public void setCarProjectName(String carProjectName) {
        this.carProjectName = carProjectName;
    }

    private String carBorrow;

    @Basic
    @javax.persistence.Column(name = "car_Borrow", nullable = true, length = 1)
    public String getCarBorrow() {
        return carBorrow;
    }

    public void setCarBorrow(String carBorrow) {
        this.carBorrow = carBorrow;
    }

    private String carDirector;

    @Basic
    @javax.persistence.Column(name = "car_Director", nullable = true, length = 32)
    public String getCarDirector() {
        return carDirector;
    }

    public void setCarDirector(String carDirector) {
        this.carDirector = carDirector;
    }

    private Timestamp carCreateTime;

    @Basic
    @javax.persistence.Column(name = "car_CreateTime", nullable = true)
    public Timestamp getCarCreateTime() {
        return carCreateTime;
    }

    public void setCarCreateTime(Timestamp carCreateTime) {
        this.carCreateTime = carCreateTime;
    }

    private String carVin;

    @Basic
    @javax.persistence.Column(name = "car_VIN", nullable = true, length = 128)
    public String getCarVin() {
        return carVin;
    }

    public void setCarVin(String carVin) {
        this.carVin = carVin;
    }

    private String carTemporary;

    @Basic
    @javax.persistence.Column(name = "car_Temporary", nullable = true, length = 1)
    public String getCarTemporary() {
        return carTemporary;
    }

    public void setCarTemporary(String carTemporary) {
        this.carTemporary = carTemporary;
    }

    private String carTemporaryNumber;

    @Basic
    @javax.persistence.Column(name = "car_Temporary_Number", nullable = true, length = 32)
    public String getCarTemporaryNumber() {
        return carTemporaryNumber;
    }

    public void setCarTemporaryNumber(String carTemporaryNumber) {
        this.carTemporaryNumber = carTemporaryNumber;
    }

    private Date carTemporaryExpire;

    @Basic
    @javax.persistence.Column(name = "car_TemporaryExpire", nullable = true)
    public Date getCarTemporaryExpire() {
        return carTemporaryExpire;
    }

    public void setCarTemporaryExpire(Date carTemporaryExpire) {
        this.carTemporaryExpire = carTemporaryExpire;
    }

    private String carStatus;

    @Basic
    @javax.persistence.Column(name = "car_Status", nullable = true, length = 32)
    public String getCarStatus() {
        return carStatus;
    }

    public void setCarStatus(String carStatus) {
        this.carStatus = carStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CarInfoEntity that = (CarInfoEntity) o;

        if (carId != that.carId) return false;
        if (carNumber != null ? !carNumber.equals(that.carNumber) : that.carNumber != null) return false;
        if (carProjectName != null ? !carProjectName.equals(that.carProjectName) : that.carProjectName != null)
            return false;
        if (carBorrow != null ? !carBorrow.equals(that.carBorrow) : that.carBorrow != null) return false;
        if (carDirector != null ? !carDirector.equals(that.carDirector) : that.carDirector != null) return false;
        if (carCreateTime != null ? !carCreateTime.equals(that.carCreateTime) : that.carCreateTime != null)
            return false;
        if (carVin != null ? !carVin.equals(that.carVin) : that.carVin != null) return false;
        if (carTemporary != null ? !carTemporary.equals(that.carTemporary) : that.carTemporary != null) return false;
        if (carTemporaryNumber != null ? !carTemporaryNumber.equals(that.carTemporaryNumber) : that.carTemporaryNumber != null)
            return false;
        if (carTemporaryExpire != null ? !carTemporaryExpire.equals(that.carTemporaryExpire) : that.carTemporaryExpire != null)
            return false;
        if (carStatus != null ? !carStatus.equals(that.carStatus) : that.carStatus != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = carId;
        result = 31 * result + (carNumber != null ? carNumber.hashCode() : 0);
        result = 31 * result + (carProjectName != null ? carProjectName.hashCode() : 0);
        result = 31 * result + (carBorrow != null ? carBorrow.hashCode() : 0);
        result = 31 * result + (carDirector != null ? carDirector.hashCode() : 0);
        result = 31 * result + (carCreateTime != null ? carCreateTime.hashCode() : 0);
        result = 31 * result + (carVin != null ? carVin.hashCode() : 0);
        result = 31 * result + (carTemporary != null ? carTemporary.hashCode() : 0);
        result = 31 * result + (carTemporaryNumber != null ? carTemporaryNumber.hashCode() : 0);
        result = 31 * result + (carTemporaryExpire != null ? carTemporaryExpire.hashCode() : 0);
        result = 31 * result + (carStatus != null ? carStatus.hashCode() : 0);
        return result;
    }
}
