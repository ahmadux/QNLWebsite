<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.qnl.core.ResInstitute,com.qnl.facade.ResInstituteFacade"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
	if (request.getParameter("id") != null) {
		
		ResInstitute ri = ((ResInstituteFacade) application.getAttribute("ResInstituteFacade")).findByID(Integer.parseInt(request.getParameter("id")));
		pageContext.setAttribute("ri", ri);
		
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css" type='text/css' />
<link rel="stylesheet" href="../css/qnl2.css" type='text/css' />
<title>Qatar National Library- Register Your Reserach Institute</title>
</head>
<body>
<h2>Register Your Reserach Institute</h2>
		<div class="col-xs-9 col-md-3 img-rounded semitransparent pull-left small_menu">		
		

	<div class="listItem" data-filter1="${c.name}" data-filter2="${c.promote>0?'p':''} ${c.display>0?'d1':'d0'}">
	<ul style="list-style: none margin: 0 padding: 0">
	<c:forEach var="c" items="${ResInstituteFacade.getResInstitute()}">
			<li><a href="ResInstituteManagement.jsp?id=${c.id}" >${c.name}</a></li>
			</c:forEach>
			</ul>
			</div>
	</div>
<form id="register-form" method="post" name="register-form" class="form-horizontal">
   <input type="hidden" name="oName" value="ResInstitute"
							id="oName" /> <input type="hidden"
							name="~setApproved" value="0">

					<input type="hidden" name="id" id="id"value="${ri.id }"  />	
						
 	
 	<div class="form-group">

				<label class="col-xs-2 control-label"> Institute Name<font
					color="red">*</font>
				</label>
				<div class="col-xs-8">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setName" id="setName"
						placeholder="Name" required="required" value="${ri.name}">
				</div>
			</div>
			  <div class="form-group">
			  	<label class="col-xs-3 control-label">اسم المؤسسة/ المركز </label>
   		<div class="col-xs-9 ">
    		<input type="text" class="form-control" maxlength="50"  name="setNameAr" 
    		id="setNameAr" placeholder="اسم " required="required"  dir="rtl" lang="ar"value="${ri.nameAr}" >
    	</div> 
    
   </div>
 				<div class="form-group">
							<label class="col-xs-3 control-label"> Phone Number(رقم الهاتف)<font
					color="red">*</font>
							</label>
							<div class="col-xs-4">
								<input class="inputText form-control" maxlength="15"
									 id="setPhoneNo" name="setPhoneNo"
									placeholder="+974 44544444" required="required" value="${ri.phoneNo}">
							</div>
							
						</div>
						
						 				<div class="form-group">
							<label class="col-xs-3 control-label"> Email (البريد الالكتروني)<font
					color="red">*</font>
							</label>
							<div class="col-xs-4">
								<input class="inputText form-control" maxlength="100"
									 id="setEmail" name="setEmail"
									placeholder="myEmail@email.com" required="required" value="${ri.email}">
							</div>
							
						</div>
 				<div class="form-group">
				<label class="col-xs-3 control-label"> 
					Organization </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						 name="setOrganization"
						id="setOrganization"value="${ri.organization }">
				</div>
			</div>
			
						<div class="form-group">
				<label class="col-xs-3 control-label"> 
					المؤسسة التابعه لها</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						 name="setOrganizationAr"
						id="setOrganizationAr"  dir="rtl" lang="ar"value="${ri.organizationAr}">
				</div>
			</div>
						<div class="form-group">
							<label class="col-xs-3 control-label">Area(s) Of Research</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setAreaResearch"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setAreaResearch">${ri.areaResearch}</textarea>
							</div>
						</div>
										<div class="form-group">
							<label class="col-xs-3 control-label">مجالات البحث</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setAreaResearchAr"cols="50"
									rows="5" maxlength="255"dir="rtl" lang="ar" class="form-control"
									id="setAreaResearchAr">${ri.areaResearchAr}</textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-xs-3 control-label">Activities</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setActivities"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setActivities">${ri.activities} </textarea>
							</div>
						</div>
			
						
						<div class="form-group">
							<label class="col-xs-3 control-label">الفعاليات والخدمات</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setActivitiesAr"cols="50"
									rows="5" maxlength="255"dir="rtl" lang="ar" class="form-control"
									id="setActivitiesAr">${ri.activitiesAr} </textarea>
							</div>
						</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">Physical Address</label>
				<div class="col-xs-9">
					<textarea name="setPhyAddress" id="setPhyAddress"
						class="form-control" cols="50" rows="5" maxlength="255"
						placeholder="Physical Address">${ri.phyAddress}</textarea>
				</div>
			</div>
						<div class="form-group">
				<label class="col-xs-3 control-label">العنوان والمنطقة </label>
				<div class="col-xs-9">
					<textarea name="setPhyAddressAr"dir="rtl" lang="ar" id="setPhyAddressAr"
						class="form-control" cols="50" rows="5" maxlength="255"
						placeholder="Physical Address">${ri.phyAddressAr}</textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Mailing Address</label>
				<div class="col-xs-9">
					<textarea name="setMailAddress" class="form-control"
						id="setMailAddress" cols="50" rows="5" maxlength="255"
						placeholder="Maling Address">${ri.mailAddress}</textarea>
				</div>
			</div>
						<div class="form-group">
				<label class="col-xs-3 control-label">العنوان البريدي</label>
				<div class="col-xs-9">
					<textarea name="setMailAddressAr" class="form-control"
						id="setMailAddressAr" cols="50" rows="5" maxlength="255"dir="rtl" lang="ar"
						placeholder="Maling Address">${ri.mailAddressAr}</textarea>
				</div>
			</div>
			
							<div class="form-group">
							<label class="col-xs-3 control-label"> List of Contact
								Persons</label>
							
								<div class="col-xs-6">
							
								<textarea  name="setContacts"
									id="setContacts" cols="50"
									rows="5" maxlength="100" class="inputText form-control">${ri.contacts}</textarea>
							</div>
						</div>
						
												<div class="form-group">
							<label class="col-xs-3 control-label"> مسؤول الاتصال</label>
							
								<div class="col-xs-6">
							
								<textarea  name="setContactsAr"
									id="setContactsAr" cols="50"
									rows="5" maxlength="100" dir="rtl" lang="ar"class="inputText form-control">${ri.contactsAr}</textarea>
							</div>
						</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label"> Fax Number (رقم الفاكس) </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="8"
						size="45" name="setFax" id="setFax" value="${ri.fax}"
						placeholder="+974 44544444">
				</div>
			</div>
			
					<div class="form-group">
				<label class="col-xs-3 control-label"> Website(الموقع الالكتروني) </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setWebsite" id="setWebsite" value="${ri.website}"
						placeholder="http://www.myLibrary.com">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Facebook(فيس بوك)</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setFacebook" id="setFacebook"
						placeholder="http://www.facebook.com/myLibrary" value="${ri.facebook}">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Twitter(تويتر)</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setTwitter" id="setTwitter"
						placeholder="http://www.twitter.com/myLibrary" value="${ri.twitter}">
				</div>
			</div>
						<div class="form-group">
							<label class="col-xs-3 control-label">Hours of Operations</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setoHours"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setoHours"> ${ri.oHours}</textarea>
							</div>
						</div>
											<div class="form-group">
							<label class="col-xs-3 control-label">ساعات العمل</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setoHoursAr"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setoHoursAr">${ri.oHoursAr} </textarea>
							</div>
						</div>
			
			
			<button type="reset" value="Clear" class="btn brandingButton">Clear إلغاء
			</button>
			<button  type="submit" value="Register" class="btn brandingButton" onClick=updateResearchInstitute()>Update إرسال</button>
		
</form>
</body>

<script type="text/javascript">
function updateResearchInstitute() {
$.ajax({
	type : "POST",
	url : "../AjaxToDB.do",
	data :$("#register-form").serialize(),
	dataType : "text",
	async : false,
	success : function(objID, status) {
		alert("Institute Updated with ID: " + objID);
		$.ajax({
			url : "../Reloader.do?o=ResearchInstitute",
			success : function() {
				location.reload();
			}
		});
	},
	error : function() {
		alert("Error in saving Page data");
	}
});
}

</script>
</html>