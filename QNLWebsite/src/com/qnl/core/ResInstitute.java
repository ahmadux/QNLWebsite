package com.qnl.core;

import java.io.Serializable;

import javax.persistence.*;



@Entity
@NamedQueries({
	@NamedQuery(name = "ResInstitute.findAll", query = "SELECT rInstitute FROM ResInstitute rInstitute order by Name") 
})
@Table(name="research_institute")
public class ResInstitute implements Serializable{
	private static final long serialVersionUID = 1L;
	public static final String findAll = "ResInstitute.findAll";
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private int id;
	
	@Column(name="NAME")
	private String name;
	
	@Column(name="NAME_AR")
	private String nameAr;
	
	@Column(name="PHONE_NO")
	private String phoneNo;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="ORGANIZATION")
	private String organization;
	
	@Column(name="ORGANIZATION_AR")
	private String organizationAr;
	
	@Column(name="AREA_OF_RESEARCH")
	private String areaResearch;
	
	@Column(name="AREA_OF_RESEARCH_AR")
	private String areaResearchAr;
	
	@Column(name="ACTIVITIES")
	private String activities;
	
	@Column(name="ACTIVITIES_AR")
	private String activitiesAr;
	
	@Column(name="PHY_ADDRESS")
	private String phyAddress;
	
	@Column(name="PHY_ADDRESS_AR")
	private String phyAddressAr;
	
	@Column(name="MAIL_ADDRESS")
	private String mailAddress;
	
	@Column(name="MAIL_ADDRESS_AR")
	private String mailAddressAr;
	
	@Column(name="CONTACTS")
	private String contacts;
	
	@Column(name="CONTACTS_AR")
	private String contactsAr;
	
	@Column(name="FAX")
	private String fax;
	
	@Column(name="WEBSITE")
	private String website;
	
	@Column(name="FACEBOOK")
	private String facebook;
	
	@Column(name="TWITTER")
	private String twitter;
	
	@Column(name="OPERATION_HOURS")
	private String oHours;
	
	@Column(name="OPERATION_HOURS_AR")
	private String oHoursAr;

	public ResInstitute() {
		
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNameAr() {
		return nameAr;
	}

	public void setNameAr(String nameAr) {
		this.nameAr = nameAr;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getOrganizationAr() {
		return organizationAr;
	}

	public void setOrganizationAr(String organizationAr) {
		this.organizationAr = organizationAr;
	}

	public String getAreaResearch() {
		return areaResearch;
	}

	public void setAreaResearch(String areaResearch) {
		this.areaResearch = areaResearch;
	}

	public String getAreaResearchAr() {
		return areaResearchAr;
	}

	public void setAreaResearchAr(String areaResearchAr) {
		this.areaResearchAr = areaResearchAr;
	}

	public String getActivities() {
		return activities;
	}

	public void setActivities(String activities) {
		this.activities = activities;
	}

	public String getActivitiesAr() {
		return activitiesAr;
	}

	public void setActivitiesAr(String activitiesAr) {
		this.activitiesAr = activitiesAr;
	}

	public String getPhyAddress() {
		return phyAddress;
	}

	public void setPhyAddress(String phyAddress) {
		this.phyAddress = phyAddress;
	}

	public String getPhyAddressAr() {
		return phyAddressAr;
	}

	public void setPhyAddressAr(String phyAddressAr) {
		this.phyAddressAr = phyAddressAr;
	}

	public String getMailAddress() {
		return mailAddress;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	public String getMailAddressAr() {
		return mailAddressAr;
	}

	public void setMailAddressAr(String mailAddressAr) {
		this.mailAddressAr = mailAddressAr;
	}

	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}

	public String getContactsAr() {
		return contactsAr;
	}

	public void setContactsAr(String contactsAr) {
		this.contactsAr = contactsAr;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getoHours() {
		return oHours;
	}

	public void setoHours(String oHours) {
		this.oHours = oHours;
	}

	public String getoHoursAr() {
		return oHoursAr;
	}

	public void setoHoursAr(String oHoursAr) {
		this.oHoursAr = oHoursAr;
	}


	
	
}
