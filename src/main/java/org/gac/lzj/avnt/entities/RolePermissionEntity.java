package org.gac.lzj.avnt.entities;

import javax.persistence.Entity;

@Entity
@javax.persistence.Table(name = "role_permission", schema = "avntmanagement", catalog = "")
public class RolePermissionEntity {
    private int rolePermissionId;

    @javax.persistence.Id
    @javax.persistence.Column(name = "role_permission_Id", nullable = false)
    public int getRolePermissionId() {
        return rolePermissionId;
    }

    public void setRolePermissionId(int rolePermissionId) {
        this.rolePermissionId = rolePermissionId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RolePermissionEntity that = (RolePermissionEntity) o;

        if (rolePermissionId != that.rolePermissionId) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return rolePermissionId;
    }
}
