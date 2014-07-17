<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/qnl2.css" type="text/css"/>
<title>المكتبة الوطنية - سجّل بيانات مكتبتك</title>
</head>

<script type="text/javascript">
function createLibraryRegistrationAr() {
$('#setLibraryName').val($('#setLibraryName_AR').val());

$('#setLibraryPhone').val($('#libPhone1').val() + " Ext. " + $('#libExt1').val() + (($('#libPhone2').val() != "")?" \n " + $('#libPhone2').val() + " Ext. " + $('#libExt2').val():""));
	
	$('#setLibraryContacts_AR').val($('#contactName1').val() + ' (' + $('#contactTitle1').val() + ')' + "\n" 
									+ (($('#contactName2').val() != "")?($('#contactName2').val() + ' (' + $('#contactTitle2').val() + ')' +  "\n" ):"")
										+ (($('#contactName3').val() != "")?($('#contactName3').val() + ' (' + $('#contactTitle3').val() + ')'):"")
								); 
	
	$('#setLibraryServices_AR').val($('#service1').val() + "\n" 
								+ (($('#service2').val()!="")?$('#service2').val() + "\n":"")
									+ (($('#service3').val()!="")?$('#service3').val() + "\n":"")
										+ (($('#service4').val()!="")?$('#service4').val() + "\n":"")
											+ (($('#service5').val()!="")?$('#service5').val() + "\n":"")
												+ (($('#service6').val()!="")?$('#service6').val() + "\n":"")
													+ (($('#service7').val()!="")?$('#service7').val():"")
								);
	
	$('#setLibraryOperationHours_AR').val($('#day1F').val() + " - " + $('#day1T').val() + ": " + $('#time1F').val() + " - " + $('#time1T').val() + "\n"
										+ (($('#day2F').val() != "")?($('#day2F').val() + " - " + $('#day2T').val() + ": " + $('#time2F').val() + " - " + $('#time2T').val() + "\n"):"")
											+ (($('#day3F').val() != "")?($('#day3F').val() + " - " + $('#day3T').val() + ": " + $('#time3F').val() + " - " + $('#time3T').val() + "\n"):"")
												+ (($('#day4F').val() != "")?($('#day4F').val() + " - " + $('#day4T').val() + ": " + $('#time4F').val() + " - " + $('#time4T').val()):"")
								);
	
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
					location
							.reload();
				}
			});
		},
		error : function() {
			alert("Error in saving Page data");
		}
	});

}



</script>
<script type="text/javascript">
(function($, W, D) {
	var JQUERY4U = {};
	JQUERY4U.UTIL = {
		setupFormValidation : function() {
			//form validation rules
			$("#register-form").validate({
				rules : {
					setLibraryName_AR : "required",
					setLibraryEmail : {
						 required: true,
					      email: true
					},
					libPhone1 : "required"
					
				},
				messages : {
					setLibraryName_AR : "Please enter your name",
					setLibraryEmail : {
						required: "Please enter your email",
					      email: "name@domain.com",
					},
					libPhone1 : "Please enter your phone"
					
				},
				submitHandler : function(form) {
					//if ($("#id").val() == "")
						createLibraryRegistration();
					//else
					//	alert("Error ");
				}
			});
		}
	};

	//when the dom has loaded setup form validation rules
	$(D).ready(function($) {
		JQUERY4U.UTIL.setupFormValidation();
	});

})(jQuery, window, document);</script>
<body class="ar body_form">
<h1 align="right"><font color="#000000"> سجّل بيانات مكتبتك </font></h1>
<div class="col-xs-12 col-sm-9 col-lg-6 register-form pull-right">

<form name="register-form" method="post" id="register-form" class="form-horizontal">
       <input type="hidden" name="oName" value="LibRegistration" id="oName" /> 
    <input type="hidden" name="fromEmail" value="libraryRegistration@qf.org.qa">  
    <input type="hidden" value="uahmad@qf.org.qa" name="toEmail">  
    <input type="hidden" value="lreynolds@qf.org.qa" name="ccEmail">  
    <input type="hidden" name="subject" value="New Library Registration"> 
    <input type="hidden" name="objUser" id="objUser" value="11" />
    <input type="hidden" name="setLibraryName" id="setLibraryName" value="" />
	<input type="hidden" name="~setApproved" value="0">
	
	
		    
   <!-- Please align your code like this and add classes properly like this to make it look nice -->
   <div class="form-group">
   		<div class="col-xs-9 ">
    		<input type="text" class="form-control" maxlength="50" size="50" name="setLibraryName_AR" id="setLibraryName_AR" placeholder="اسم المكتبة" required="required"  dir="rtl" lang="ar" >
    	</div> 
    	<label class="col-xs-3 control-label">اسم المكتبة<font color="red">*</font> </label>
   </div>             
   <!-- The rest you should do -->   
                
            <div class="form-group"> 
               
               <div class="col-xs-9 ">
               <input type="text"  maxlength="50" class="form-control" size="50" name="setLibraryAffOrganization_AR" id="setLibraryAffOrganization_AR" dir="rtl" lang="ar">
            </div>
            <label class="col-xs-3 control-label">المؤسسة التابعه لها </label>
            </div>
 
                     
             <div class="form-group"> 
                
                <div class="col-xs-9 ">
                 <select class="form-control" name="setLibraryType" id="setLibraryType" dir="rtl" lang="ar">
               <option value="School Library">مدرسية 	</option>
                <option value="Academic Library">جامعية </option>	
                <option value="Public Library">حكومية </option>
                <option value="Government Library"> خاصة
</option>                <option value="Special Library">عامة
</option>                </select>
                </div>
                <label class="col-xs-3 control-label"> نوع المكتبة</label>
            </div>
                 
                           <div class="form-group"> 
              <div class="col-xs-3 ">
               <input class="form-control" type="text"  maxlength="4" size="5" name="libExt1" id="libExt1" placeholder="4454 "> </div>
                <label class="col-xs-2 control-label"> التحويلة  </label>
               <div class="col-xs-4 ">
               <input class="form-control" type="text"  maxlength="8" size="33" name="libPhone1" id="libPhone1" placeholder="44544444" required="required" class="en"> 
               
               </div>
               <label class="col-xs-3 control-label"> رقم الهاتف<font color="red">*</font> </label>
               </div>
               
                <div class="form-group">
  
                <div class="col-xs-3 ">
                 <input class="form-control" type="text"  maxlength="4" size="5" name="libExt2" id="libExt2" placeholder="4454 "> 
                 
                
                 </div>
                   <label class="col-xs-2 control-label">  التحويلة </label>
                 <div class="col-xs-4 ">
               <input type="text"  class="form-control" maxlength="8" size="33" name="libPhone2" id="libPhone2" placeholder="44544444" class="en">
               </div>
                 <label class="col-xs-3 control-label"></label>
                  <input type="hidden" name="setLibraryPhone" id="setLibraryPhone"></div>
          
                               
 <div class="form-group"> 
            
               <div class="col-xs-9 ">
              <input type="text" class="form-control" maxlength="12" size="45" name="setLibraryFax" id="setLibraryFax" placeholder="44544444" class="en">
               </div>
                <label class="col-xs-3 control-label">   رقم الفاكس </label>
</div>
      
        
        <div class="form-group"> 
            
                 <div class="col-xs-9 ">
               <input type="text" class="form-control" maxlength="50" size="50" name="setLibraryEmail" id="setLibraryEmail" placeholder="my@library.com" required="required">
               </div>
                <label class="col-xs-3 control-label">  البريد الإلكتروني<font color="red">*</font> </label>
           </div>
           
                <div class="form-group"> 
             
                   <div class="col-xs-9 ">
                   <input type="text" class="form-control"  maxlength="50" size="50" name="setLibraryWebsite" id="setLibraryWebsite" placeholder="http://www.myLibrary.com">
                   </div>
                     <label class="col-xs-3 control-label"> الموقع الإلكتروني</label>
                   </div>
       
       <div class="form-group"> 
            
               <div class="col-xs-9 ">
<input type="text" class="form-control"  maxlength="50" size="50" name="setLibraryColSize_AR" id="setLibraryColSize_AR" placeholder="500,000 books" dir="rtl" lang="ar">
</div>
   <label class="col-xs-3 control-label"> عدد المطبوعات </label>
 </div>
                     
            <div class="form-group">
               
                <div class="col-xs-9 ">
                <input type="text" class="form-control" maxlength="50" size="50" name="setLibraryFacebook" id="setLibraryFacebook" placeholder="http://www.facebook.com/myLibrary">
                </div>
                 <label class="col-xs-3 control-label">صفحة المكتبة على الفيسبوك</label>
                </div>
                
                <div class="form-group">
                
                <div class="col-xs-9 "><input type="text" class="form-control" maxlength="50" size="50" name="setLibraryTwitter" id="setLibraryTwitter" placeholder="http://www.twitter.com/myLibrary">
            </div>
             <label class="col-xs-3 control-label">صفحة المكتبة على تويتر</label>
            </div>
            <div class="form-group">
 				          
                     
                 <div class="col-xs-9 fieldset">
                
                            
                           <div class="col-xs-6 heading">المسمى   الوظيفي</div>
                           <div class="col-xs-6 heading">الاسم</div>
                        <div class="col-xs-6">
                        <input type="text" name="contactTitle1" id="contactTitle1" size="30" maxlength="50" dir="rtl" lang="ar"> </div>
                        <div class="col-xs-6">
                        <input type="text" name="contactName1" id="contactName1" size="29" maxlength="35" dir="rtl" lang="ar"></div>
                        <div class="col-xs-6">
                        <input type="text" name="contactTitle2" id="contactTitle2" size="30" maxlength="50" dir="rtl" lang="ar"> </div>
                        <div class="col-xs-6">
                        <input type="text" name="contactName2" id="contactName2" size="29" maxlength="35" dir="rtl" lang="ar" ></div>
                        <div class="col-xs-6">
                        <input type="text" name="contactTitle3" id="contactTitle3" size="30" maxlength="50" dir="rtl" lang="ar"> </div>
                        <div class="col-xs-6">
                        <input type="text" name="contactName3" id="contactName3" size="29" maxlength="35" dir="rtl" lang="ar" ></div>
                        
                      </div>
               
                <input type="hidden" name="setLibraryContacts_AR" id="setLibraryContacts_AR"> 
                <label class="col-xs-3 control-label"> مسؤول الاتصال</label>        </div>
  
           <div class="form-group">
               
               <div class="col-xs-9 ">
                <textarea name="setLibraryPhyAddrress_AR" id="setLibraryPhyAddrress_AR" cols="50" rows="5" maxlength="255" class="form-control" placeholder="Physical Address" dir="rtl" lang="ar"></textarea>
</div> <label class="col-xs-3 control-label">عنوان المكتبة</label>
            </div>
            
            <div class="form-group">
               
                <div class="col-xs-9 ">
                <textarea name="setLibraryMailAddress_AR" id="setLibraryMailAddress_AR" cols="50" rows="5" class="form-control" maxlength="255" placeholder="Maling Address" dir="rtl" lang="ar"></textarea>
</div>  <label class="col-xs-3 control-label">العنوان البريدي</label>
            </div>
            
            <div class="form-group">
               
               <div class="col-xs-9 ">
               <textarea name="setLibrarySpecialCols_AR" id="setLibrarySpecialCols_AR" cols="50" rows="5" class="form-control" maxlength="255" dir="rtl" lang="ar"></textarea>
               </div> <label class="col-xs-3 control-label">المجموعات الخاصة</label>
            </div>
            
            <div class="form-group">
               
                <div class="col-xs-9 fieldset">
                <div class="col-xs-9">
              <input type="text" id="service1" name="service1" size="50" maxlength="50" class="inputText service form-control" dir="rtl" lang="ar"></div>
               <div class="col-xs-9">
                <input type="text" id="service2" name="service2" size="50" maxlength="50" class="inputText service form-control" dir="rtl" lang="ar"></div>
                 <div class="col-xs-9">
                <input type="text" id="service3" name="service3" size="50" maxlength="50" class="inputText service form-control" dir="rtl" lang="ar"></div>
                 <div class="col-xs-9">
                <input type="text" id="service4" name="service4" size="50" maxlength="50" class="inputText service form-control" dir="rtl" lang="ar"></div>
                 <div class="col-xs-9">
                <input type="text" id="service5" name="service5" size="50" maxlength="50" class="inputText service form-control" dir="rtl" lang="ar"></div>
                 <div class="col-xs-9">
                <input type="text" id="service6" name="service6" size="50" maxlength="50" class="inputText service form-control" dir="rtl" lang="ar"></div>
                 <div class="col-xs-9">
                <input type="text" id="service7" name="service7" size="50" maxlength="50" class="inputText service form-control" dir="rtl" lang="ar"></div>
                <input type="hidden" name="setLibraryServices_AR" id="setLibraryServices_AR">
</div> <label class="col-xs-3 control-label">أبرز الخدمات<br>
                <font class="helpText">مثال: خدمة الإعارة بين المكتبات، خدمة وايرلس، الكتب الإلكترونية... إلخ</font></label>
           </div>
           
    <div class="form-group">
             
                <div class="col-xs-9 fieldset ">
                <div class="col-xs-6 heading">الأيام</div>
                          <div class="col-xs-6 heading">الوقت</div>
                       
                           <div class="col-xs-3 heading">من</div>
                            <div class="col-xs-3 heading">إلى</div>
                           <div class="col-xs-3 heading">من</div>
                           <div class="col-xs-3 heading">إلى</div>
                        <div class="col-xs-3" ><select name="day1F" id="day1F" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="day1T" id="day1T" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time1F" id="time1F" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 صباحاً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time1T" id="time1T" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 مساءً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                        <div class="col-xs-3" ><select name="day2F" id="day2F" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="day2T" id="day2T" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time2F" id="time2F" style="width:120px">
                            <option value="" > 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 مساءً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time2T" id="time2T" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 مساءً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                        <div class="col-xs-3" ><select name="day3F" id="day3F" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="day3T" id="day3T" style="width:120px">
                            <option value="" > 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time3F" id="time3F" style="width:120px">
                            <option value="" > 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 مساءً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time3T" id="time3T" style="width:120px">
                            <option value="" > 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 مساءً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                       <div class="col-xs-3" > <select name="day4F" id="day4F" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="day4T" id="day4T" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time4F" id="time4F" style="width:120px">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 مساءً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                            <div class="col-xs-3" ><select name="time4T" id="time4T" style="width:120px">
                            <option value="" > 				اختر من القائمة 				</option>
                            <option value="06:00 صباحاً">06:00 صباحاً</option>
                            <option value="06:30 صباحاً">06:30 صباحاً</option>
                            <option value="07:00 صباحاً">07:00 صباحاً</option>
                            <option value="07:30 صباحاً">07:30 صباحاً</option>
                            <option value="08:00 صباحاً">08:00 صباحاً</option>
                            <option value="08:30 صباحاً">08:30 صباحاً</option>
                            <option value="09:00 صباحاً">09:00 صباحاً</option>
                            <option value="09:30 صباحاً">09:30 صباحاً</option>
                            <option value="10:00 صباحاً">10:00 صباحاً</option>
                            <option value="10:30 صباحاً">10:30 صباحاً</option>
                            <option value="11:00 صباحاً">11:00 صباحاً</option>
                            <option value="11:30 صباحاً">11:30 صباحاً</option>
                            <option value="12:00 مساءً">12:00 مساءً</option>
                            <option value="12:30 مساءً">12:30 مساءً</option>
                            <option value="01:00 مساءً">01:00 مساءً</option>
                            <option value="01:30 مساءً">01:30 مساءً</option>
                            <option value="02:00 مساءً">02:00 مساءً</option>
                            <option value="02:30 مساءً">02:30 مساءً</option>
                            <option value="03:00 مساءً">03:00 مساءً</option>
                            <option value="03:30 مساءً">03:30 مساءً</option>
                            <option value="04:00 مساءً">04:00 مساءً</option>
                            <option value="04:30 مساءً">04:30 مساءً</option>
                            <option value="05:00 مساءً">05:00 مساءً</option>
                            <option value="05:30 مساءً">05:30 مساءً</option>
                            <option value="06:00 مساءً">06:00 مساءً</option>
                            <option value="06:30 مساءً">06:30 مساءً</option>
                            <option value="07:00 مساءً">07:00 مساءً</option>
                            <option value="07:30 مساءً">07:30 مساءً</option>
                            <option value="08:00 مساءً">08:00 مساءً</option>
                            <option value="08:30 مساءً">08:30 مساءً</option>
                            <option value="09:00 مساءً">09:00 مساءً</option>
                            <option value="09:30 مساءً">09:30 مساءً</option>
                            <option value="10:00 مساءً">10:00 مساءً</option>
                            <option value="10:30 مساءً">10:30 مساءً</option>
                            <option value="11:00 مساءً">11:00 مساءً</option>
                            <option value="11:30 مساءً">11:30 مساءً</option>
                            <option value="12:00 صباحاً">12:00 صباحاً</option>
                            <option value="12:30 صباحاً">12:30 صباحاً</option>
                            </select></div>
                       
                <input type="hidden" name="setLibraryOperationHours_AR" id="setLibraryOperationHours_AR"></div> 
                 <label class="col-xs-2 control-label">ساعات العمل</label></div>
           
    <div class="form-group">            
                <div class="col-xs-9 ">
                <select name="~setLibraryPublicAccess" id="~setLibraryPublicAccess" dir="rtl" lang="ar" class="form-control">
                <option value="1">نعم</option>
                <option value="0">لا</option>
                </select>
</div>  
 <label class="col-xs-3 control-label">دخول الجمهور</label>
                </div> 
          
           <div class="form-group">
               
                <div class="col-xs-9 ">
                <textarea name="setLibraryAccessConditions_AR" id="setLibraryAccessConditions_AR" cols="50" rows="5" maxlength="255" dir="rtl" class="form-control" lang="ar"></textarea>
                </div> <label class="col-xs-3 control-label">شروط دخول الجمهور</label>
                </div>
           
            <div class="form-group">
               
                <div class="col-xs-9 ">
                <input type="text"  maxlength="50" size="50" name="setLibraryColLangs_AR" id="setLibraryColLangs_AR" placeholder="العربي,الانجليزي" class="form-control" dir="rtl" lang="ar">
</div> <label class="col-xs-3 control-label">اللغات الأساسية لمجموعات المكتبة</label>
                </div>
            
             <div class="form-group">
              
                <div class="col-xs-9 "><input type="text"  maxlength="50" size="50" name="setOtherLanguages_AR" id="setOtherLanguages_AR" class="form-control" dir="rtl" lang="ar">
</div>   <label class="col-xs-3 control-label">لغات اخرى</label>
         </div>
         
      
        <button type="reset" value="إلغاء" class="btn brandingButton">إلغاء </button>  
        <button type="submit" value="Register" class="btn brandingButton">إرسال</button>

</form>
</div>

</body>
</html>