package com.qnl.core;

import java.io.Serializable;
import javax.persistence.*;

import com.qnl.facade.RoleFacade;

import java.util.ArrayList;
import java.util.List;


/**
 * The persistent class for the user database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name="User.findAllUsers",query="SELECT u FROM User u")
	
})
@Table(name="user")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
		
	public static final String findAllUsers = "User.findAllUsers";
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(insertable=false, updatable=false, unique=true, nullable=false)
	private int id;

	@Column(nullable=false, length=100)
	private String email;

	@Column(nullable=false, length=100)
	private String name;

	@Column(length=255)
	private String notes;

	@Column(nullable=false, length=15)
	private String password;

	//bi-directional many-to-one association to CustomUrl
	@OneToMany(mappedBy="user")
	private List<CustomUrl> customUrls;

	//bi-directional many-to-one association to DbaseNCollect
	@OneToMany(mappedBy="user")
	private List<DbaseNCollect> dbaseNCollects;

	//bi-directional many-to-one association to LibMenu
	@OneToMany(mappedBy="user")
	private List<LibMenu> libMenus;

	//bi-directional many-to-one association to LibPage
	@OneToMany(mappedBy="user")
	private List<LibPage> libPages;

	//bi-directional many-to-one association to LibReg
	@OneToMany(mappedBy="user")
	private List<LibRegistration> libRegs;

	//bi-directional many-to-one association to LibTemplate
	@OneToMany(mappedBy="user")
	private List<LibTemplate> libTemplates;

	//bi-directional many-to-one association to NewsCategory
	@OneToMany(mappedBy="user")
	private List<NewsCategory> newsCategories;

	//bi-directional many-to-one association to NewsItem
	@OneToMany(mappedBy="user")
	private List<NewsItem> newsItems;

	//bi-directional many-to-one association to UserRole
	@OneToMany(mappedBy="user",fetch = FetchType.EAGER)
	private List<UserRole> userRoles;

    public User() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public boolean validate(String pwd)
	{
		return pwd.equals(password);
	}
	
	public List<CustomUrl> getCustomUrls() {
		return this.customUrls;
	}

	public void setCustomUrls(List<CustomUrl> customUrls) {
		this.customUrls = customUrls;
	}
	
	public List<DbaseNCollect> getDbaseNCollects() {
		return this.dbaseNCollects;
	}

	public void setDbaseNCollects(List<DbaseNCollect> dbaseNCollects) {
		this.dbaseNCollects = dbaseNCollects;
	}
	
	public List<LibMenu> getLibMenus() {
		return this.libMenus;
	}

	public void setLibMenus(List<LibMenu> libMenus) {
		this.libMenus = libMenus;
	}
	
	public List<LibPage> getLibPages() {
		return this.libPages;
	}

	public void setLibPages(List<LibPage> libPages) {
		this.libPages = libPages;
	}
	
	public List<LibRegistration> getLibRegs() {
		return this.libRegs;
	}

	public void setLibRegs(List<LibRegistration> libRegs) {
		this.libRegs = libRegs;
	}
	
	public List<LibTemplate> getLibTemplates() {
		return this.libTemplates;
	}

	public void setLibTemplates(List<LibTemplate> libTemplates) {
		this.libTemplates = libTemplates;
	}
	
	public List<NewsCategory> getNewsCategories() {
		return this.newsCategories;
	}

	public void setNewsCategories(List<NewsCategory> newsCategories) {
		this.newsCategories = newsCategories;
	}
	
	public List<NewsItem> getNewsItems() {
		return this.newsItems;
	}

	public void setNewsItems(List<NewsItem> newsItems) {
		this.newsItems = newsItems;
	}
	
	public List<UserRole> getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(List<UserRole> userRoles) {
		this.userRoles = userRoles;
	}
	
	//public boolean hasRole(Role r)
	//{
	//	return this.getUserRoles().contains((Object)r);				
	//}
	
	private boolean hasRole(String strRole)
	{
		boolean hasIt = false;
		for(UserRole ur: this.getUserRoles())
			if(ur.getRole().getName().toLowerCase().equals(strRole.toLowerCase()))
			{
				hasIt = true;
				break;
			}
		return hasIt;
	}
	
	public boolean isAdmin()
	{
		return hasRole("ADMINISTRATOR");
	}
		
	public List<Role> getAllRoles()
	{
		if(isAdmin())
			return (new RoleFacade()).getAllRoles();
		List<Role> roles = new ArrayList<Role>();
		for(UserRole ur: this.getUserRoles())
		{
			
			roles.add(ur.getRole());
		}
		return roles;
	}
	
	
}