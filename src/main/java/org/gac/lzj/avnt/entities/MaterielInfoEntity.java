package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;


public class MaterielInfoEntity {
    private int materielId;

    private Set<BorrowDetailInfoEntity> borrowDetailInfoEntities=new HashSet<BorrowDetailInfoEntity>();

    public Set<BorrowDetailInfoEntity> getBorrowDetailInfoEntities() {
        return borrowDetailInfoEntities;
    }

    public void setBorrowDetailInfoEntities(Set<BorrowDetailInfoEntity> borrowDetailInfoEntities) {
        this.borrowDetailInfoEntities = borrowDetailInfoEntities;
    }

    public int getMaterielId() {
        return materielId;
    }

    public void setMaterielId(int materielId) {
        this.materielId = materielId;
    }

    private String materielProject;


    public String getMaterielProject() {
        return materielProject;
    }

    public void setMaterielProject(String materielProject) {
        this.materielProject = materielProject;
    }

    private Timestamp materielCreateTime;


    public Timestamp getMaterielCreateTime() {
        return materielCreateTime;
    }

    public void setMaterielCreateTime(Timestamp materielCreateTime) {
        this.materielCreateTime = materielCreateTime;
    }

    private String materielName;

    public String getMaterielName() {
        return materielName;
    }

    public void setMaterielName(String materielName) {
        this.materielName = materielName;
    }

    private String materielStock;


    public String getMaterielStock() {
        return materielStock;
    }

    public void setMaterielStock(String materielStock) {
        this.materielStock = materielStock;
    }

    private String materielTotal;


    public String getMaterielTotal() {
        return materielTotal;
    }

    public void setMaterielTotal(String materielTotal) {
        this.materielTotal = materielTotal;
    }

    private String materielStatus;


    public String getMaterielStatus() {
        return materielStatus;
    }

    public void setMaterielStatus(String materielStatus) {
        this.materielStatus = materielStatus;
    }

    private String materielPosition;


    public String getMaterielPosition() {
        return materielPosition;
    }

    public void setMaterielPosition(String materielPosition) {
        this.materielPosition = materielPosition;
    }

    private String materielType;

    public String getMaterielType() {
        return materielType;
    }

    public void setMaterielType(String materielType) {
        this.materielType = materielType;
    }

    @Override
    public String toString() {
        return "MaterielInfoEntity{" +
                "materielId=" + materielId +
                ", materielProject='" + materielProject + '\'' +
                ", materielCreateTime=" + materielCreateTime +
                ", materielName='" + materielName + '\'' +
                ", materielStock='" + materielStock + '\'' +
                ", materielTotal='" + materielTotal + '\'' +
                ", materielStatus='" + materielStatus + '\'' +
                ", materielPosition='" + materielPosition + '\'' +
                ", materielType='" + materielType + '\'' +
                '}';
    }
}
