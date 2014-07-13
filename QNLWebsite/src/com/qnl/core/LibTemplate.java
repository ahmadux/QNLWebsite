package com.qnl.core;

import java.io.Serializable;
import javax.persistence.*;

import java.sql.Timestamp;




/**
 * The persistent class for the lib_template database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name="LibTemplate.findByID",query="SELECT lt FROM LibTemplate lt WHERE lt.id = :ltID"),
	@NamedQuery(name="LibTemplate.findAll",query="SELECT lt FROM LibTemplate lt")
})
@Table(name="lib_template")
public class LibTemplate implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findByID = "LibTemplate.findByID";
	public static final String findAll = "LibTemplate.findAll";
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

	@Column(name="DESC_IMAGE")
	private String descImage;

	private String description;

	private String name;

	private String remarks;

	//bi-directional many-to-one association to LibPage
	//@OneToMany(mappedBy="libTemplate")
	//private Set<LibPage> libPages;

	//bi-directional many-to-one association to User
    @ManyToOne
	private User user;

    public LibTemplate() {
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

	public String getDescImage() {
		return this.descImage;
	}

	public void setDescImage(String descImage) {
		this.descImage = descImage;
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

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	//public Set<LibPage> getLibPages() {
	//	return this.libPages;
	//}

	//public void setLibPages(Set<LibPage> libPages) {
	//	this.libPages = libPages;
	//}
	

	
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	

	
}