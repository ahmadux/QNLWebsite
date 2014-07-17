<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.qnl.core.LibRegistration,com.qnl.facade.LibRegistrationFacade"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%
	if (request.getParameter("id") != null) {
		
		LibRegistration lr = ((LibRegistrationFacade) application.getAttribute("LibRegistrationFacade")).findByID(Integer.parseInt(request.getParameter("id")));
		pageContext.setAttribute("lr", lr);
		
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/qnl2.css" type="text/css" />
<title>Qatar National Library- Library Registration</title>
</head>
<body>

	<h2 >Library Registration</h2>
	
		<div class="col-xs-12 col-md-3 img-rounded semitransparent pull-left small_menu">		
		

	<div class="listItem" data-filter1="${c.name}" data-filter2="${c.promote>0?'p':''} ${c.display>0?'d1':'d0'}">
		<ul style="list-style: none margin: 0 padding: 0">
			<c:forEach var="c" items="${LibRegistrationFacade.getLibraryRegistrationsSortedByName()}">
				<li><a href="LibraryRegistrationManagement.jsp?id=${c.id}" >${c.libraryName}</a></li>
			</c:forEach>
		</ul>
	</div>
	</div>
	
	
		<div class="col-xs-12 col-md-9">
			<ul class="nav nav-tabs" id="tabs">
				<li class="active"><a href="#eng" data-toggle="tab">English</a></li>
				<li><a href="#arabic" data-toggle="tab">العربية</a></li>
			</ul>
			<form name="register-form" method="post" id="register-form"
						class="form-horizontal">
			<div class="tab-content  black-form">
				<div class="tab-pane fade active in" id="eng">


					

						<input type="hidden" name="oName" value="LibRegistration"
							id="oName" /> <input type="hidden"
							name="objUser" id="objUser" value="11" /> <input type="hidden"
							name="~setApproved" value="0">

					<input type="hidden" name="id" id="id" value="${lr.id}" />	
						<div class="form-group">

							<label class="col-xs-3 control-label"> Name of Library
							</label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="50"
									size="50" name="setLibraryName" id="setLibraryName"
									placeholder="Name of Library" required="required" value="${lr.libraryName}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label"> Affiliated
								Organization </label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="50"
									size="50" name="setLibraryAffOrganization"
									id="setLibraryAffOrganization" value="${lr.libraryAffOrganization}">
							</div>
						</div>


						<div class="form-group">
							<label class="col-xs-3 control-label"> Type of Library </label>
							<div class="col-xs-9">
								<select name="setLibraryType" id="setLibraryType"
									class="form-control">
									<option value=" ">Select One</option>
									<option value="School Library" ${(lr.libraryType eq 'School Library')?"selected":""}>School Library</option>
									<option value="Academic Library" ${(lr.libraryType eq 'Academic Library')?"selected":""}>Academic Library</option>
									<option value="Public Library" ${(lr.libraryType eq 'Public Library')?"selected":""}>Public Library</option>
									<option value="Government Library" ${(lr.libraryType eq 'Government Library')?"selected":""}>Government Library</option>
									<option value="Special Library" ${(lr.libraryType eq 'Special Library')?"selected":""}>Special Library</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label"> Phone Number
							</label>
							<div class="col-xs-4">
								<textarea class="inputText form-control" maxlength="100"
									 id="setLibraryPhoneNumber" name="setLibraryPhoneNumber"
									placeholder="44544444" required="required"> ${lr.libraryPhone}</textarea>
							</div>
							
						</div>


						<div class="form-group">
							<label class="col-xs-3 control-label"> Fax Number </label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="100"
									size="45" name="setLibraryFax" id="setLibraryFax"
									placeholder="44544444" value="${lr.libraryFax}"/>
							</div>
						</div>


						<div class="form-group">
							<label class="col-xs-3 control-label"> Email
							</label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="50"
									size="50" name="setLibraryEmail" id="setLibraryEmail"
									placeholder="my@library.com" required="required" value="${lr.libraryEmail}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label"> Website </label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="50"
									size="50" name="setLibraryWebsite" id="setLibraryWebsite"
									placeholder="http://www.myLibrary.com" value="${lr.libraryWebsite}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label"> Print Collection
								Size (Printed Material Only)</label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="50"
									size="50" name="setLibraryColSize" id="setLibraryColSize"
									placeholder="500,000 books" value="${lr.libraryColSize}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Facebook</label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="255"
									size="50" name="setLibraryFacebook" id="setLibraryFacebook"
									placeholder="http://www.facebook.com/myLibrary" value="${lr.libraryFacebook}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Twitter</label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="255"
									size="50" name="setLibraryTwitter" id="setLibraryTwitter"
									placeholder="http://www.twitter.com/myLibrary" value="${lr.libraryTwitter}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label"> List of Contact
								Persons</label>
							
								<div class="col-xs-9">
							
								<textarea  name="setLibraryContacts"
									id="setLibraryContacts" cols="50"
									rows="5" maxlength="100" class="inputText form-control">${lr.libraryContacts}</textarea>
							</div>
						</div>


						<div class="form-group">
							<label class="col-xs-3 control-label">Physical Address</label>
							<div class="col-xs-9">
								<textarea name="setLibraryPhyAddrress"
									id="setLibraryPhyAddrress" class="form-control" cols="50"
									rows="5" maxlength="255" placeholder="Physical Address" >${lr.libraryPhyAddrress}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Mailing Address</label>
							<div class="col-xs-9">
								<textarea name="setLibraryMailAddress" class="form-control"
									id="setLibraryMailAddress" cols="50" rows="5" maxlength="255"
									placeholder="Maling Address" >${lr.libraryMailAddress}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Special Collections</label>
							<div class="col-xs-9">
								<textarea name="setLibrarySpecialCols" class="form-control"
									id="setLibrarySpecialCols" cols="50" rows="5" maxlength="255">${lr.librarySpecialCols}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Services<br> <font
								class="helpText">Example: ILL, Wireless, eBook, etc.</font></label>
							
								<div class="col-xs-9">
									<textarea name="setLibraryServices"
									id="setLibraryServices" 
										maxlength="255" class="inputText service form-control"
										> ${lr.libraryServices}</textarea>
						
							
						</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Hours of Operations</label>
							<div class="col-xs-9">

								<textarea name="setLibraryOperationHours"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setLibraryOperationHours">${lr.libraryOperationHours} </textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Do you allow public
								access to library?</label>
							<div class="col-xs-9">
								<select name="~setLibraryPublicAccess"
									id="~setLibraryPublicAccess" class="form-control">
									<option value="1"  ${(lr.libraryPublicAccess==1)?"selected":""}>Yes</option>
									<option value="0"  ${(lr.libraryPublicAccess==0)?"selected":""}>No</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">If you allow public
								patron access, what are your conditions?</label>
							<div class="col-xs-9">
								<textarea name="setLibraryAccessConditions"
									id="setLibraryAccessConditions" class="form-control" cols="50"
									rows="5" maxlength="255" >${lr.libraryAccessConditions}</textarea>
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Primary Language(s)
								of the Collection</label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="50"
									size="50" name="setLibraryColLangs" id="setLibraryColLangs"
									placeholder="English, Arabic" value="${lr.libraryColLangs}">
							</div>
						</div>

						<div class="form-group">
							<label class="col-xs-3 control-label">Other Collection
								Language(s)</label>
							<div class="col-xs-9">
								<input type="text" class="inputText form-control" maxlength="50"
									size="50" name="setOtherLanguages" id="setOtherLanguages"
									placeholder="Urdu, French, German, Persian" value="${lr.otherLanguages}">
							</div>
						</div>

				</div>
				<div class="tab-pane fade  black-form" id="arabic">
					

						
							<input type="hidden" name="oName" value="LibRegistration"
								id="oName" /> <input type="hidden"
								name="objUser" id="objUser" value="11" /> <input type="hidden"
								name="setLibraryName" id="setLibraryName" value="" /> <input
								type="hidden" name="~setApproved" value="0">

							<div class="form-group">
								<div class="col-xs-9 ">
									<input type="text" class="form-control" maxlength="50"
										size="50" name="setLibraryName_AR" id="setLibraryName_AR"
										placeholder="اسم المكتبة" required="required" dir="rtl"
										lang="ar" value="${lr.libraryName_AR}">
								</div>
								<label class="col-xs-3 control-label">اسم المكتبة
								</label>
							</div>
							<!-- The rest you should do -->

							<div class="form-group">

								<div class="col-xs-9 ">
									<input type="text" maxlength="50" class="form-control"
										size="50" name="setLibraryAffOrganization_AR"
										id="setLibraryAffOrganization_AR" dir="rtl" lang="ar" value="${lr.libraryAffOrganization_AR}">
								</div>
								<label class="col-xs-3 control-label">المؤسسة التابعه
									لها </label>
							</div>



							<div class="form-group">

								<div class="col-xs-9 ">
									<input type="text" class="form-control" maxlength="50"
										size="50" name="setLibraryColSize_AR"
										id="setLibraryColSize_AR" placeholder="500,000 books"
										dir="rtl" lang="ar" value="${lr.libraryColSize_AR}">
								</div>
								<label class="col-xs-3 control-label"> عدد المطبوعات </label>
							</div>

							<div class="form-group">


								<div class="col-xs-9 ">


								

								<textarea  name="setLibraryContacts_AR"
									id="setLibraryContacts_AR" cols="50" rows="5"
										maxlength="255" class="form-control">${lr.libraryContacts_AR}</textarea>
							</div> 
										<label
									class="col-xs-3 control-label"> مسؤول الاتصال</label>
							</div>

							<div class="form-group">

								<div class="col-xs-9 ">
									<textarea name="setLibraryPhyAddrress_AR"
										id="setLibraryPhyAddrress_AR" cols="50" rows="5"
										maxlength="255" class="form-control"
										placeholder="Physical Address" dir="rtl" lang="ar">${lr.libraryPhyAddrress_AR}</textarea>
								</div>
								<label class="col-xs-3 control-label">عنوان المكتبة</label>
							</div>

							<div class="form-group">

								<div class="col-xs-9 ">
									<textarea name="setLibraryMailAddress_AR"
										id="setLibraryMailAddress_AR" cols="50" rows="5"
										class="form-control" maxlength="255"
										placeholder="Maling Address" dir="rtl"  lang="ar">${lr.libraryMailAddress_AR}</textarea>
								</div>
								<label class="col-xs-3 control-label">العنوان البريدي</label>
							</div>

							<div class="form-group">

								<div class="col-xs-9 ">
									<textarea name="setLibrarySpecialCols_AR"
										id="setLibrarySpecialCols_AR" cols="50" rows="5"
										class="form-control" maxlength="255" dir="rtl" lang="ar">${(lr.librarySpecialCols_AR)}</textarea>
								</div>
								<label class="col-xs-3 control-label">المجموعات الخاصة</label>
							</div>

							<div class="form-group">

								<div class="col-xs-9">
				
									<textarea name="setLibraryServices_AR"
										id="setLibraryServices_AR" cols="50" rows="5"
										class="form-control" maxlength="255" dir="rtl" lang="ar"> ${(lr.libraryServices_AR)}</textarea>
								</div>
								<label class="col-xs-3 control-label">أبرز الخدمات<br>
									<font class="helpText">مثال: خدمة الإعارة بين المكتبات،
										خدمة وايرلس، الكتب الإلكترونية... إلخ</font></label>
							</div>

							<div class="form-group">

								<div class="col-xs-9">
				
									<textarea name="setLibraryOperationHours_AR"
										id="setLibraryOperationHours_AR" cols="50" rows="5"
										class="form-control" maxlength="255" dir="rtl" lang="ar"> ${(lr.libraryOperationHours_AR)}</textarea>
								</div>
								<label class="col-xs-2 control-label">ساعات العمل</label>
							</div>


							<div class="form-group">

								<div class="col-xs-9 ">
									<textarea name="setLibraryAccessConditions_AR" 
										id="setLibraryAccessConditions_AR" cols="50" rows="5"
										maxlength="255" dir="rtl" class="form-control" lang="ar">${lr.libraryAccessConditions_AR}</textarea>
								</div>
								<label class="col-xs-3 control-label">شروط دخول الجمهور</label>
							</div>

							<div class="form-group">

								<div class="col-xs-9 ">
									<input type="text" maxlength="50" size="50"
										name="setLibraryColLangs_AR" id="setLibraryColLangs_AR"
										placeholder="العربي,الانجليزي" class="form-control" dir="rtl" value="${lr.libraryColLangs_AR}"
										lang="ar">
								</div>
								<label class="col-xs-3 control-label">اللغات الأساسية
									لمجموعات المكتبة</label>
							</div>

							<div class="form-group">

								<div class="col-xs-9 ">
									<input type="text" maxlength="50" size="50"
										name="setOtherLanguages_AR" id="setOtherLanguages_AR" value="${lr.otherLanguages_AR}"
										class="form-control" dir="rtl" lang="ar">
								</div>
								<label class="col-xs-3 control-label">لغات اخرى</label>
							</div>
					</div>
		</div>
		<br />
		<button type="reset" value="Clear" class="btn brandingButton">Clear
						</button>
						<button type="submit" value="Register" class="btn brandingButton" onClick=updateLibraryRegistration()>Update</button>
		</form>
		</div>
	

</body>
<script type="text/javascript">
function updateLibraryRegistration() 
{
	
	$.ajax({
		type : "POST",
		url : "../AjaxToDB.do",
		data : $("#register-form").serialize(),
		dataType : "text",
		async : false,
		success : function(objID, status) {
			alert("Library Registerd with ID: " + objID);
			$.ajax({
				url : "../Reloader.do?o=LibRegistration",
				success : function() {
					location.reload();
				}
			});
		},
		error : function() {
			alert("Error in updating data");
		}
	});
}
</script>
</html>