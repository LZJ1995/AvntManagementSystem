package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;
import java.sql.Timestamp;


public class PermissionInfoEntity {
    private int permissionId;


    public int getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(int permissionId) {
        this.permissionId = permissionId;
    }

    private String permissionName;


    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName;
    }

    private String permissionDescription;


    public String getPermissionDescription() {
        return permissionDescription;
    }

    public void setPermissionDescription(String permissionDescription) {
        this.permissionDescription = permissionDescription;
    }

    private String permissionUrl;


    public String getPermissionUrl() {
        return permissionUrl;
    }

    public void setPermissionUrl(String permissionUrl) {
        this.permissionUrl = permissionUrl;
    }

    private String permissionPerms;


    public String getPermissionPerms() {
        return permissionPerms;
    }

    public void setPermissionPerms(String permissionPerms) {
        this.permissionPerms = permissionPerms;
    }

    private Integer permissionParentId;


    public Integer getPermissionParentId() {
        return permissionParentId;
    }

    public void setPermissionParentId(Integer permissionParentId) {
        this.permissionParentId = permissionParentId;
    }

    private Integer permissionType;


    public Integer getPermissionType() {
        return permissionType;
    }

    public void setPermissionType(Integer permissionType) {
        this.permissionType = permissionType;
    }

    private Integer permissionOrderNum;


    public Integer getPermissionOrderNum() {
        return permissionOrderNum;
    }

    public void setPermissionOrderNum(Integer permissionOrderNum) {
        this.permissionOrderNum = permissionOrderNum;
    }

    private String permissionIcon;


    public String getPermissionIcon() {
        return permissionIcon;
    }

    public void setPermissionIcon(String permissionIcon) {
        this.permissionIcon = permissionIcon;
    }

    private String permissionStatus;


    public String getPermissionStatus() {
        return permissionStatus;
    }

    public void setPermissionStatus(String permissionStatus) {
        this.permissionStatus = permissionStatus;
    }

    private Timestamp permissionCreateTime;


    public Timestamp getPermissionCreateTime() {
        return permissionCreateTime;
    }

    public void setPermissionCreateTime(Timestamp permissionCreateTime) {
        this.permissionCreateTime = permissionCreateTime;
    }

    private Timestamp permissionUpdatetime;


    public Timestamp getPermissionUpdatetime() {
        return permissionUpdatetime;
    }

    public void setPermissionUpdatetime(Timestamp permissionUpdatetime) {
        this.permissionUpdatetime = permissionUpdatetime;
    }

    @Override
    public String toString() {
        return "PermissionInfoEntity{" +
                "permissionId=" + permissionId +
                ", permissionName='" + permissionName + '\'' +
                ", permissionDescription='" + permissionDescription + '\'' +
                ", permissionUrl='" + permissionUrl + '\'' +
                ", permissionPerms='" + permissionPerms + '\'' +
                ", permissionParentId=" + permissionParentId +
                ", permissionType=" + permissionType +
                ", permissionOrderNum=" + permissionOrderNum +
                ", permissionIcon='" + permissionIcon + '\'' +
                ", permissionStatus='" + permissionStatus + '\'' +
                ", permissionCreateTime=" + permissionCreateTime +
                ", permissionUpdatetime=" + permissionUpdatetime +
                '}';
    }
}
