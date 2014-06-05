package com.qnl.core;

import java.io.Serializable;
import javax.persistence.*;

import java.sql.Timestamp;


/**
 * The persistent class for the dbase_n_collect database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name = "DbaseNCollect.findAll", query = "SELECT dbnc FROM DbaseNCollect dbnc"),
})
@Table(name="dbase_n_collect")
public class DbaseNCollect implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findAll = "DbaseNCollect.findAll";
	
	@Id
	private int id;

	private String access;

	@Column(name="ACCESS_AR")
	private String accessAr;

	@Column(name="CREATE_DATE")
	private Timestamp createDate;

	private String description;

	@Column(name="DESCRIPTION_AR")
	private String descriptionAr;

	private String keywords;

	@Column(name="KEYWORDS_AR")
	private String keywordsAr;

	private String languages;

	@Column(name="LANGUAGES_AR")
	private String languagesAr;

	private String logo;

	private String name;

	@Column(name="NAME_AR")
	private String nameAr;

	private String section;

	@Column(name="SECTION_AR")
	private String sectionAr;

	@Column(name="`SHOW`")
	private byte show;

	@Column(name="TYPE")
	private String type;

	private String url;

	@Column(name="URL_AR")
	private String urlAr;

	//bi-directional many-to-one association to User
    @ManyToOne
	private User user;

    public DbaseNCollect() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccess() {
		return this.access;
	}

	public void setAccess(String access) {
		this.access = access;
	}

	public String getAccessAr() {
		return this.accessAr;
	}

	public void setAccessAr(String accessAr) {
		this.accessAr = accessAr;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public Object getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Object getDescriptionAr() {
		return this.descriptionAr;
	}

	public void setDescriptionAr(String descriptionAr) {
		this.descriptionAr = descriptionAr;
	}

	public String getKeywords() {
		return this.keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getKeywordsAr() {
		return this.keywordsAr;
	}

	public void setKeywordsAr(String keywordsAr) {
		this.keywordsAr = keywordsAr;
	}

	public String getLanguages() {
		return this.languages;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}

	public String getLanguagesAr() {
		return this.languagesAr;
	}

	public void setLanguagesAr(String languagesAr) {
		this.languagesAr = languagesAr;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameAr() {
		return this.nameAr;
	}

	public void setNameAr(String nameAr) {
		this.nameAr = nameAr;
	}

	public String getSection() {
		return this.section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getSectionAr() {
		return this.sectionAr;
	}

	public void setSectionAr(String sectionAr) {
		this.sectionAr = sectionAr;
	}

	public Object getShow() {
		return this.show;
	}

	public void setShow(byte show) {
		this.show = show;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
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
	
}