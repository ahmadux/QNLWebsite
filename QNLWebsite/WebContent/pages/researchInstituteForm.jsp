<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.qnl.core.ResInstitute,com.qnl.facade.ResInstituteFacade"%>

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
<form id="register-form" method="post" name="register-form" class="form-horizontal">
   <input type="hidden" name="oName" value="ResInstitute"
							id="oName" /> <input type="hidden"
							name="~setApproved" value="0">

					<input type="hidden" name="id" id="id"  />	
						
 	
 	<div class="form-group">

				<label class="col-xs-3 control-label"> Institute Name<font
					color="red">*</font>
				</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setName" id="setName"
						placeholder="Name" required="required">
				</div>
			</div>
			  <div class="form-group">
			  	<label class="col-xs-3 control-label">اسم المؤسسة/ المركز </label>
   		<div class="col-xs-9 ">
    		<input type="text" class="form-control" maxlength="50"  name="setNameAr" 
    		id="setNameAr" placeholder="اسم "  dir="rtl" lang="ar" >
    	</div> 
    
   </div>
 				<div class="form-group">
							<label class="col-xs-3 control-label"> Phone Number(رقم الهاتف)<font
					color="red">*</font>
							</label>
							<div class="col-xs-4">
								<input class="inputText form-control" maxlength="15"
									 id="setPhoneNo" name="setPhoneNo"
									placeholder="+974 44544444" required="required">
							</div>
							
						</div>
						
						 				<div class="form-group">
							<label class="col-xs-3 control-label"> Email (البريد الالكتروني)<font
					color="red">*</font>
							</label>
							<div class="col-xs-4">
								<input class="inputText form-control" maxlength="100"
									 id="setEmail" name="setEmail"
									placeholder="myEmail@email.com" required="required">
							</div>
							
						</div>
 				<div class="form-group">
				<label class="col-xs-3 control-label"> 
					Organization </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						 name="setOrganization"
						id="setOrganization">
				</div>
			</div>
			
						<div class="form-group">
				<label class="col-xs-3 control-label"> 
					المؤسسة التابعه لها</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						 name="setOrganizationAr"
						id="setOrganizationAr"  dir="rtl" lang="ar">
				</div>
			</div>
						<div class="form-group">
							<label class="col-xs-3 control-label">Area(s) Of Research</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setAreaResearch"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setAreaResearch"></textarea>
							</div>
						</div>
										<div class="form-group">
							<label class="col-xs-3 control-label">مجالات البحث</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setAreaResearchAr"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setAreaResearchAr"></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-xs-3 control-label">Activities</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setActivities"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setActivities"> </textarea>
							</div>
						</div>
			
						
						<div class="form-group">
							<label class="col-xs-3 control-label">الفعاليات والخدمات</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setActivitiesAr"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setActivitiesAr"> </textarea>
							</div>
						</div>
			<div class="form-group">
				<label class="col-xs-3 control-label">Physical Address</label>
				<div class="col-xs-9">
					<textarea name="setPhyAddress" id="setPhyAddress"
						class="form-control" cols="50" rows="5" maxlength="255"
						placeholder="Physical Address"></textarea>
				</div>
			</div>
						<div class="form-group">
				<label class="col-xs-3 control-label">العنوان والمنطقة </label>
				<div class="col-xs-9">
					<textarea name="setPhyAddressAr" id="setPhyAddressAr"
						class="form-control" cols="50" rows="5" maxlength="255"
						placeholder="Physical Address"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Mailing Address</label>
				<div class="col-xs-9">
					<textarea name="setMailAddress" class="form-control"
						id="setMailAddress" cols="50" rows="5" maxlength="255"
						placeholder="Maling Address"></textarea>
				</div>
			</div>
						<div class="form-group">
				<label class="col-xs-3 control-label">العنوان البريدي</label>
				<div class="col-xs-9">
					<textarea name="setMailAddressAr" class="form-control"
						id="setMailAddressAr" cols="50" rows="5" maxlength="255"
						placeholder="Maling Address"></textarea>
				</div>
			</div>
			
							<div class="form-group">
							<label class="col-xs-3 control-label"> List of Contact
								Persons</label>
							
								<div class="col-xs-6">
							
								<textarea  name="setContacts"
									id="setContacts" cols="50"
									rows="5" maxlength="100" class="inputText form-control"></textarea>
							</div>
						</div>
						
												<div class="form-group">
							<label class="col-xs-3 control-label"> مسؤول الاتصال</label>
							
								<div class="col-xs-6">
							
								<textarea  name="setContactsAr"
									id="setContactsAr" cols="50"
									rows="5" maxlength="100" class="inputText form-control"></textarea>
							</div>
						</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label"> Fax Number (رقم الفاكس) </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="8"
						size="45" name="setFax" id="setFax"
						placeholder="+974 44544444">
				</div>
			</div>
			
					<div class="form-group">
				<label class="col-xs-3 control-label"> Website(الموقع الالكتروني) </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setWebsite" id="setWebsite"
						placeholder="http://www.myLibrary.com">
				</div>
			</div>
			
			<div class="form-group">
				<label class="col-xs-3 control-label">Facebook(فيس بوك)</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setFacebook" id="setFacebook"
						placeholder="http://www.facebook.com/myLibrary">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Twitter(تويتر)</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setTwitter" id="setTwitter"
						placeholder="http://www.twitter.com/myLibrary">
				</div>
			</div>
						<div class="form-group">
							<label class="col-xs-3 control-label">Hours of Operations</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setoHours"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setoHours"> </textarea>
							</div>
						</div>
											<div class="form-group">
							<label class="col-xs-3 control-label">ساعات العمل</label>
							<div class="col-xs-9 fieldset">

								<textarea name="setoHoursAr"cols="50"
									rows="5" maxlength="255" class="form-control"
									id="setoHoursAr"> </textarea>
							</div>
						</div>
			
			
			<button type="reset" value="Clear" class="btn brandingButton">Clear إلغاء
			</button>
			<button  type="submit" value="Register" class="btn brandingButton">Register إرسال</button>
</form>
</body>

<script type="text/javascript">
function createResearchInstitute() {
$.ajax({
	type : "POST",
	url : "../AjaxToDB.do",
	data :$("#register-form").serialize(),
	dataType : "text",
	async : false,
	success : function(objID, status) {
		alert("Institute Registerd with ID: " + objID);
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
(function($, W, D) {
	var JQUERY4U = {};
	JQUERY4U.UTIL = {
		setupFormValidation : function() {
			//form validation rules
			$("#register-form").validate({
				rules : {
					setName : "required",
					setEmail : {
						 required: true,
					      email: true
					},
					setPhoneNo : "required"
					
				},
				messages : {
					setName : "Please enter the Research Institute Name",
					setEmail : {
						required: "Please enter your email",
					      email: "name@domain.com",
					},
					setPhoneNo : "Please enter your phone"
					
				},
				submitHandler : function(form) {
					//if ($("#id").val() == "")
						createResearchInstitute();
					//else
					//	alert("Error ")
				}
			});
		}
	};

	//when the dom has loaded setup form validation rules
	$(D).ready(function($) {
		JQUERY4U.UTIL.setupFormValidation();
	});

})(jQuery, window, document);</script>
</html>