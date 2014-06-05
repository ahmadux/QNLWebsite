package com.qnl.core;

import java.io.Serializable;
import javax.persistence.*;

import java.sql.Timestamp;


/**
 * The persistent class for the lib_reg database table.
 * 
 */
@Entity
@NamedQueries({
	@NamedQuery(name = "LibRegistration.findAll", query = "SELECT lreg FROM LibRegistration lreg order by libraryType, libraryName") 
})
@Table(name="lib_reg")
public class LibRegistration implements Serializable {
	private static final long serialVersionUID = 1L;
	public static final String findAll = "LibRegistration.findAll";

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(unique=true, nullable=false)
	private String id;

	@Column(nullable=false)
	private byte approved;

	@Column(name="CREATE_DATE", nullable=false)
	private Timestamp createDate;

	@Column(length=1000)
	private String libraryAccessConditions;

	@Column(length=1000)
	private String libraryAccessConditions_AR;

	@Column(length=100)
	private String libraryAffOrganization;

	@Column(length=255)
	private String libraryAffOrganization_AR;

	@Column(length=50)
	private String libraryColLangs;

	@Column(length=100)
	private String libraryColLangs_AR;

	@Column(length=100)
	private String libraryColSize;

	@Column(length=100)
	private String libraryColSize_AR;

	@Column(length=500)
	private String libraryContacts;

	@Column(length=500)
	private String libraryContacts_AR;

	@Column(length=100)
	private String libraryEmail;

	@Column(length=255)
	private String libraryFacebook;

	@Column(length=100)
	private String libraryFax;

	@Column(length=255)
	private String libraryMailAddress;

	@Column(length=255)
	private String libraryMailAddress_AR;

	@Column(nullable=false, length=100)
	private String libraryName;

	@Column(length=255)
	private String libraryName_AR;

	@Column(length=255)
	private String libraryOperationHours;

	@Column(length=255)
	private String libraryOperationHours_AR;

	@Column(length=100)
	private String libraryPhone;

	@Column(length=255)
	private String libraryPhyAddrress;

	@Column(length=255)
	private String libraryPhyAddrress_AR;

	@Column(nullable=false)
	private byte libraryPublicAccess;

	@Column(length=1000)
	private String libraryServices;

	@Column(length=2500)
	private String libraryServices_AR;

	@Column(length=1000)
	private String librarySpecialCols;

	@Column(length=1000)
	private String librarySpecialCols_AR;

	@Column(length=255)
	private String libraryTwitter;

	@Column(length=100)
	private String libraryType;

	@Column(length=100)
	private String libraryWebsite;

	@Column(length=50)
	private String logo;

	@Column(length=500)
	private String otherLanguages;

	@Column(length=500)
	private String otherLanguages_AR;

	//bi-directional many-to-one association to User
    @ManyToOne
	@JoinColumn(name="USER_ID")
	private User user;

    public LibRegistration() {
    }

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
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

	public String getLibraryAccessConditions() {
		return this.libraryAccessConditions;
	}

	public void setLibraryAccessConditions(String libraryAccessConditions) {
		this.libraryAccessConditions = libraryAccessConditions;
	}

	public String getLibraryAccessConditions_AR() {
		return this.libraryAccessConditions_AR;
	}

	public void setLibraryAccessConditions_AR(String libraryAccessConditions_AR) {
		this.libraryAccessConditions_AR = libraryAccessConditions_AR;
	}

	public String getLibraryAffOrganization() {
		return this.libraryAffOrganization;
	}

	public void setLibraryAffOrganization(String libraryAffOrganization) {
		this.libraryAffOrganization = libraryAffOrganization;
	}

	public String getLibraryAffOrganization_AR() {
		return this.libraryAffOrganization_AR;
	}

	public void setLibraryAffOrganization_AR(String libraryAffOrganization_AR) {
		this.libraryAffOrganization_AR = libraryAffOrganization_AR;
	}

	public String getLibraryColLangs() {
		return this.libraryColLangs;
	}

	public void setLibraryColLangs(String libraryColLangs) {
		this.libraryColLangs = libraryColLangs;
	}

	public String getLibraryColLangs_AR() {
		return this.libraryColLangs_AR;
	}

	public void setLibraryColLangs_AR(String libraryColLangs_AR) {
		this.libraryColLangs_AR = libraryColLangs_AR;
	}

	public String getLibraryColSize() {
		return this.libraryColSize;
	}

	public void setLibraryColSize(String libraryColSize) {
		this.libraryColSize = libraryColSize;
	}

	public String getLibraryColSize_AR() {
		return this.libraryColSize_AR;
	}

	public void setLibraryColSize_AR(String libraryColSize_AR) {
		this.libraryColSize_AR = libraryColSize_AR;
	}

	public String getLibraryContacts() {
		return this.libraryContacts;
	}

	public void setLibraryContacts(String libraryContacts) {
		this.libraryContacts = libraryContacts;
	}

	public String getLibraryContacts_AR() {
		return this.libraryContacts_AR;
	}

	public void setLibraryContacts_AR(String libraryContacts_AR) {
		this.libraryContacts_AR = libraryContacts_AR;
	}

	public String getLibraryEmail() {
		return this.libraryEmail;
	}

	public void setLibraryEmail(String libraryEmail) {
		this.libraryEmail = libraryEmail;
	}

	public String getLibraryFacebook() {
		return this.libraryFacebook;
	}

	public void setLibraryFacebook(String libraryFacebook) {
		this.libraryFacebook = libraryFacebook;
	}

	public String getLibraryFax() {
		return this.libraryFax;
	}

	public void setLibraryFax(String libraryFax) {
		this.libraryFax = libraryFax;
	}

	public String getLibraryMailAddress() {
		return this.libraryMailAddress;
	}

	public void setLibraryMailAddress(String libraryMailAddress) {
		this.libraryMailAddress = libraryMailAddress;
	}

	public String getLibraryMailAddress_AR() {
		return this.libraryMailAddress_AR;
	}

	public void setLibraryMailAddress_AR(String libraryMailAddress_AR) {
		this.libraryMailAddress_AR = libraryMailAddress_AR;
	}

	public String getLibraryName() {
		return this.libraryName;
	}

	public void setLibraryName(String libraryName) {
		this.libraryName = libraryName;
	}

	public String getLibraryName_AR() {
		return this.libraryName_AR;
	}

	public void setLibraryName_AR(String libraryName_AR) {
		this.libraryName_AR = libraryName_AR;
	}

	public String getLibraryOperationHours() {
		return this.libraryOperationHours;
	}

	public void setLibraryOperationHours(String libraryOperationHours) {
		this.libraryOperationHours = libraryOperationHours;
	}

	public String getLibraryOperationHours_AR() {
		return this.libraryOperationHours_AR;
	}

	public void setLibraryOperationHours_AR(String libraryOperationHours_AR) {
		this.libraryOperationHours_AR = libraryOperationHours_AR;
	}

	public String getLibraryPhone() {
		return this.libraryPhone;
	}

	public void setLibraryPhone(String libraryPhone) {
		this.libraryPhone = libraryPhone;
	}

	public String getLibraryPhyAddrress() {
		return this.libraryPhyAddrress;
	}

	public void setLibraryPhyAddrress(String libraryPhyAddrress) {
		this.libraryPhyAddrress = libraryPhyAddrress;
	}

	public String getLibraryPhyAddrress_AR() {
		return this.libraryPhyAddrress_AR;
	}

	public void setLibraryPhyAddrress_AR(String libraryPhyAddrress_AR) {
		this.libraryPhyAddrress_AR = libraryPhyAddrress_AR;
	}

	public byte getLibraryPublicAccess() {
		return this.libraryPublicAccess;
	}

	public void setLibraryPublicAccess(byte libraryPublicAccess) {
		this.libraryPublicAccess = libraryPublicAccess;
	}

	public String getLibraryServices() {
		return this.libraryServices;
	}

	public void setLibraryServices(String libraryServices) {
		this.libraryServices = libraryServices;
	}

	public String getLibraryServices_AR() {
		return this.libraryServices_AR;
	}

	public void setLibraryServices_AR(String libraryServices_AR) {
		this.libraryServices_AR = libraryServices_AR;
	}

	public String getLibrarySpecialCols() {
		return this.librarySpecialCols;
	}

	public void setLibrarySpecialCols(String librarySpecialCols) {
		this.librarySpecialCols = librarySpecialCols;
	}

	public String getLibrarySpecialCols_AR() {
		return this.librarySpecialCols_AR;
	}

	public void setLibrarySpecialCols_AR(String librarySpecialCols_AR) {
		this.librarySpecialCols_AR = librarySpecialCols_AR;
	}

	public String getLibraryTwitter() {
		return this.libraryTwitter;
	}

	public void setLibraryTwitter(String libraryTwitter) {
		this.libraryTwitter = libraryTwitter;
	}

	public String getLibraryType() {
		return this.libraryType;
	}

	public void setLibraryType(String libraryType) {
		this.libraryType = libraryType;
	}

	public String getLibraryWebsite() {
		return this.libraryWebsite;
	}

	public void setLibraryWebsite(String libraryWebsite) {
		this.libraryWebsite = libraryWebsite;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getOtherLanguages() {
		return this.otherLanguages;
	}

	public void setOtherLanguages(String otherLanguages) {
		this.otherLanguages = otherLanguages;
	}

	public String getOtherLanguages_AR() {
		return this.otherLanguages_AR;
	}

	public void setOtherLanguages_AR(String otherLanguages_AR) {
		this.otherLanguages_AR = otherLanguages_AR;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}