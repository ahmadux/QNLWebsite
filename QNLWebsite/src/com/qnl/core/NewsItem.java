package com.qnl.core;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;


/**
 * The persistent class for the news_item database table.
 * 
 */
@Entity
@Table(name="news_item")
@NamedQueries({
	@NamedQuery(name="NewsItem.findByID",query="SELECT ni FROM NewsItem ni WHERe ni.id = :niID"),
	@NamedQuery(name="NewsItem.findAllByCategoryID",query="SELECT ni FROM NewsItem ni WHERE ni.newsCategory.id = :ni_ncID ORDER BY ni.publishDate"),
	@NamedQuery(name="NewsItem.findAll",query="SELECT ni FROM NewsItem ni ORDER BY ni.publishDate")
})
public class NewsItem implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findByID = "NewsItem.findByID";
	public static final String findAll = "NewsItem.findAll";
	public static final String findAllByCategoryID = "NewsItem.findAllByCategoryID";
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private int id;

	private String content;

	@Column(name="CONTENT_AR")
	private String contentAr;

	@Column(name="CREATE_DATE")
	private Timestamp createDate;

	private byte display;

	private String keywords;

	@Column(name="KEYWORDS_AR")
	private String keywordsAr;

	private byte promote;

    @Temporal( TemporalType.DATE)
	@Column(name="PUBLISH_DATE")
	private Date publishDate;

	private String remarks;

	private String summary;

	@Column(name="SUMMARY_AR")
	private String summaryAr;
	
	private String image;

	private String title;

	@Column(name="TITLE_AR")
	private String titleAr;

	//bi-directional many-to-one association to NewsCategory
    @ManyToOne
	@JoinColumn(name="CATEGORY_ID")
	private NewsCategory newsCategory;

	//bi-directional many-to-one association to User
    @ManyToOne
	private User user;

    public NewsItem() {
    }

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContentAr() {
		return this.contentAr;
	}

	public void setContentAr(String contentAr) {
		this.contentAr = contentAr;
	}

	public Timestamp getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}

	public byte getDisplay() {
		return this.display;
	}

	public void setDisplay(byte display) {
		this.display = display;
	}
	
	public void setDisplay(String display) {
		if(display.equals("1"))
			this.display = 1;
		else
			this.display = 0;
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

	public byte getPromote() {
		return this.promote;
	}

	public void setPromote(byte promote) {
		this.promote = promote;
	}
	
	public void setPromote(String promote) {
		if(promote.equals("1"))
			this.display = 1;
		else
			this.display = 0;
	}

	public Date getPublishDate() {
		return this.publishDate;
	}

	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	
	public void setPublishDate(String publishDate) {
		try{
			this.publishDate = new SimpleDateFormat("dd/MM/yyyy").parse(publishDate);
		}catch(Exception e)
		{
			this.publishDate = new Date();
			e.printStackTrace();
		}
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

	public NewsCategory getNewsCategory() {
		return this.newsCategory;
	}

	public void setNewsCategory(NewsCategory newsCategory) {
		this.newsCategory = newsCategory;
	}
	
	public String getImage() {
		return this.image;
	}
	
	public String getImageThumbnail() {
		return this.image.replace(".jpg", "_tb.jpg");
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getFormattedPublishDate()
	{
		return new SimpleDateFormat("E, dd MMM yyyy").format(publishDate);
	}
	
}