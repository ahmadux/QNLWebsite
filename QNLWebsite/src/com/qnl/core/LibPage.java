package com.qnl.core;

import java.io.Serializable;
import javax.persistence.*;

import java.sql.Timestamp;

/**
 * The persistent class for the lib_page database table.
 * 
 */
@Entity
@NamedQueries({
		@NamedQuery(name = "LibPage.findByID", query = "SELECT lp FROM LibPage lp WHERE lp.id = :lpID"),
		@NamedQuery(name = "LibPage.findByMenuID", query = "SELECT lp FROM LibPage lp WHERE lp.libMenu.id = :lp_lmID"),
		@NamedQuery(name = "LibPage.findAll", query = "SELECT lp FROM LibPage lp") })
@Table(name = "lib_page")
public class LibPage implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findByID = "LibPage.findByID";
	public static final String findByMenuID = "LibPage.findByMenuID";
	public static final String findAll = "LibPage.findAll";

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)	
	private int id;

	@Column(name="CONTENT_FILE")
	private String contentFile;

	@Column(name="CONTENT_FILE_AR")
	private String contentFileAr;

	@Column(name="CREATE_DATE")
	private Timestamp createDate;

	private String image;

	private String keywords;

	@Column(name="KEYWORDS_AR")
	private String keywordsAr;

	private String remarks;

	private String summary;

	@Column(name="SUMMARY_AR")
	private String summaryAr;

	private String title;

	@Column(name="TITLE_AR")
	private String titleAr;

	//bi-directional many-to-one association to LibMenu
    @ManyToOne
	@JoinColumn(name="MENU_ID")
	private LibMenu libMenu;

	//bi-directional many-to-one association to LibTemplate
    @ManyToOne
	@JoinColumn(name="TEMPLATE_ID")
	private LibTemplate libTemplate;

	//bi-directional many-to-one association to User
    @ManyToOne
	private User user;

    public LibPage() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContentFile() {
		return this.contentFile;
	}

	public void setContentFile(String contentFile) {
		this.contentFile = contentFile;
	}

	public String getContentFileAr() {
		return this.contentFileAr;
	}

	public void setContentFileAr(String contentFileAr) {
		this.contentFileAr = contentFileAr;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
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

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getSummary() {
		return this.summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getSummaryAr() {
		return this.summaryAr;
	}

	public void setSummaryAr(String summaryAr) {
		this.summaryAr = summaryAr;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitleAr() {
		return this.titleAr;
	}

	public void setTitleAr(String titleAr) {
		this.titleAr = titleAr;
	}

	public LibMenu getLibMenu() {
		return this.libMenu;
	}

	public void setLibMenu(LibMenu libMenu) {
		this.libMenu = libMenu;
	}
	
	public LibTemplate getLibTemplate() {
		return this.libTemplate;
	}

	public void setLibTemplate(LibTemplate libTemplate) {
		this.libTemplate = libTemplate;
	}
	
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
		

}