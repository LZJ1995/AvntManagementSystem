package org.gac.lzj.avnt.entities;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
@javax.persistence.Table(name = "role_info", schema = "avntmanagement", catalog = "")
public class RoleInfoEntity {
    private int roleId;

    @Id
    @javax.persistence.Column(name = "role_Id", nullable = false)
    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    private String roleName;

    @Basic
    @javax.persistence.Column(name = "role_Name", nullable = true, length = 32)
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    private String roleDescription;

    @Basic
    @javax.persistence.Column(name = "role_Description", nullable = true, length = 128)
    public String getRoleDescription() {
        return roleDescription;
    }

    public void setRoleDescription(String roleDescription) {
        this.roleDescription = roleDescription;
    }

    private String roleStatus;

    @Basic
    @javax.persistence.Column(name = "role_Status", nullable = true, length = 32)
    public String getRoleStatus() {
        return roleStatus;
    }

    public void setRoleStatus(String roleStatus) {
        this.roleStatus = roleStatus;
    }

    private Timestamp roleCreateTime;

    @Basic
    @javax.persistence.Column(name = "role_CreateTime", nullable = true)
    public Timestamp getRoleCreateTime() {
        return roleCreateTime;
    }

    public void setRoleCreateTime(Timestamp roleCreateTime) {
        this.roleCreateTime = roleCreateTime;
    }

    private Timestamp roleUpdateTime;

    @Basic
    @javax.persistence.Column(name = "role_UpdateTime", nullable = true)
    public Timestamp getRoleUpdateTime() {
        return roleUpdateTime;
    }

    public void setRoleUpdateTime(Timestamp roleUpdateTime) {
        this.roleUpdateTime = roleUpdateTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RoleInfoEntity that = (RoleInfoEntity) o;

        if (roleId != that.roleId) return false;
        if (roleName != null ? !roleName.equals(that.roleName) : that.roleName != null) return false;
        if (roleDescription != null ? !roleDescription.equals(that.roleDescription) : that.roleDescription != null)
            return false;
        if (roleStatus != null ? !roleStatus.equals(that.roleStatus) : that.roleStatus != null) return false;
        if (roleCreateTime != null ? !roleCreateTime.equals(that.roleCreateTime) : that.roleCreateTime != null)
            return false;
        if (roleUpdateTime != null ? !roleUpdateTime.equals(that.roleUpdateTime) : that.roleUpdateTime != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = roleId;
        result = 31 * result + (roleName != null ? roleName.hashCode() : 0);
        result = 31 * result + (roleDescription != null ? roleDescription.hashCode() : 0);
        result = 31 * result + (roleStatus != null ? roleStatus.hashCode() : 0);
        result = 31 * result + (roleCreateTime != null ? roleCreateTime.hashCode() : 0);
        result = 31 * result + (roleUpdateTime != null ? roleUpdateTime.hashCode() : 0);
        return result;
    }
}
