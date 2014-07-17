<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.qnl.core.Subscribe,com.qnl.facade.SubscribeFacade"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	if ((request.getParameter("id") != null)&&(request.getParameter("id") != "")) {
		
		Subscribe s = ((SubscribeFacade) application.getAttribute("SubscribeFacade")).findByID(Integer.parseInt(request.getParameter("id")));
		pageContext.setAttribute("s", s);
		
	}
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="chrome=1">
<link href="../css/bootstrap.min.css" rel="stylesheet" />
<link href="../css/qnl2.css" rel="stylesheet" />
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/jquery-ui.min.js"></script>

<script src="../css/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
<title>Subscribe Management</title>
</head>
<body>
<h1>Subscribe</h1>
<div class="col-xs-12 col-sm-3 img-rounded semitransparent pull-left">
<c:forEach var="c" items="${SubscribeFacade.getSbcrs()}">
	<div class="listItem">
		<a href="SubscribeManagement.jsp?id=${c.id}" >${c.lastName}, ${c.firstName}</a>
	</div>
</c:forEach>		
</div>

<div class="col-xs-12 col-sm-9">
<form name="subscribeForm" id="subscribeForm" class="form-horizontal">
    <input type="hidden" name="oName" id="oName" value="Subscribe" />
    <input type="hidden" name="id" id="id" value="${s.id}" />	
<div class="form-group">
<label class="col-xs-3 control-label"> First Name <font color="red">*</font></label>
 <div class="col-xs-9">
<input  type="text" class="form-control" maxlength="50" name="setFirstName" id="setFirstName" value="${s.firstName}" size="50" placeholder="First Name" required="required"/>
</div> 
</div>
<div class="form-group">
<label class="col-xs-3 control-label "> Last Name <font color="red">*</font> </label>
 <div class="col-xs-9">
<input  type="text" class="inputText form-control" maxlength="50" name="setLastName" value="${s.lastName}" id="setLastName" size="50" placeholder="Last Name" required="required"/> 
</div>
</div>
<div class="form-group">
<label class="col-xs-3 control-label"> Telephone </label>
 <div class="col-xs-9">
<input  type="text" class="inputText form-control" name="setTelephone" id="setTelephone" value="${s.telephone}" maxlength="15" size="50" placeholder="+974-0000-0000" />
</div>
</div>
<div class="form-group">
<label class="col-xs-3 control-label"> Mobile </label>
 <div class="col-xs-9">
<input  type="text" class="inputText form-control" name="setMobile" id="setMobile" maxlength="15" value="${s.mobile}" size="50" placeholder="+974-0000-0000" /> 
</div>
</div>
<div class="form-group">
<label class="col-xs-3 control-label"> Email <font color="red">*</font> </label>
 <div class="col-xs-9">
<input  type="text" class="inputText form-control" maxlength="50" size="50" name="setEmail" value="${s.email}" id="setEmail" placeholder="my@registration.com" required="required"/>
</div> 
</div>
<div class="form-group">
<label class="col-xs-3 control-label"> Nationality </label>
 <div class="col-xs-9">
<select name="setNationality" id="setNationality" class="form-control">
                <option value="afghan">Afghan</option>
                <option value="albanian">Albanian</option>
                <option value="algerian">Algerian</option>
                <option value="american">American</option>
                <option value="andorran">Andorran</option>
                <option value="angolan">Angolan</option>
                <option value="antiguans">Antiguans</option>
                <option value="argentinean">Argentinean</option>
                <option value="armenian">Armenian</option>
                <option value="australian">Australian</option>
                <option value="austrian">Austrian</option>
                <option value="azerbaijani">Azerbaijani</option>
                <option value="bahamian">Bahamian</option>
                <option value="bahraini">Bahraini</option>
                <option value="bangladeshi">Bangladeshi</option>
                <option value="barbadian">Barbadian</option>
                <option value="barbudans">Barbudans</option>
                <option value="batswana">Batswana</option>
                <option value="belarusian">Belarusian</option>
                <option value="belgian">Belgian</option>
                <option value="belizean">Belizean</option>
                <option value="beninese">Beninese</option>
                <option value="bhutanese">Bhutanese</option>
                <option value="bolivian">Bolivian</option>
                <option value="bosnian">Bosnian</option>
                <option value="brazilian">Brazilian</option>
                <option value="british">British</option>
                <option value="bruneian">Bruneian</option>
                <option value="bulgarian">Bulgarian</option>
                <option value="burkinabe">Burkinabe</option>
                <option value="burmese">Burmese</option>
                <option value="burundian">Burundian</option>
                <option value="cambodian">Cambodian</option>
                <option value="cameroonian">Cameroonian</option>
                <option value="canadian">Canadian</option>
                <option value="cape verdean">Cape Verdean</option>
                <option value="central african">Central African</option>
                <option value="chadian">Chadian</option>
                <option value="chilean">Chilean</option>
                <option value="chinese">Chinese</option>
                <option value="colombian">Colombian</option>
                <option value="comoran">Comoran</option>
                <option value="congolese">Congolese</option>
                <option value="costa rican">Costa Rican</option>
                <option value="croatian">Croatian</option>
                <option value="cuban">Cuban</option>
                <option value="cypriot">Cypriot</option>
                <option value="czech">Czech</option>
                <option value="danish">Danish</option>
                <option value="djibouti">Djibouti</option>
                <option value="dominican">Dominican</option>
                <option value="dutch">Dutch</option>
                <option value="east timorese">East Timorese</option>
                <option value="ecuadorean">Ecuadorean</option>
                <option value="egyptian">Egyptian</option>
                <option value="emirian">Emirian</option>
                <option value="equatorial guinean">Equatorial Guinean</option>
                <option value="eritrean">Eritrean</option>
                <option value="estonian">Estonian</option>
                <option value="ethiopian">Ethiopian</option>
                <option value="fijian">Fijian</option>
                <option value="filipino">Filipino</option>
                <option value="finnish">Finnish</option>
                <option value="french">French</option>
                <option value="gabonese">Gabonese</option>
                <option value="gambian">Gambian</option>
                <option value="georgian">Georgian</option>
                <option value="german">German</option>
                <option value="ghanaian">Ghanaian</option>
                <option value="greek">Greek</option>
                <option value="grenadian">Grenadian</option>
                <option value="guatemalan">Guatemalan</option>
                <option value="guinea-bissauan">Guinea-Bissauan</option>
                <option value="guinean">Guinean</option>
                <option value="guyanese">Guyanese</option>
                <option value="haitian">Haitian</option>
                <option value="herzegovinian">Herzegovinian</option>
                <option value="honduran">Honduran</option>
                <option value="hungarian">Hungarian</option>
                <option value="icelander">Icelander</option>
                <option value="indian">Indian</option>
                <option value="indonesian">Indonesian</option>
                <option value="iranian">Iranian</option>
                <option value="iraqi">Iraqi</option>
                <option value="irish">Irish</option>
                <option value="israeli">Israeli</option>
                <option value="italian">Italian</option>
                <option value="ivorian">Ivorian</option>
                <option value="jamaican">Jamaican</option>
                <option value="japanese">Japanese</option>
                <option value="jordanian">Jordanian</option>
                <option value="kazakhstani">Kazakhstani</option>
                <option value="kenyan">Kenyan</option>
                <option value="kittian and nevisian">Kittian and Nevisian</option>
                <option value="kuwaiti">Kuwaiti</option>
                <option value="kyrgyz">Kyrgyz</option>
                <option value="laotian">Laotian</option>
                <option value="latvian">Latvian</option>
                <option value="lebanese">Lebanese</option>
                <option value="liberian">Liberian</option>
                <option value="libyan">Libyan</option>
                <option value="liechtensteiner">Liechtensteiner</option>
                <option value="lithuanian">Lithuanian</option>
                <option value="luxembourger">Luxembourger</option>
                <option value="macedonian">Macedonian</option>
                <option value="malagasy">Malagasy</option>
                <option value="malawian">Malawian</option>
                <option value="malaysian">Malaysian</option>
                <option value="maldivan">Maldivan</option>
                <option value="malian">Malian</option>
                <option value="maltese">Maltese</option>
                <option value="marshallese">Marshallese</option>
                <option value="mauritanian">Mauritanian</option>
                <option value="mauritian">Mauritian</option>
                <option value="mexican">Mexican</option>
                <option value="micronesian">Micronesian</option>
                <option value="moldovan">Moldovan</option>
                <option value="monacan">Monacan</option>
                <option value="mongolian">Mongolian</option>
                <option value="moroccan">Moroccan</option>
                <option value="mosotho">Mosotho</option>
                <option value="motswana">Motswana</option>
                <option value="mozambican">Mozambican</option>
                <option value="namibian">Namibian</option>
                <option value="nauruan">Nauruan</option>
                <option value="nepalese">Nepalese</option>
                <option value="new zealander">New Zealander</option>
                <option value="ni-vanuatu">Ni-Vanuatu</option>
                <option value="nicaraguan">Nicaraguan</option>
                <option value="nigerien">Nigerien</option>
                <option value="north korean">North Korean</option>
                <option value="northern irish">Northern Irish</option>
                <option value="norwegian">Norwegian</option>
                <option value="omani">Omani</option>
                <option value="palestinian">Palestinian</option>
                <option value="pakistani">Pakistani</option>
                <option value="palauan">Palauan</option>
                <option value="panamanian">Panamanian</option>
                <option value="papua new guinean">Papua New Guinean</option>
                <option value="paraguayan">Paraguayan</option>
                <option value="peruvian">Peruvian</option>
                <option value="polish">Polish</option>
                <option value="portuguese">Portuguese</option>
                <option value="qatari">Qatari</option>
                <option value="romanian">Romanian</option>
                <option value="russian">Russian</option>
                <option value="rwandan">Rwandan</option>
                <option value="saint lucian">Saint Lucian</option>
                <option value="salvadoran">Salvadoran</option>
                <option value="samoan">Samoan</option>
                <option value="san marinese">San Marinese</option>
                <option value="sao tomean">Sao Tomean</option>
                <option value="saudi">Saudi</option>
                <option value="scottish">Scottish</option>
                <option value="senegalese">Senegalese</option>
                <option value="serbian">Serbian</option>
                <option value="seychellois">Seychellois</option>
                <option value="sierra leonean">Sierra Leonean</option>
                <option value="singaporean">Singaporean</option>
                <option value="slovakian">Slovakian</option>
                <option value="slovenian">Slovenian</option>
                <option value="solomon islander">Solomon Islander</option>
                <option value="somali">Somali</option>
                <option value="south african">South African</option>
                <option value="south korean">South Korean</option>
                <option value="spanish">Spanish</option>
                <option value="sri lankan">Sri Lankan</option>
                <option value="sudanese">Sudanese</option>
                <option value="surinamer">Surinamer</option>
                <option value="swazi">Swazi</option>
                <option value="swedish">Swedish</option>
                <option value="swiss">Swiss</option>
                <option value="syrian">Syrian</option>
                <option value="taiwanese">Taiwanese</option>
                <option value="tajik">Tajik</option>
                <option value="tanzanian">Tanzanian</option>
                <option value="thai">Thai</option>
                <option value="togolese">Togolese</option>
                <option value="tongan">Tongan</option>
                <option value="trinidadian or tobagonian">Trinidadian or Tobagonian</option>
                <option value="tunisian">Tunisian</option>
                <option value="turkish">Turkish</option>
                <option value="tuvaluan">Tuvaluan</option>
                <option value="ugandan">Ugandan</option>
                <option value="ukrainian">Ukrainian</option>
                <option value="uruguayan">Uruguayan</option>
                <option value="uzbekistani">Uzbekistani</option>
                <option value="venezuelan">Venezuelan</option>
                <option value="vietnamese">Vietnamese</option>
                <option value="welsh">Welsh</option>
                <option value="yemenite">Yemenite</option>
                <option value="zambian">Zambian</option>
                <option value="zimbabwean">Zimbabwean</option>
                </select>
                </div>
</div>
<div class="form-group">
<label class="col-xs-3 control-label"> Date of Birth </label>
 <div class="col-xs-9">
<input  type="text" name="setDateOfBirth" id="setDateOfBirth" value="${s.dateOfBirth}" class="inputText form-control" maxlength="12" size="50" placeholder="dd/mm/yyyy"/> 
</div>
</div>
<div class="form-group">
<label class="col-xs-3 control-label"> Are you a Qatar Foundation Employee? </label>
 <div class="col-xs-9">
<select class="form-control" name="setQfEmployee" id="setQfEmployee">
<option value="0" ${(db.show==0)?"selected":""}>No </option>
<option value="1" ${(db.show==1)?"selected":""}>Yes </option>
</select>
</div>
</div>
<div class="form-group">
<label class="col-xs-3 control-label"> Please indicate your fields of interest </label>
 <div class="col-xs-9 ">
<input type="checkbox" value="Education" name="foi1" id="foi1"> Education 
<input type="checkbox" value="Research" name="foi2" id="foi2"> Research 
<input type="checkbox" value="General" name="foi3" id="foi3"> General 
<input type="hidden" name="setFieldOfInterest" id="setFieldOfInterest">
</div>
</div>

<button type="reset" value="Clear" class="btn brandingButton">Clear </button>  <button type="submit" value="Register" class="btn brandingButton">Register</button>
</form>
</div>

</body>

<script type="text/javascript">
(function($, W, D) {
	var JQUERY4U = {};
	JQUERY4U.UTIL = {
		setupFormValidation : function() {
			//form validation rules
			$("#subscribeForm").validate({
				rules : {
					setFirstName : "required",
					setLastName : "required",
					setEmail : "required"
					
				},
				messages : {
					setFirstName : "Please enter your name",
					setLastName : "Please enter your name",
					setEmail : "Please enter your email"
					
				},
				submitHandler : function(form) {
					if ($("#id").val() == "")
						createForm();
					else
						updateForm();		
				}
			});
		}
	};

	//when the dom has loaded setup form validation rules
	$(D).ready(function($) {
		JQUERY4U.UTIL.setupFormValidation();
	});

})(jQuery, window, document);

function createForm() {
	alert();
	$('#setFieldOfInterest').val(
			$('#foi1').val()
					+ ",  "
					+ ($('#foi2').val()!="")
					+ ", "
					+ ($('#foi3').val()!=""));

		$.ajax({
			type : "POST",
			url : "../AjaxToDB.do",
			data :$("#subscribeForm").serialize(),
			dataType : "text",
			async : false,
			success : function(objID, status) {
				//alert("Site Data with ID: " + objID);
				$.ajax({
					url : "../Reloader.do?o=Subscribe",
					success : function() {
						alert("New Subscription Created");
					}
				});
			},
			error : function() {
				alert("Error in New Subscription Creation");
			}
		});
	}

function updateForm() {
	$('#setFieldOfInterest').val(
			($('#foi1').val()!="")
					+ ",  "
					+ ($('#foi2').val()!="")
					+ ", "
					+ ($('#foi3').val()!=""));
		$.ajax({
			type : "POST",
			url : "../AjaxToDB.do",
			data :$("#subscribeForm").serialize(),
			dataType : "text",
			async : false,
			success : function(objID, status) {
				//alert("Site Data with ID: " + objID);
				$.ajax({
					url : "../Reloader.do?o=Subscribe",
					success : function() {
						alert("New Subscription Updated");
					}
				});
			},
			error : function() {
				alert("Error in New Subscription Update");
			}
		});
	}
	</script>
</html>