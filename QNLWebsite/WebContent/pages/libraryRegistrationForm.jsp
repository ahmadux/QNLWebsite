<html>
<head>
<meta http-equiv="Content-Type" content="text/html charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>

<link rel="stylesheet" href="../css/bootstrap.min.css" type='text/css' />
<link rel="stylesheet" href="../css/qnl2.css" type='text/css' />
<title>Qatar National Library- Register Your Library</title>
</head>

<script type="text/javascript">
	function createLibraryRegistration() {

		$('#setLibraryPhone').val(
				$('#libPhone1').val()
						+ " Ext. "
						+ $('#libExt1').val()
						+ (($('#libPhone2').val() != "") ? " \n "
								+ $('#libPhone2').val() + " Ext. "
								+ $('#libExt2').val() : ""))

		$('#setLibraryContacts')
				.val(
						$('#contactName1').val()
								+ ' ('
								+ $('#contactTitle1').val()
								+ ')'
								+ "\n"
								+ (($('#contactName2').val() != "") ? ($(
										'#contactName2').val()
										+ ' ('
										+ $('#contactTitle2').val()
										+ ')' + "\n") : "")
								+ (($('#contactName3').val() != "") ? ($(
										'#contactName3').val()
										+ ' (' + $('#contactTitle3').val() + ')')
										: ""))

		$('#setLibraryServices').val(
				$('#service1').val()
						+ "\n"
						+ (($('#service2').val() != "") ? $('#service2').val()
								+ "\n" : "")
						+ (($('#service3').val() != "") ? $('#service3').val()
								+ "\n" : "")
						+ (($('#service4').val() != "") ? $('#service4').val()
								+ "\n" : "")
						+ (($('#service5').val() != "") ? $('#service5').val()
								+ "\n" : "")
						+ (($('#service6').val() != "") ? $('#service6').val()
								+ "\n" : "")
						+ (($('#service7').val() != "") ? $('#service7').val()
								: ""))

		$('#setLibraryOperationHours').val(
				$('#day1F').val()
						+ " - "
						+ $('#day1T').val()
						+ ": "
						+ $('#time1F').val()
						+ " - "
						+ $('#time1T').val()
						+ "\n"
						+ (($('#day2F').val() != "") ? ($('#day2F').val()
								+ " - " + $('#day2T').val() + ": "
								+ $('#time2F').val() + " - "
								+ $('#time2T').val() + "\n") : "")
						+ (($('#day3F').val() != "") ? ($('#day3F').val()
								+ " - " + $('#day3T').val() + ": "
								+ $('#time3F').val() + " - "
								+ $('#time3T').val() + "\n") : "")
						+ (($('#day4F').val() != "") ? ($('#day4F').val()
								+ " - " + $('#day4T').val() + ": "
								+ $('#time4F').val() + " - " + $('#time4T')
								.val()) : ""))

		$.ajax({
			type : "POST",
			url : "../AjaxToDB.do",
			data :$("#register-form").serialize(),
			dataType : "text",
			async : false,
			success : function(objID, status) {
				alert("Library Registerd with ID: " + objID)
				$.ajax({
					url : "../Reloader.do?o=LibRegistration",
					success : function() {
						location.reload()
					}
				})
			},
			error : function() {
				alert("Error in saving Page data")
			}
		})
	}
</script>
<script type="text/javascript">
(function($, W, D) {
	var JQUERY4U = {}
	JQUERY4U.UTIL = {
		setupFormValidation : function() {
			//form validation rules
			$("#register-form").validate({
				rules : {
					setLibraryName : "required",
					setLibraryEmail : {
						 required: true,
					      email: true
					},
					libPhone1 : "required"
					
				},
				messages : {
					setLibraryName : "Please enter your name",
					setLibraryEmail : {
						required: "Please enter your email",
					      email: "name@domain.com",
					},
					libPhone1 : "Please enter your phone"
					
				},
				submitHandler : function(form) {
					//if ($("#id").val() == "")
						createLibraryRegistration()
					//else
					//	alert("Error ")
				}
			})
		}
	}

	//when the dom has loaded setup form validation rules
	$(D).ready(function($) {
		JQUERY4U.UTIL.setupFormValidation()
	})

})(jQuery, window, document)</script>
<body class="body_form">
	<h1>Register Your Library</h1>

	<div class="register-form col-xs-12 col-sm-9 col-lg-6">
		<form name="register-form" method="post" id="register-form"
			class="form-horizontal">
			
			<input type="hidden" name="oName" value="LibRegistration" id="oName" />
			<input type="hidden" name="fromEmail"
				value="libraryRegistration@qf.org.qa"> <input type="hidden"
				value="uahmad@qf.org.qa" name="toEmail"> <input
				type="hidden" value="lreynolds@qf.org.qa" name="ccEmail"> <input
				type="hidden" name="subject" value="New Library Registration">
			<input type="hidden" name="objUser" id="objUser" value="11" /> <input
				type="hidden" name="~setApproved" value="0">

			<div class="form-group">

				<label class="col-xs-3 control-label"> Name of Library<font
					color="red">*</font>
				</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryName" id="setLibraryName"
						placeholder="Name of Library" required="required">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label"> Affiliated
					Organization </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryAffOrganization"
						id="setLibraryAffOrganization">
				</div>
			</div>


			<div class="form-group">
				<label class="col-xs-3 control-label"> Type of Library </label>
				<div class="col-xs-9">
					<select name="setLibraryType" id="setLibraryType"
						class="form-control">
						<option value="School Library">School Library</option>
						<option value="Academic Library">Academic Library</option>
						<option value="Public Library">Public Library</option>
						<option value="Government Library">Government Library</option>
						<option value="Special Library">Special Library</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label"> Phone Number<font
					color="red">*</font>
				</label>
				<div class="col-xs-4">
					<input type="text" class="inputText form-control" maxlength="8"
						size="33" id="libPhone1" name="libPhone1" placeholder="44544444"
						required="required">
				</div>

				<label class="col-xs-2 control-label"> Ext. </label>
				<div class="col-xs-3">
					<input type="text" class="inputText form-control" maxlength="4"
						size="5" name="libExt1" id="libExt1" placeholder="4445">
				</div>
			</div>
			<div class="form-group">
				<label class="col-xs-3 control-label"></label>
				<div class="col-xs-4">
					<input type="text" class="inputText form-control" maxlength="8"
						size="33" name="libPhone2" id="libPhone2" placeholder="44544444">
				</div>
				<label class="col-xs-2 control-label"> Ext. </label>
				<div class="col-xs-3">
					<input type="text" class="inputText form-control" maxlength="4"
						size="5" name="libExt2" id="libExt2" placeholder="4445"> <input
						type="hidden" name="setLibraryPhone" id="setLibraryPhone">
				</div>
			</div>


			<div class="form-group">
				<label class="col-xs-3 control-label"> Fax Number </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="8"
						size="45" name="setLibraryFax" id="setLibraryFax"
						placeholder="44544444">
				</div>
			</div>


			<div class="form-group">
				<label class="col-xs-3 control-label"> Email<font
					color="red">*</font>
				</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryEmail" id="setLibraryEmail"
						placeholder="my@library.com" required="required">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label"> Website </label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryWebsite" id="setLibraryWebsite"
						placeholder="http://www.myLibrary.com">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label"> Print Collection Size
					(Printed Material Only)</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryColSize" id="setLibraryColSize"
						placeholder="500,000 books">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Facebook</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryFacebook" id="setLibraryFacebook"
						placeholder="http://www.facebook.com/myLibrary">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Twitter</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryTwitter" id="setLibraryTwitter"
						placeholder="http://www.twitter.com/myLibrary">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label"> List of Contact
					Persons</label>
				<div class="col-xs-8 fieldset">
					<div class="col-xs-6 heading">Name</div>
					<div class="col-xs-6 heading">Title</div>
					<div class="col-xs-6">
						<input type="text" id="contactName1" name="contactName1" size="30"
							maxlength="50" class="inputText form-control">
					</div>
					<div class="col-xs-6">
						<input type="text" id="contactTitle1" name="contactTitle1"
							size="30" maxlength="35" class="inputText form-control">
					</div>
					<div class="col-xs-6">
						<input type="text" id="contactName2" name="contactName2" size="30"
							maxlength="50" class="inputText form-control">
					</div>
					<div class="col-xs-6">
						<input type="text" id="contactTitle2" name="contactTitle2"
							size="30" maxlength="35" class="inputText form-control">
					</div>
					<div class="col-xs-6">
						<input type="text" id="contactName3" name="contactName3" size="30"
							maxlength="50" class="inputText form-control">
					</div>
					<div class="col-xs-6">
						<input type="text" id="contactTitle3" name="contactTitle3"
							size="30" maxlength="35" class="inputText form-control">
					</div>
					<input type="hidden" name="setLibraryContacts"
						id="setLibraryContacts">
				</div>
			</div>


			<div class="form-group">
				<label class="col-xs-3 control-label">Physical Address</label>
				<div class="col-xs-9">
					<textarea name="setLibraryPhyAddrress" id="setLibraryPhyAddrress"
						class="form-control" cols="50" rows="5" maxlength="255"
						placeholder="Physical Address"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Mailing Address</label>
				<div class="col-xs-9">
					<textarea name="setLibraryMailAddress" class="form-control"
						id="setLibraryMailAddress" cols="50" rows="5" maxlength="255"
						placeholder="Maling Address"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Special Collections</label>
				<div class="col-xs-9">
					<textarea name="setLibrarySpecialCols" class="form-control"
						id="setLibrarySpecialCols" cols="50" rows="5" maxlength="255"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Services<br> <font
					class="helpText">Example: ILL, Wireless, eBook, etc.</font></label>
				<div class="col-xs-9 fieldset">
					<div class="col-xs-9">
						<input type="text" id="service1" name="service1" size="50"
							maxlength="50" class="inputText service form-control"
							placeholder="Wireless">
					</div>
					<div class="col-xs-9 fieldset">
						<input type="text" id="service2" name="service2" size="50"
							maxlength="50" class="inputText service form-control"
							placeholder="ILL">
					</div>
					<div class="col-xs-9 fieldset">
						<input type="text" id="service3" name="service3" size="50"
							maxlength="50" class="inputText service form-control"
							placeholder="Audio Visual Room">
					</div>
					<div class="col-xs-9 fieldset">
						<input type="text" id="service4" name="service4" size="50"
							maxlength="50" class="inputText service form-control">
					</div>
					<div class="col-xs-9 fieldset">
						<input type="text" id="service5" name="service5" size="50"
							maxlength="50" class="inputText service form-control">
					</div>
					<div class="col-xs-9 fieldset">
						<input type="text" id="service6" name="service6" size="50"
							maxlength="50" class="inputText service form-control">
					</div>
					<div class="col-xs-9 fieldset">
						<input type="text" id="service7" name="service7" size="50"
							maxlength="50" class="inputText service form-control">
					</div>
					<input type="hidden" name="setLibraryServices"
						id="setLibraryServices">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Hours of Operations</label>
				<div class="col-xs-9 fieldset">
					
						<div class="col-xs-6 heading">Days</div>
						<div class="col-xs-6 heading">Time</div>
					
						
							<div class="col-xs-3 heading">From</div>
							<div class="col-xs-3 heading">To</div>
						
							<div class="col-xs-3 heading">From</div>
							<div class="col-xs-3 heading">To</div>
						
							<div class="col-xs-3" >
								<select name="day1F" id="day1F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="day1T" id="day1T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
						
							<div class="col-xs-3">
								<select name="time1F" id="time1F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 AM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="time1T" id="time1T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 PM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
						

							<div class="col-xs-3">
								<select name="day2F" id="day2F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="day2T" id="day2T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
						
							<div class="col-xs-3">
								<select name="time2F" id="time2F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 PM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="time2T" id="time2T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 PM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
						

					
							<div class="col-xs-3">
								<select name="day3F" id="day3F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="day3T" id="day3T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
						
							<div class="col-xs-3">
								<select name="time3F" id="time3F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 PM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="time3T" id="time3T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 PM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
				
							<div class="col-xs-3">
								<select name="day4F" id="day4F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="day4T" id="day4T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="Saturday">Saturday</option>
									<option value="Sunday">Sunday</option>
									<option value="Monday">Monday</option>
									<option value="Tuesday">Tuesday</option>
									<option value="Wednesday">Wednesday</option>
									<option value="Thursday">Thursday</option>
									<option value="Friday">Friday</option>
								</select>
							</div>
						
							<div class="col-xs-3">
								<select name="time4F" id="time4F" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 PM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
							<div class="col-xs-3">
								<select name="time4T" id="time4T" class="form-control" style="width:120px">
									<option value="">Select One</option>
									<option value="06:00 AM">06:00 AM</option>
									<option value="06:30 AM">06:30 AM</option>
									<option value="07:00 AM">07:00 AM</option>
									<option value="07:30 AM">07:30 AM</option>
									<option value="08:00 AM">08:00 AM</option>
									<option value="08:30 AM">08:30 AM</option>
									<option value="09:00 AM">09:00 AM</option>
									<option value="09:30 AM">09:30 AM</option>
									<option value="10:00 AM">10:00 AM</option>
									<option value="10:30 AM">10:30 AM</option>
									<option value="11:00 AM">11:00 AM</option>
									<option value="11:30 AM">11:30 AM</option>
									<option value="12:00 PM">12:00 PM</option>
									<option value="12:30 PM">12:30 PM</option>
									<option value="01:00 PM">01:00 PM</option>
									<option value="01:30 PM">01:30 PM</option>
									<option value="02:00 PM">02:00 PM</option>
									<option value="02:30 PM">02:30 PM</option>
									<option value="03:00 PM">03:00 PM</option>
									<option value="03:30 PM">03:30 PM</option>
									<option value="04:00 PM">04:00 PM</option>
									<option value="04:30 PM">04:30 PM</option>
									<option value="05:00 PM">05:00 PM</option>
									<option value="05:30 PM">05:30 PM</option>
									<option value="06:00 PM">06:00 PM</option>
									<option value="06:30 PM">06:30 PM</option>
									<option value="07:00 PM">07:00 PM</option>
									<option value="07:30 PM">07:30 PM</option>
									<option value="08:00 PM">08:00 PM</option>
									<option value="08:30 PM">08:30 PM</option>
									<option value="09:00 PM">09:00 PM</option>
									<option value="09:30 PM">09:30 PM</option>
									<option value="10:00 PM">10:00 PM</option>
									<option value="10:30 PM">10:30 PM</option>
									<option value="11:00 PM">11:00 PM</option>
									<option value="11:30 AM">11:30 PM</option>
									<option value="12:00 AM">12:00 AM</option>
									<option value="12:30 AM">12:30 AM</option>
								</select>
							</div>
						
					<input type="hidden" name="setLibraryOperationHours"
						id="setLibraryOperationHours">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Do you allow public
					access to library?</label>
				<div class="col-xs-9">
					<select name="~setLibraryPublicAccess" id="~setLibraryPublicAccess"
						class="form-control">
						<option value="1">Yes</option>
						<option value="0">No</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">If you allow public
					patron access, what are your conditions?</label>
				<div class="col-xs-9">
					<textarea name="setLibraryAccessConditions"
						id="setLibraryAccessConditions" class="form-control" cols="50"
						rows="5" maxlength="255"></textarea>
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Primary Language(s) of
					the Collection</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setLibraryColLangs" id="setLibraryColLangs"
						placeholder="English, Arabic">
				</div>
			</div>

			<div class="form-group">
				<label class="col-xs-3 control-label">Other Collection
					Language(s)</label>
				<div class="col-xs-9">
					<input type="text" class="inputText form-control" maxlength="50"
						size="50" name="setOtherLanguages" id="setOtherLanguages"
						placeholder="Urdu, French, German, Persian">
				</div>
			</div>



			<button type="reset" value="Clear" class="btn brandingButton">Clear
			</button>
			<button  type="submit" value="Register" class="btn brandingButton">Register</button>
		</form>
		</div>



	
</body>

</html>