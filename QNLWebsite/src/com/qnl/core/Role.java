package com.qnl.core;


import java.io.Serializable;
import javax.persistence.*;

import java.util.Set;


/**
 * The persistent class for the role database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name="Role.findAllRoles",query="SELECT r FROM Role r")
})
@Table(name="role")
public class Role implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findAllRoles = "Role.findAllRoles";

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(insertable=false, updatable=false, unique=true, nullable=false)
	private int id;

	@Column(name="ACCESS_MANAGEMENT_PAGES")
	private String accessManagementPages;

	@Column(name="APPROVE_MANAGEMENT_PAGES")
	private String approveManagementPages;

	private String description;

	private String name;

	//bi-directional many-to-one association to UserRole
	@OneToMany(mappedBy="role")
	private Set<UserRole> userRoles;

    public Role() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccessManagementPages() {
		return this.accessManagementPages;
	}

	public void setAccessManagementPages(String accessManagementPages) {
		this.accessManagementPages = accessManagementPages;
	}

	public String getApproveManagementPages() {
		return this.approveManagementPages;
	}

	public void setApproveManagementPages(String approveManagementPages) {
		this.approveManagementPages = approveManagementPages;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	
	public Set<UserRole> getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(Set<UserRole> userRoles) {
		this.userRoles = userRoles;
	}
	
}