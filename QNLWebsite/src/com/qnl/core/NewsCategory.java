package com.qnl.core;


import java.io.Serializable;
import javax.persistence.*;

import java.sql.Timestamp;

import java.util.Set;


/**
 * The persistent class for the news_category database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name="NewsCategory.findByID",query="SELECT nc FROM NewsCategory nc WHERE nc.id = :ncID"),
	@NamedQuery(name="NewsCategory.findAllNewsCategories",query="SELECT nc FROM NewsCategory nc"),
})
@Table(name="news_category")
public class NewsCategory implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findByID = "NewsCategory.findByID";
	public static final String findAllNewsCategories = "NewsCategory.findAllNewsCategories";
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private int id;

	@Column(name="CREATE_DATE")
	private Timestamp createDate;

	private String name;

	@Column(name="NAME_AR")
	private String nameAr;

	private String remarks;

	//bi-directional many-to-one association to User
    @ManyToOne
	private User user;

	//bi-directional many-to-one association to NewsItem
	@OneToMany(mappedBy="newsCategory")
	private Set<NewsItem> newsItems;

    public NewsCategory() {
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

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public Set<NewsItem> getNewsItems() {
		return this.newsItems;
	}

	public void setNewsItems(Set<NewsItem> newsItems) {
		this.newsItems = newsItems;
	}

	

}