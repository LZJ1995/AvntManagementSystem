package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "device_info", schema = "avntmanagement", catalog = "")
public class DeviceInfoEntity {
    private int deviceId;

    @javax.persistence.Id
    @javax.persistence.Column(name = "device_Id", nullable = false)
    public int getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(int deviceId) {
        this.deviceId = deviceId;
    }

    private String deviceName;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_Name", nullable = false, length = 32)
    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }

    private String deviceType;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_Type", nullable = false, length = 32)
    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType;
    }

    private String deviceVersionFormat;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_Version_Format", nullable = false, length = 32)
    public String getDeviceVersionFormat() {
        return deviceVersionFormat;
    }

    public void setDeviceVersionFormat(String deviceVersionFormat) {
        this.deviceVersionFormat = deviceVersionFormat;
    }

    private Timestamp deviceCreateTime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_CreateTime", nullable = false)
    public Timestamp getDeviceCreateTime() {
        return deviceCreateTime;
    }

    public void setDeviceCreateTime(Timestamp deviceCreateTime) {
        this.deviceCreateTime = deviceCreateTime;
    }

    private String deviceStatus;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_Status", nullable = false, length = 32)
    public String getDeviceStatus() {
        return deviceStatus;
    }

    public void setDeviceStatus(String deviceStatus) {
        this.deviceStatus = deviceStatus;
    }

    private String deviceModel;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_Model", nullable = true, length = 32)
    public String getDeviceModel() {
        return deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    private String deviceMeid;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_MEID", nullable = true, length = 32)
    public String getDeviceMeid() {
        return deviceMeid;
    }

    public void setDeviceMeid(String deviceMeid) {
        this.deviceMeid = deviceMeid;
    }

    private String deviceImei;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_IMEI", nullable = true, length = 32)
    public String getDeviceImei() {
        return deviceImei;
    }

    public void setDeviceImei(String deviceImei) {
        this.deviceImei = deviceImei;
    }

    private String deviceMemory;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_Memory", nullable = true, length = 32)
    public String getDeviceMemory() {
        return deviceMemory;
    }

    public void setDeviceMemory(String deviceMemory) {
        this.deviceMemory = deviceMemory;
    }

    private String deviceAccountPassword;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_AccountPassword", nullable = true, length = 64)
    public String getDeviceAccountPassword() {
        return deviceAccountPassword;
    }

    public void setDeviceAccountPassword(String deviceAccountPassword) {
        this.deviceAccountPassword = deviceAccountPassword;
    }

    private String devicePhone;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "device_Phone", nullable = true, length = 32)
    public String getDevicePhone() {
        return devicePhone;
    }

    public void setDevicePhone(String devicePhone) {
        this.devicePhone = devicePhone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DeviceInfoEntity that = (DeviceInfoEntity) o;

        if (deviceId != that.deviceId) return false;
        if (deviceName != null ? !deviceName.equals(that.deviceName) : that.deviceName != null) return false;
        if (deviceType != null ? !deviceType.equals(that.deviceType) : that.deviceType != null) return false;
        if (deviceVersionFormat != null ? !deviceVersionFormat.equals(that.deviceVersionFormat) : that.deviceVersionFormat != null)
            return false;
        if (deviceCreateTime != null ? !deviceCreateTime.equals(that.deviceCreateTime) : that.deviceCreateTime != null)
            return false;
        if (deviceStatus != null ? !deviceStatus.equals(that.deviceStatus) : that.deviceStatus != null) return false;
        if (deviceModel != null ? !deviceModel.equals(that.deviceModel) : that.deviceModel != null) return false;
        if (deviceMeid != null ? !deviceMeid.equals(that.deviceMeid) : that.deviceMeid != null) return false;
        if (deviceImei != null ? !deviceImei.equals(that.deviceImei) : that.deviceImei != null) return false;
        if (deviceMemory != null ? !deviceMemory.equals(that.deviceMemory) : that.deviceMemory != null) return false;
        if (deviceAccountPassword != null ? !deviceAccountPassword.equals(that.deviceAccountPassword) : that.deviceAccountPassword != null)
            return false;
        if (devicePhone != null ? !devicePhone.equals(that.devicePhone) : that.devicePhone != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = deviceId;
        result = 31 * result + (deviceName != null ? deviceName.hashCode() : 0);
        result = 31 * result + (deviceType != null ? deviceType.hashCode() : 0);
        result = 31 * result + (deviceVersionFormat != null ? deviceVersionFormat.hashCode() : 0);
        result = 31 * result + (deviceCreateTime != null ? deviceCreateTime.hashCode() : 0);
        result = 31 * result + (deviceStatus != null ? deviceStatus.hashCode() : 0);
        result = 31 * result + (deviceModel != null ? deviceModel.hashCode() : 0);
        result = 31 * result + (deviceMeid != null ? deviceMeid.hashCode() : 0);
        result = 31 * result + (deviceImei != null ? deviceImei.hashCode() : 0);
        result = 31 * result + (deviceMemory != null ? deviceMemory.hashCode() : 0);
        result = 31 * result + (deviceAccountPassword != null ? deviceAccountPassword.hashCode() : 0);
        result = 31 * result + (devicePhone != null ? devicePhone.hashCode() : 0);
        return result;
    }
}
