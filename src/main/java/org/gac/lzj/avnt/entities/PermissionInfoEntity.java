package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "permission_info", schema = "avntmanagement", catalog = "")
public class PermissionInfoEntity {
    private int permissionId;

    @javax.persistence.Id
    @javax.persistence.Column(name = "permission_Id", nullable = false)
    public int getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(int permissionId) {
        this.permissionId = permissionId;
    }

    private String permissionName;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Name", nullable = true, length = 32)
    public String getPermissionName() {
        return permissionName;
    }

    public void setPermissionName(String permissionName) {
        this.permissionName = permissionName;
    }

    private String permissionDescription;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Description", nullable = true, length = 512)
    public String getPermissionDescription() {
        return permissionDescription;
    }

    public void setPermissionDescription(String permissionDescription) {
        this.permissionDescription = permissionDescription;
    }

    private String permissionUrl;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Url", nullable = true, length = 128)
    public String getPermissionUrl() {
        return permissionUrl;
    }

    public void setPermissionUrl(String permissionUrl) {
        this.permissionUrl = permissionUrl;
    }

    private String permissionPerms;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Perms", nullable = true, length = 32)
    public String getPermissionPerms() {
        return permissionPerms;
    }

    public void setPermissionPerms(String permissionPerms) {
        this.permissionPerms = permissionPerms;
    }

    private Integer permissionParentId;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_parentId", nullable = true)
    public Integer getPermissionParentId() {
        return permissionParentId;
    }

    public void setPermissionParentId(Integer permissionParentId) {
        this.permissionParentId = permissionParentId;
    }

    private Integer permissionType;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Type", nullable = true)
    public Integer getPermissionType() {
        return permissionType;
    }

    public void setPermissionType(Integer permissionType) {
        this.permissionType = permissionType;
    }

    private Integer permissionOrderNum;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_OrderNum", nullable = true)
    public Integer getPermissionOrderNum() {
        return permissionOrderNum;
    }

    public void setPermissionOrderNum(Integer permissionOrderNum) {
        this.permissionOrderNum = permissionOrderNum;
    }

    private String permissionIcon;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Icon", nullable = true, length = 128)
    public String getPermissionIcon() {
        return permissionIcon;
    }

    public void setPermissionIcon(String permissionIcon) {
        this.permissionIcon = permissionIcon;
    }

    private String permissionStatus;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Status", nullable = true, length = 32)
    public String getPermissionStatus() {
        return permissionStatus;
    }

    public void setPermissionStatus(String permissionStatus) {
        this.permissionStatus = permissionStatus;
    }

    private Timestamp permissionCreateTime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_CreateTime", nullable = true)
    public Timestamp getPermissionCreateTime() {
        return permissionCreateTime;
    }

    public void setPermissionCreateTime(Timestamp permissionCreateTime) {
        this.permissionCreateTime = permissionCreateTime;
    }

    private Timestamp permissionUpdatetime;

    @javax.persistence.Basic
    @javax.persistence.Column(name = "permission_Updatetime", nullable = true)
    public Timestamp getPermissionUpdatetime() {
        return permissionUpdatetime;
    }

    public void setPermissionUpdatetime(Timestamp permissionUpdatetime) {
        this.permissionUpdatetime = permissionUpdatetime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PermissionInfoEntity that = (PermissionInfoEntity) o;

        if (permissionId != that.permissionId) return false;
        if (permissionName != null ? !permissionName.equals(that.permissionName) : that.permissionName != null)
            return false;
        if (permissionDescription != null ? !permissionDescription.equals(that.permissionDescription) : that.permissionDescription != null)
            return false;
        if (permissionUrl != null ? !permissionUrl.equals(that.permissionUrl) : that.permissionUrl != null)
            return false;
        if (permissionPerms != null ? !permissionPerms.equals(that.permissionPerms) : that.permissionPerms != null)
            return false;
        if (permissionParentId != null ? !permissionParentId.equals(that.permissionParentId) : that.permissionParentId != null)
            return false;
        if (permissionType != null ? !permissionType.equals(that.permissionType) : that.permissionType != null)
            return false;
        if (permissionOrderNum != null ? !permissionOrderNum.equals(that.permissionOrderNum) : that.permissionOrderNum != null)
            return false;
        if (permissionIcon != null ? !permissionIcon.equals(that.permissionIcon) : that.permissionIcon != null)
            return false;
        if (permissionStatus != null ? !permissionStatus.equals(that.permissionStatus) : that.permissionStatus != null)
            return false;
        if (permissionCreateTime != null ? !permissionCreateTime.equals(that.permissionCreateTime) : that.permissionCreateTime != null)
            return false;
        if (permissionUpdatetime != null ? !permissionUpdatetime.equals(that.permissionUpdatetime) : that.permissionUpdatetime != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = permissionId;
        result = 31 * result + (permissionName != null ? permissionName.hashCode() : 0);
        result = 31 * result + (permissionDescription != null ? permissionDescription.hashCode() : 0);
        result = 31 * result + (permissionUrl != null ? permissionUrl.hashCode() : 0);
        result = 31 * result + (permissionPerms != null ? permissionPerms.hashCode() : 0);
        result = 31 * result + (permissionParentId != null ? permissionParentId.hashCode() : 0);
        result = 31 * result + (permissionType != null ? permissionType.hashCode() : 0);
        result = 31 * result + (permissionOrderNum != null ? permissionOrderNum.hashCode() : 0);
        result = 31 * result + (permissionIcon != null ? permissionIcon.hashCode() : 0);
        result = 31 * result + (permissionStatus != null ? permissionStatus.hashCode() : 0);
        result = 31 * result + (permissionCreateTime != null ? permissionCreateTime.hashCode() : 0);
        result = 31 * result + (permissionUpdatetime != null ? permissionUpdatetime.hashCode() : 0);
        return result;
    }
}
