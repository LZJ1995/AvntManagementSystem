package org.gac.lzj.avnt.entities;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

public class CarInfoEntity implements Serializable {
    private int carId;
    private String carNumber;
    private String carProjectName;
    private String carBorrow;
    private String carDirector;
    private String carVin;
    private String carTemporary;
    private Timestamp carCreateTime;
    private String carTemporaryNumber;
    private Date carTemporaryExpire;
    private String carStatus;
    private Set<BorrowDetailInfoEntity> borrowDetailInfoEntities=new HashSet<BorrowDetailInfoEntity>();

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }


    public String getCarProjectName() {
        return carProjectName;
    }

    public void setCarProjectName(String carProjectName) {
        this.carProjectName = carProjectName;
    }


    public String getCarBorrow() {
        return carBorrow;
    }

    public void setCarBorrow(String carBorrow) {
        this.carBorrow = carBorrow;
    }

    public String getCarDirector() {
        return carDirector;
    }

    public void setCarDirector(String carDirector) {
        this.carDirector = carDirector;
    }


    public Timestamp getCarCreateTime() {
        return carCreateTime;
    }

    public void setCarCreateTime(Timestamp carCreateTime) {
        this.carCreateTime = carCreateTime;
    }


    public String getCarVin() {
        return carVin;
    }

    public void setCarVin(String carVin) {
        this.carVin = carVin;
    }


    public String getCarTemporary() {
        return carTemporary;
    }

    public void setCarTemporary(String carTemporary) {
        this.carTemporary = carTemporary;
    }


    public String getCarTemporaryNumber() {
        return carTemporaryNumber;
    }

    public void setCarTemporaryNumber(String carTemporaryNumber) {
        this.carTemporaryNumber = carTemporaryNumber;
    }


    public Date getCarTemporaryExpire() {
        return carTemporaryExpire;
    }

    public void setCarTemporaryExpire(Date carTemporaryExpire) {
        this.carTemporaryExpire = carTemporaryExpire;
    }


    public String getCarStatus() {
        return carStatus;
    }

    public void setCarStatus(String carStatus) {
        this.carStatus = carStatus;
    }

    public Set<BorrowDetailInfoEntity> getBorrowDetailInfoEntities() {
        return borrowDetailInfoEntities;
    }

    public void setBorrowDetailInfoEntities(Set<BorrowDetailInfoEntity> borrowDetailInfoEntities) {
        this.borrowDetailInfoEntities = borrowDetailInfoEntities;
    }

    @Override
    public String toString() {
        return "CarInfoEntity{" +
                "carId=" + carId +
                ", carNumber='" + carNumber + '\'' +
                ", carProjectName='" + carProjectName + '\'' +
                ", carBorrow='" + carBorrow + '\'' +
                ", carDirector='" + carDirector + '\'' +
                ", carCreateTime=" + carCreateTime +
                ", carVin='" + carVin + '\'' +
                ", carTemporary='" + carTemporary + '\'' +
                ", carTemporaryNumber='" + carTemporaryNumber + '\'' +
                ", carTemporaryExpire=" + carTemporaryExpire +
                ", carStatus='" + carStatus + '\'' +
                '}';
    }
}
