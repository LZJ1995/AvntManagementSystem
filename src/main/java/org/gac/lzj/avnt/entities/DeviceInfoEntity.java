package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;


public class DeviceInfoEntity {
    private int deviceId;
    private Set<BorrowDetailInfoEntity> borrowDetailInfoEntities=new HashSet<BorrowDetailInfoEntity>();

    public Set<BorrowDetailInfoEntity> getBorrowDetailInfoEntities() {
        return borrowDetailInfoEntities;
    }

    public void setBorrowDetailInfoEntities(Set<BorrowDetailInfoEntity> borrowDetailInfoEntities) {
        this.borrowDetailInfoEntities = borrowDetailInfoEntities;
    }

    public int getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(int deviceId) {
        this.deviceId = deviceId;
    }

    private String deviceName;


    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    private String deviceType;


    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    private String deviceVersionFormat;


    public String getDeviceVersionFormat() {
        return deviceVersionFormat;
    }

    public void setDeviceVersionFormat(String deviceVersionFormat) {
        this.deviceVersionFormat = deviceVersionFormat;
    }

    private Timestamp deviceCreateTime;


    public Timestamp getDeviceCreateTime() {
        return deviceCreateTime;
    }

    public void setDeviceCreateTime(Timestamp deviceCreateTime) {
        this.deviceCreateTime = deviceCreateTime;
    }

    private String deviceStatus;

    public String getDeviceStatus() {
        return deviceStatus;
    }

    public void setDeviceStatus(String deviceStatus) {
        this.deviceStatus = deviceStatus;
    }

    private String deviceModel;

    public String getDeviceModel() {
        return deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    private String deviceMeid;


    public String getDeviceMeid() {
        return deviceMeid;
    }

    public void setDeviceMeid(String deviceMeid) {
        this.deviceMeid = deviceMeid;
    }

    private String deviceImei;


    public String getDeviceImei() {
        return deviceImei;
    }

    public void setDeviceImei(String deviceImei) {
        this.deviceImei = deviceImei;
    }

    private String deviceMemory;


    public String getDeviceMemory() {
        return deviceMemory;
    }

    public void setDeviceMemory(String deviceMemory) {
        this.deviceMemory = deviceMemory;
    }

    private String deviceAccountPassword;


    public String getDeviceAccountPassword() {
        return deviceAccountPassword;
    }

    public void setDeviceAccountPassword(String deviceAccountPassword) {
        this.deviceAccountPassword = deviceAccountPassword;
    }

    private String devicePhone;

    public String getDevicePhone() {
        return devicePhone;
    }

    public void setDevicePhone(String devicePhone) {
        this.devicePhone = devicePhone;
    }

    private String deviceRemarks;


    public String getDeviceRemarks() {
        return deviceRemarks;
    }

    public void setDeviceRemarks(String deviceRemarks) {
        this.deviceRemarks = deviceRemarks;
    }

}
