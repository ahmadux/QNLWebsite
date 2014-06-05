package com.qnl.core;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;


import javax.persistence.*;


/**
 * The persistent class for the custom_url database table.
 * 
 */
@NamedQueries({
	@NamedQuery(name="CustomUrl.findByFriendlyName",query="SELECT cu FROM CustomUrl cu WHERE cu.friendlyName = :fName"),
	@NamedQuery(name="CustomUrl.findAll",query="SELECT cu FROM CustomUrl cu"),
})
@Entity
@Table(name="custom_url")
public class CustomUrl implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findByFriendlyName = "CustomUrl.findByFriendlyName";
	public static final String findAll = "CustomUrl.findAll";
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private int id;

	@Column(name="CREATE_DATE", nullable=false)
	private Timestamp createDate;

	@Column(name="FRIENDLY_NAME", nullable=false, length=100)
	private String friendlyName;

	@Column(nullable=false, length=255)
	private String url;

	@Column(name="URL_AR", nullable=false, length=255)
	private String urlAr;

	//bi-directional many-to-one association to User
    @ManyToOne
	@JoinColumn(name="USER_ID", nullable=false)
	private User user;

	//bi-directional many-to-one association to LibMenu
	@OneToMany(mappedBy="customUrl")
	private List<LibMenu> libMenus;

    public CustomUrl() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getFriendlyName() {
		return this.friendlyName;
	}

	public void setFriendlyName(String friendlyName) {
		this.friendlyName = friendlyName;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUrlAr() {
		return this.urlAr;
	}

	public void setUrlAr(String urlAr) {
		this.urlAr = urlAr;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public List<LibMenu> getLibMenus() {
		return this.libMenus;
	}

	public void setLibMenus(List<LibMenu> libMenus) {
		this.libMenus = libMenus;
	}

}