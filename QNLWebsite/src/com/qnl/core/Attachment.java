package com.qnl.core;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.*;


/**
 * The persistent class for the attachment database table.
 * 
 */
@Entity
@Table(name="attachment")
@NamedQueries({
	@NamedQuery(name="Attachment.findByID",query="SELECT att FROM Attachment att WHERE att.id = :aID"),
	@NamedQuery(name="Attachment.findAll",query="SELECT att FROM Attachment att Order By att.id")
})
public class Attachment implements Serializable {
	private static final long serialVersionUID = 1L;
	
	public static final String findByID = "Attachment.findByID";

	public static final String findAll = "Attachment.findAll";
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private int id;

	@Column(name="ALTERNATE_TEXT", length=100)
	private String alternateText;

	@Column(name="ALTERNATE_TEXT_AR", length=100)
	private String alternateTextAr;

	@Column(name="CREATE_DATE")
	private Timestamp createDate;

	@Column(nullable=false, length=255)
	private String src;

	@Column(name="SRC_AR", nullable=false, length=255)
	private String srcAr;

	@Column(length=255)
	private String title;

	@Column(name="TITLE_AR", length=255)
	private String titleAr;

	@Column(nullable=false, length=15)
	private String type;

	//bi-directional many-to-one association to User
    @ManyToOne
	@JoinColumn(name="USER_ID", nullable=false)
	private User user;

    public Attachment() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAlternateText() {
		return this.alternateText;
	}

	public void setAlternateText(String alternateText) {
		this.alternateText = alternateText;
	}

	public String getAlternateTextAr() {
		return this.alternateTextAr;
	}

	public void setAlternateTextAr(String alternateTextAr) {
		this.alternateTextAr = alternateTextAr;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getSrc() {
		return this.src;
	}

	public void setSrc(String src) {
		this.src = src;
	}

	public String getSrcAr() {
		return this.srcAr;
	}

	public void setSrcAr(String srcAr) {
		this.srcAr = srcAr;
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

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}