<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/bootstrap.min.css" type='text/css' />
<link rel="stylesheet" href="../css/qnl2.css" type='text/css'/>
<title>Qatar National Library- Register Your Library</title>
</head>
<body>
<h1> Register Your Library</h1>
<div class="well bs-component">
<form action="/app/wa/handleFormByEmail" name="register-form" method="post" id="register-form" novalidate="novalidate" class="form-horizontal">
    <input type="hidden" name="redirectUrl" value="/find-answers/other-libraries/thankyou-registering"> 
    <input type="hidden" name="fromEmail" value="libraryRegistration@qf.org.qa">  
    <input type="hidden" value="uahmad@qf.org.qa" name="toEmail">  
    <input type="hidden" value="lreynolds@qf.org.qa" name="ccEmail">  
    <input type="hidden" name="subject" value="New Library Registration"> 
    <input type="hidden" name="tableName" value="LibraryRegistration">
    <fieldset>
    
   <div class="form-group">
        <label class="col-xs-3 control-label"> Name of Library<font color="red">*</font> </label>
        <div class="col-xs-9">
               <input type="text" class="inputText" maxlength="50" size="50" name="LibraryName" placeholder="Name of Library" required="required"> 		    
               <input type="hidden" name="LibraryID" class="inputText" value="1400055335459"> 		    
               <input type="hidden" name="Approved" value="false">
            </div> 
            </div>             
            
            <div class="form-group"> 
               <label class="col-xs-3 control-label"> Affiliated Organization </label>
               <div class="col-xs-9">
               <input type="text" class="inputText" maxlength="50" size="50" name="LibraryAffOrganization">
            </div>
            </div>
 
                     
             <div class="form-group"> 
                <label class="col-xs-3 control-label">  Type of Library </label>
                <div class="col-xs-9">
               <input type="checkbox" name="LibraryType" value="School Library">School Library 		<br/>	
                <input type="checkbox" name="LibraryType" value="Academic Library">Academic Library 	<br/>	
                <input type="checkbox" name="LibraryType" value="Governmental Library">Governmental Library <br/>
                <input type="checkbox" name="LibraryType" value="Special Library">Special Library 		<br/>
                <input type="checkbox" name="LibraryType" value="Public Library">Public Library <br/>
                </div>
            </div>
                 
                           <div class="form-group"> 
               <label class="col-xs-3 control-label">  Phone Number<font color="red">*</font> </label>
               <div class="col-xs-4">
               <input type="text" class="inputText" maxlength="8" size="33" name="phone1" placeholder="+974 44544444" required="required"> 
               
               </div>
               
              <label class="col-xs-2 control-label"> Ext.  </label>
              <div class="col-xs-3">
               <input type="text" class="inputText" maxlength="4" size="5" name="phoneExt1" placeholder="4445"> </div>
               </div>
                <div class="form-group">
                 <label class="col-xs-3 control-label"></label>
                 <div class="col-xs-4">
               <input type="text" class="inputText" maxlength="8" size="33" name="phone2" placeholder="44544444">
               </div>
                <label class="col-xs-2 control-label">  Ext. </label>
                <div class="col-xs-3">
                 <input type="text" class="inputText" maxlength="4" size="5" name="phoneExt2" placeholder="4445"> 
                 <input type="hidden" name="LibraryPhone">
                 </div></div>
          
                               
 <div class="form-group"> 
             <label class="col-xs-3 control-label">   Fax Number </label>
               <div class="col-xs-9">
              <input type="text" class="inputText" maxlength="8" size="45" name="LibraryFax" placeholder="+974 44544444">
               </div>
</div>
      
        
        <div class="form-group"> 
             <label class="col-xs-3 control-label">   Email<font color="red">*</font> </label>
                 <div class="col-xs-9">
               <input type="text" class="inputText" maxlength="50" size="50" name="LibraryEmail" placeholder="my@library.com" required="required">
               </div>
           </div>
           
                <div class="form-group"> 
               <label class="col-xs-3 control-label">  Website </label>
                   <div class="col-xs-9">
                   <input type="text" class="inputText" maxlength="50" size="50" name="LibraryWebsite" placeholder="http://www.myLibrary.com">
                   </div>
                   </div>
       
       <div class="form-group"> 
               <label class="col-xs-3 control-label"> Print Collection Size 
                (Printed Material Only)</label>
               <div class="col-xs-9">
<input type="text" class="inputText" maxlength="50" size="50" name="LibraryColSize" placeholder="500,000 books">
</div>
 </div>
                     
            <div class="form-group">
                <label class="col-xs-3 control-label">Facebook Presence Address</label>
                <div class="col-xs-9">
                <input type="text" class="inputText" maxlength="50" size="50" name="LibraryFacebook" placeholder="http://www.facebook.com/myLibrary">
                </div>
                </div>
                
                <div class="form-group">
                 <label class="col-xs-3 control-label">Twitter Presence Address</label>
                <div class="col-xs-9"><input type="text" class="inputText" maxlength="50" size="50" name="LibraryTwitter" placeholder="http://www.twitter.com/myLibrary">
            </div>
            </div>
            
                <div class="form-group">
                <label class="col-xs-3 control-label"> List of Contact Persons</label>
                <div class="col-xs-9">
              <table style="width:100%; border: solid 1px #aaaaaa">
                    <tbody>
                        <tr>
                            <th>Name</th>
                            <th>Job title</th>
                            <!--<th>Email</th>-->
                        </tr>
                        <tr>
                            <td><input type="text" name="contactName1" size="30" maxlength="50" class="inputText"></td>
                            <td><input type="text" name="contactTitle1" size="30" maxlength="35" class="inputText"></td>
                            <!--<td><input type="text" name="contactEmail1" size="20" maxlength="35" class="inputText" /></td>-->
                        </tr>
                        <tr>
                            <td><input type="text" name="contactName2" size="30" maxlength="50" class="inputText"></td>
                            <td><input type="text" name="contactTitle2" size="30" maxlength="35" class="inputText"></td>
                            <!--<td><input type="text" name="contactEmail2" size="20" maxlength="35" class="inputText" /></td>-->
                        </tr>
                        <tr>
                            <td><input type="text" name="contactName3" size="30" maxlength="50" class="inputText"></td>
                            <td><input type="text" name="contactTitle3" size="30" maxlength="35" class="inputText"></td>
                            <!--<td><input type="text" name="contactEmail3" size="20" maxlength="35" class="inputText" /></td>-->
                        </tr>
                    </tbody>
                </table>
                <input type="hidden" name="LibraryContacts">        
                </div>
           </div>
     
           
           <div class="form-group">
               <label class="col-xs-3 control-label">Physical Address</label>
               <div class="col-xs-9">
                <textarea name="LibraryPhyAddrress" cols="50" rows="5" maxlength="255" placeholder="Physical Address"></textarea>
</div>
            </div>
            
            <div class="form-group">
                <label class="col-xs-3 control-label">Mailing Address</label>
                <div class="col-xs-9">
                <textarea name="LibraryMailAddress" cols="50" rows="5" maxlength="255" placeholder="Maling Address"></textarea>
</div>
            </div>
            
            <div class="form-group">
               <label class="col-xs-3 control-label">Special Collections</label>
               <div class="col-xs-9">
               <textarea name="LibrarySpecialCols" cols="50" rows="5" maxlength="255"></textarea>
               </div>
            </div>
            
            <div class="form-group">
                <label class="col-xs-3 control-label">Services<br>
                <font class="helpText">Example: ILL, Wireless, eBook, etc.</font></label>
                <div class="col-xs-9">
              <input type="text" name="service1" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service2" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service3" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service4" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service5" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service6" size="50" maxlength="50" class="inputText service"><br>
                <input type="text" name="service7" size="50" maxlength="50" class="inputText service"><br>
                <input type="hidden" name="LibraryServices">
</div>
           </div>
           
                          <div class="form-group">
              <label class="col-xs-3 control-label">Hours of Operations</label>
                <div class="col-xs-9">
                <table style="width:100%; bordeR: solid 1px #aaaaaa">
                    <tbody>
                        <tr>
                            <th colspan="2">Days</th>
                            <th colspan="2">Time</th>
                        </tr>
                        <tr>
                            <th>From</th>
                            <th>To</th>
                            <th>From</th>
                            <th>To</th>
                        </tr>
                        <tr>
                            <td><select name="day1F">
                            <option value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="day1T">
                            <option value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="time1F">
                            <option  value="">Select One</option>
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
                            </select></td>
                            <td><select name="time1T">
                            <option  value="">Select One</option>
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
                            </select></td>
                        </tr>
                        <tr>
                            <td><select name="day2F">
                            <option value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="day2T">
                            <option  value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="time2F">
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
                            </select></td>
                            <td><select name="time2T">
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
                            </select></td>
                        </tr>
                        <tr>
                            <td><select name="day3F">
                            <option  value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="day3T">
                            <option value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="time3F">
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
                            </select></td>
                            <td><select name="time3T">
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
                            </select></td>
                        </tr>
                        <tr>
                            <td><select name="day4F">
                            <option value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="day4T">
                            <option value="">Select One</option>
                            <option value="Saturday">Saturday</option>
                            <option value="Sunday">Sunday</option>
                            <option value="Monday">Monday</option>
                            <option value="Tuesday">Tuesday</option>
                            <option value="Wednesday">Wednesday</option>
                            <option value="Thursday">Thursday</option>
                            <option value="Friday">Friday</option>
                            </select></td>
                            <td><select name="time4F">
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
                            </select></td>
                            <td><select name="time4T">
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
                            </select></td>
                        </tr>
                    </tbody>
                </table>
                <input type="hidden" name="LibraryOperationHours"></div> </div>
           
    <div class="form-group">
                <label class="col-xs-3 control-label">Do you allow public access to library?</label>
                <div class="col-xs-9">
                <select name="LibraryPublicAccess">
                <option value="Yes">Yes</option>
                <option value="No">No</option>
                </select>
</div>
                </div> 
          
           <div class="form-group">
                <label class="col-xs-3 control-label">If you allow public patron access, what are your conditions?</label>
                <div class="col-xs-9">
                <textarea name="LibraryAccessConditions" cols="50" rows="5" maxlength="255"></textarea>
                </div>
                </div>
           
            <div class="form-group">
                <label class="col-xs-3 control-label">Primary Language(s) of the Collection</label>
                <div class="col-xs-9">
                <input type="text" class="inputText" maxlength="50" size="50" name="LibraryColLangs" placeholder="English, Arabic">
</div>
                </div>
            
             <div class="form-group">
                <label class="col-xs-3 control-label">Other Collection Language(s)</label>
                <div class="col-xs-9"><input type="text" class="inputText" maxlength="50" size="50" name="OtherLanguages" placeholder="Urdu, French, German, Persian">
</div>
         </div>
         
      
        <button type="reset" value="Clear" class="btn brandingButton">Clear </button>  
        <button type="submit" value="Register" class="btn brandingButton">Register</button>
        
       </fieldset>
       
</form>
</div>
</body>
</html>