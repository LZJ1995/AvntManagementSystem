package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "materiel_info", schema = "avntmanagement", catalog = "")
public class MaterielInfoEntity {
    private int materielId;

    @javax.persistence.Id
    @javax.persistence.Column(name = "materiel_Id", nullable = false)
    public int getMaterielId() {
        return materielId;
    }

    public void setMaterielId(int materielId) {
        this.materielId = materielId;
    }

    private String materielProject;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "materiel_project", nullable = true, length = 32)
    public String getMaterielProject() {
        return materielProject;
    }

    public void setMaterielProject(String materielProject) {
        this.materielProject = materielProject;
    }

    private Timestamp materielCreateTime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "materiel_CreateTime", nullable = true)
    public Timestamp getMaterielCreateTime() {
        return materielCreateTime;
    }

    public void setMaterielCreateTime(Timestamp materielCreateTime) {
        this.materielCreateTime = materielCreateTime;
    }

    private String materielName;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "materiel_Name", nullable = true, length = 32)
    public String getMaterielName() {
        return materielName;
    }

    public void setMaterielName(String materielName) {
        this.materielName = materielName;
    }

    private String materielStock;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "materiel_Stock", nullable = true, length = 32)
    public String getMaterielStock() {
        return materielStock;
    }

    public void setMaterielStock(String materielStock) {
        this.materielStock = materielStock;
    }

    private String materielTotal;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "materiel_Total", nullable = true, length = 32)
    public String getMaterielTotal() {
        return materielTotal;
    }

    public void setMaterielTotal(String materielTotal) {
        this.materielTotal = materielTotal;
    }

    private String materielStatus;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "materiel_Status", nullable = true, length = 32)
    public String getMaterielStatus() {
        return materielStatus;
    }

    public void setMaterielStatus(String materielStatus) {
        this.materielStatus = materielStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        MaterielInfoEntity that = (MaterielInfoEntity) o;

        if (materielId != that.materielId) return false;
        if (materielProject != null ? !materielProject.equals(that.materielProject) : that.materielProject != null)
            return false;
        if (materielCreateTime != null ? !materielCreateTime.equals(that.materielCreateTime) : that.materielCreateTime != null)
            return false;
        if (materielName != null ? !materielName.equals(that.materielName) : that.materielName != null) return false;
        if (materielStock != null ? !materielStock.equals(that.materielStock) : that.materielStock != null)
            return false;
        if (materielTotal != null ? !materielTotal.equals(that.materielTotal) : that.materielTotal != null)
            return false;
        if (materielStatus != null ? !materielStatus.equals(that.materielStatus) : that.materielStatus != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = materielId;
        result = 31 * result + (materielProject != null ? materielProject.hashCode() : 0);
        result = 31 * result + (materielCreateTime != null ? materielCreateTime.hashCode() : 0);
        result = 31 * result + (materielName != null ? materielName.hashCode() : 0);
        result = 31 * result + (materielStock != null ? materielStock.hashCode() : 0);
        result = 31 * result + (materielTotal != null ? materielTotal.hashCode() : 0);
        result = 31 * result + (materielStatus != null ? materielStatus.hashCode() : 0);
        return result;
    }
}
