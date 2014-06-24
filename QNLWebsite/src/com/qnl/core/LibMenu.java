package com.qnl.core;

import java.io.Serializable;
import java.sql.Timestamp;

import java.util.Set;

import javax.persistence.*;



/**
 * The persistent class for the lib_menu database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name="LibMenu.findByID",query="SELECT lm FROM LibMenu lm WHERE lm.id = :lmID"),
	@NamedQuery(name="LibMenu.findAllMenuParents",query="SELECT lm FROM LibMenu lm WHERE lm.parentId = -1 AND lm.approved = 1 ORDER BY lm.order"),
	@NamedQuery(name="LibMenu.findAllMenuChildren",query="SELECT lm FROM LibMenu lm WHERE lm.parentId = :lm_pID AND lm.approved = 1 ORDER BY lm.order"),
	@NamedQuery(name="LibMenu.findAll",query="SELECT lm FROM LibMenu lm ORDER BY lm.parentId, lm.order")
})

@Table(name="lib_menu")
public class LibMenu implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findByID = "LibMenu.findByID";
	public static final String findAllMenuParents = "LibMenu.findAllMenuParents";
	public static final String findAllMenuChildren = "LibMenu.findAllMenuChildren";
	public static final String findAll = "LibMenu.findAll";
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)	
	private int id;

	private byte approved;

	@Column(name="CREATE_DATE")
	private Timestamp createDate;

	private String extra2;

	@Column(name="`ORDER`")
	private int order;

	@Column(name="PARENT_ID")
	private int parentId;

	private String remarks;

	private String text;

	@Column(name="TEXT_AR")
	private String textAr;

	//bi-directional many-to-one association to CustomUrl
    @ManyToOne
	private CustomUrl customUrl;

	//bi-directional many-to-one association to User
    @ManyToOne
	private User user;

	//bi-directional many-to-one association to LibPage
	@OneToMany(mappedBy="libMenu")
	private Set<LibPage> libPages;

    public LibMenu() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public byte getApproved() {
		return this.approved;
	}

	public void setApproved(byte approved) {
		this.approved = approved;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public String getExtra2() {
		return this.extra2;
	}

	public void setExtra2(String extra2) {
		this.extra2 = extra2;
	}

	public int getOrder() {
		return this.order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	public int getParentId() {
		return this.parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getTextAr() {
		return this.textAr;
	}

	public void setTextAr(String textAr) {
		this.textAr = textAr;
	}

	public CustomUrl getCustomUrl() {
		return this.customUrl;
	}

	public void setCustomUrl(CustomUrl customUrl) {
		this.customUrl = customUrl;
	}
	
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public Set<LibPage> getLibPages() {
		return this.libPages;
	}

	public void setLibPages(Set<LibPage> libPages) {
		this.libPages = libPages;
	}
	

	
	
}