<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="http://code.jquery.com/jquery-1.10.1.js"></script>
<script src="scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="../css/qnl2.css" type="text/css"/>
<title>المكتبة الوطنية - سجّل بيانات مكتبتك</title>
</head>
<body class="ar" dir="rtl">

<h1 align="right"><font color="#000000"> سجّل بيانات مكتبتك </font></h1>
<div class="well bs-component form_align">

<form action="/app/wa/handleFormByEmail" name="register-form" method="post" id="register-form" novalidate="novalidate" class="form-horizontal">
    <input type="hidden" name="redirectUrl" value="/find-answers/other-libraries/thankyou-registering"> 
    <input type="hidden" name="fromEmail" value="libraryRegistration@qf.org.qa">  
    <input type="hidden" value="uahmad@qf.org.qa" name="toEmail">  
    <input type="hidden" value="lreynolds@qf.org.qa" name="ccEmail">  
    <input type="hidden" name="subject" value="New Library Registration"> 
    <input type="hidden" name="tableName" value="LibraryRegistration">
    <fieldset>
  
   <div class="form-group">
          
        <div class="col-xs-9 input_text_style">
               <input type="text" class="form-control" maxlength="50" size="50" name="LibraryName_AR" placeholder="اسم المكتبة" required="required"> 	
               <input type="hidden" name="LibraryID" class="inputText" value="1400128960203">
               <input type="hidden" name="Approved" value="false">	    
            </div> 
          <label class="col-xs-3 control-label">اسم المكتبة<font color="red">*</font> </label>
            </div>             
            
            <div class="form-group"> 
               
               <div class="col-xs-9 input_text_style">
               <input type="text" class="inputText " maxlength="50" size="50" name="LibraryAffOrganization_AR">
            </div>
            <label class="col-xs-3 control-label">المؤسسة التابعه لها </label>
            </div>
 
                     
             <div class="form-group"> 
                
                <div class="col-xs-9 input_text_style">
               <input type="checkbox" name="LibraryType" value="School Library">مدرسية 		<br/>	
                <input type="checkbox" name="LibraryType" value="Academic Library">جامعية 	<br/>	
                <input type="checkbox" name="LibraryType" value="Governmental Library">حكومية <br/>
                <input type="checkbox" name="LibraryType" value="Special Library">خاصة		<br/>
                <input type="checkbox" name="LibraryType" value="Public Library">عامة<br/>
                </div>
                <label class="col-xs-3 control-label"> نوع المكتبة</label>
            </div>
                 
                           <div class="form-group"> 
              <div class="col-xs-3 input_text_style">
               <input type="text" class="inputText" maxlength="4" size="5" name="phoneExt1" placeholder=" التحويلة"> </div>
                <label class="col-xs-2 control-label"> التحويلة  </label>
               <div class="col-xs-4 input_text_style">
               <input type="text" class="inputText" maxlength="8" size="33" name="phone1" placeholder="+974 44544444" required="required"> 
               
               </div>
               <label class="col-xs-3 control-label"> رقم الهاتف<font color="red">*</font> </label>
               </div>
               
                <div class="form-group">
  
                <div class="col-xs-3 input_text_style">
                 <input type="text" class="inputText" maxlength="4" size="5" name="phoneExt2" placeholder=" التحويلة"> 
                 <input type="hidden" name="LibraryPhone">
                 </div>
                   <label class="col-xs-2 control-label">  التحويلة </label>
                 <div class="col-xs-4 input_text_style">
               <input type="text" class="inputText" maxlength="8" size="33" name="phone2" placeholder="44544444">
               </div>
                 <label class="col-xs-3 control-label"></label></div>
          
                               
 <div class="form-group"> 
            
               <div class="col-xs-9 input_text_style">
              <input type="text" class="inputText" maxlength="12" size="45" name="LibraryFax" placeholder="+974 44544444">
               </div>
                <label class="col-xs-3 control-label">   رقم الفاكس </label>
</div>
      
        
        <div class="form-group"> 
            
                 <div class="col-xs-9 input_text_style">
               <input type="text" class="inputText" maxlength="50" size="50" name="LibraryEmail" placeholder="my@library.com" required="required">
               </div>
                <label class="col-xs-3 control-label">  البريد الإلكتروني<font color="red">*</font> </label>
           </div>
           
                <div class="form-group"> 
             
                   <div class="col-xs-9 input_text_style">
                   <input type="text" class="inputText" maxlength="50" size="50" name="LibraryWebsite" placeholder="http://www.myLibrary.com">
                   </div>
                     <label class="col-xs-3 control-label"> الموقع الإلكتروني</label>
                   </div>
       
       <div class="form-group"> 
            
               <div class="col-xs-9 input_text_style">
<input type="text" class="inputText" maxlength="50" size="50" name="LibraryColSize" placeholder="500,000 books">
</div>
   <label class="col-xs-3 control-label"> عدد المطبوعات </label>
 </div>
                     
            <div class="form-group">
               
                <div class="col-xs-9 input_text_style">
                <input type="text" class="inputText" maxlength="50" size="50" name="LibraryFacebook" placeholder="http://www.facebook.com/myLibrary">
                </div>
                 <label class="col-xs-3 control-label">صفحة المكتبة على الفيسبوك</label>
                </div>
                
                <div class="form-group">
                
                <div class="col-xs-9 input_text_style"><input type="text" class="inputText" maxlength="50" size="50" name="LibraryTwitter" placeholder="http://www.twitter.com/myLibrary">
            </div>
             <label class="col-xs-3 control-label">صفحة المكتبة على تويتر</label>
            </div>
            
                <div class="form-group">         
                <div class="col-xs-9 input_text_style">
              <div class="form-horizontal form_align well bs-compnenet"> 
                        <div class="form-group">
                           <div class="col-xs-2.5 input_text_style">
                           <label class="col-xs-2.5 control-label">الاسم</label>
                           <input type="text" name="contactName1" size="30" maxlength="50" class="inputText">
                            </div>
                            <div class="col-xs-2.5 input_text_style">
                            <label class="col-xs-2.5 control-label">المسمى الوظيفي</label>
                            <input type="text" name="contactTitle1" size="30" maxlength="35" class="inputText"></div>
                            
                            <!--<td><input type="text" name="contactEmail1" size="20" maxlength="35" class="inputText" /></td>-->
                        </div>
                        <div class="form-group">
                            <div class="col-xs-2.5 input_text_style">
                           <label class="col-xs-2.5 control-label"> الاسم</label>
                           <input type="text" name="contactName1" size="30" maxlength="50" class="inputText">
                            </div>
                             <div class="col-xs-2.5 input_text_style">
                            <label class="col-xs-2.5 control-label">المسمى الوظيفي</label>
                            <input type="text" name="contactTitle1" size="30" maxlength="35" class="inputText"></div>
                            <!--<td><input type="text" name="contactEmail2" size="20" maxlength="35" class="inputText" /></td>-->
                        </div>
                        <div class="form-group">
                           <div class="col-xs-2.5 input_text_style">
                           <label class="col-xs-2.5 control-label">الاسم</label>
                           <input type="text" name="contactName1" size="30" maxlength="50" class="inputText">
                            </div>
                             <div class="col-xs-2.5 input_text_style">
                            <label class="col-xs-2.5 control-label">المسمى الوظيفي</label>
                            <input type="text" name="contactTitle1" size="30" maxlength="35" class="inputText"></div>
                            <!--<td><input type="text" name="contactEmail3" size="20" maxlength="35" class="inputText" /></td>-->
                        </div>
                   
                </div>
                <input type="hidden" name="LibraryContacts">        
                </div>
                <label class="col-xs-3 control-label"> مسؤول الاتصال</label>
           </div>
     
           
           <div class="form-group">
               
               <div class="col-xs-9 input_text_style">
                <textarea name="LibraryPhyAddrress" cols="50" rows="5" maxlength="255" placeholder="Physical Address"></textarea>
</div> <label class="col-xs-3 control-label">عنوان المكتبة</label>
            </div>
            
            <div class="form-group">
               
                <div class="col-xs-9 input_text_style">
                <textarea name="LibraryMailAddress" cols="50" rows="5" maxlength="255" placeholder="Maling Address"></textarea>
</div>  <label class="col-xs-3 control-label">العنوان البريدي</label>
            </div>
            
            <div class="form-group">
               
               <div class="col-xs-9 input_text_style">
               <textarea name="LibrarySpecialCols" cols="50" rows="5" maxlength="255"></textarea>
               </div> <label class="col-xs-3 control-label">المجموعات الخاصة</label>
            </div>
            
            <div class="form-group">
               
                <div class="col-xs-9 input_text_style">
              <input type="text" name="service1" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service2" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service3" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service4" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service5" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service6" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service7" size="50" maxlength="50" class="inputText service"><br>
                <input type="hidden" name="LibraryServices">
</div> <label class="col-xs-3 control-label">أبرز الخدمات<br>
                <font class="helpText">مثال: خدمة الإعارة بين المكتبات، خدمة وايرلس، الكتب الإلكترونية... إلخ</font></label>
           </div>
           
                          <div class="form-group">
             
                <div class="col-xs-10 input_text_style">
                <table dir="rtl" style="width:100%; bordeR: solid 1px #aaaaaa">
                    <tbody>
                        <tr>
                            <th colspan="2" class="th_center">الأيام</th>
                            <th colspan="2" class="th_center">الوقت</th>
                        </tr>
                        <tr>
                            <th class="th_center">من</th>
                            <th class="th_center">إلى</th>
                            <th class="th_center">من</th>
                            <th class="th_center">إلى</th>
                        </tr>
                        <tr>
                            <td><select name="day1F">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="day1T">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="time1F">
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
                            </select></td>
                            <td><select name="time1T">
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
                            </select></td>
                        </tr>
                        <tr>
                            <td><select name="day2F">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="day2T">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="time2F">
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
                            </select></td>
                            <td><select name="time2T">
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
                            </select></td>
                        </tr>
                        <tr>
                            <td><select name="day3F">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="day3T">
                            <option value="" > 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="time3F">
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
                            </select></td>
                            <td><select name="time3T">
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
                            </select></td>
                        </tr>
                        <tr>
                            <td><select name="day4F">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="day4T">
                            <option value=""> 				اختر من القائمة 				</option>
                            <option value="السبت"> 				السبت 				</option>
                            <option value="الأحد"> 				الأحد 				</option>
                            <option value="الإثنين"> 				الإثنين 				</option>
                            <option value="الثلاثاء"> 				الثلاثاء 				</option>
                            <option value="الأربعاء"> 				الأربعاء 				</option>
                            <option value="الخميس"> 				الخميس 				</option>
                            <option value="الجمعة"> 				الجمعة 				</option>
                            </select></td>
                            <td><select name="time4F">
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
                            </select></td>
                            <td><select name="time4T">
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
                            </select></td>
                        </tr>
                    </tbody>
                </table>
                <input type="hidden" name="LibraryOperationHours"></div> 
                 <label class="col-xs-2 control-label">ساعات العمل</label></div>
           
    <div class="form-group">
               
                <div class="col-xs-9 input_text_style">
                <select name="LibraryPublicAccess">
                <option value="Yes">نعم</option>
                <option value="No">لا</option>
                </select>
</div>  <label class="col-xs-3 control-label">دخول الجمهور</label>
                </div> 
          
           <div class="form-group">
               
                <div class="col-xs-9 input_text_style">
                <textarea name="LibraryAccessConditions" cols="50" rows="5" maxlength="255"></textarea>
                </div> <label class="col-xs-3 control-label">شروط دخول الجمهور</label>
                </div>
           
            <div class="form-group">
               
                <div class="col-xs-9 input_text_style">
                <input type="text" class="inputText" maxlength="50" size="50" name="LibraryColLangs" placeholder="العربي,الانجليزي">
</div> <label class="col-xs-3 control-label">اللغات الأساسية لمجموعات المكتبة</label>
                </div>
            
             <div class="form-group">
              
                <div class="col-xs-9 input_text_style"><input type="text" class="inputText" maxlength="50" size="50" name="OtherLanguages">
</div>   <label class="col-xs-3 control-label">لغات اخرى</label>
         </div>
         
      
        <button type="reset" value="إلغاء" class="btn brandingButton">إلغاء </button>  
        <button type="submit" value="إرسال" class="btn brandingButton">إرسال</button>
       
       </fieldset>
       
</form>
</div>

</body>
</html>