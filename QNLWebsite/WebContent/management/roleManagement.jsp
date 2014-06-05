<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.qnl.core.LibPage,com.qnl.facade.LibPageFacade, com.qnl.core.Role,  com.qnl.core.User, com.qnl.core.UserRole, java.io.File"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage Role(s)</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="../scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="../css/bootstrap.min.css" />
<script src="../scripts/jquery.validate.min.js"></script>
<style>
th
{
	
	text-align:center;
	font-weight:normal;
	padding-top:8px;
	padding-bottom:8px;	
}

th.section
{
	background-color: #eeeeee;
	text-align:left;
	padding-left: 3px;	
}

td
{
	text-align:center;			
}

td.artifact
{
	text-align:left;
	padding-left: 7px;			
}
</style>
</head>
<body>

	<c:if test="${!empty param.rID}">
		<c:set var="thisRole" scope="page" value="${RoleFacade.findByID(param.rID)}"></c:set>
	</c:if>
	<div class="pull-left span12" id="msg"></div>
	<div class="clearfix"></div>
	<div style="width: 100%">
		<div class="pull-left" style="width:30%;margin:10px;padding: 5px;">					
			<c:forEach items="${RoleFacade.getAllRoles()}" var="r">
				<a href="roleManagement.jsp?rID=${r.id}">${r.name}</a><br />
			</c:forEach>
			<div class="clearfix"></div>
			<div class="pull-left" style="text-align:right">
				<a href="javascript:openNewModal('Role');" class="btn btn-primary">New Role</a>
				<a href="javascript:openNewModal('Subsite');" class="btn btn-primary">New Subsite</a>
			</div>			
		</div>
		
		<div class="pull-left img-rounded" style="border: solid 1px #cccccc">
			<table border="0" class="accessTable">
				<tr>
					<th width="60%">
						Artifact
					</th>
					<th width="20%">
						Can Access
					</th>
					<th width="20%">
						Can Approve
					</th>
				</tr>
				<tr>
					<th colspan="3" class="section">
						<strong>Management Pages</strong>
					</th>										
				</tr>
					
				
				<c:forEach items="${ManagementFiles.listFiles()}" var="f">
				<c:choose>
					<c:when test='${!f.getName().startsWith("_")}'>
					<tr>
					<td class="artifact">${f.getName()}</td>
					<td><input type="checkbox" class="chkbx" id="${f.getName()}*mf_access" name="${f.getName()}*mf_access" onclick="toggleThis('${f.getName()}','managementFilesAccess',this);" /></td>
					<td><input type="checkbox" class="chkbx" id="${f.getName()}*mf_approve" name="${f.getName()}*mf_approve" onclick="toggleThis('${f.getName()}','managementFilesApprove',this);" /></td>
					</tr>
					</c:when>
				</c:choose>
				</c:forEach>
			
				<tr>
					<th colspan="3" class="section">
						<strong>Generated Pages</strong>
					</th>										
				</tr>
				
				<c:forEach items="${LibPageFacade.getLibPages()}" var="p">
				<tr>
					<td class="artifact">${p.contentFile }</td>
					<td><input type="checkbox" class="chkbx" id="${p.id}*gp_access" name="${p.id}*gp_access" onclick="toggleThis('${p.id}','generatedPagesAccess',this);" /></td>
					<td><input type="checkbox" class="chkbx" id="${p.id}*gp_approve" name="${p.id}*gp_approve" onclick="toggleThis('${p.id}','generatedPagesApprove',this);" /></td>
				</tr>				
								
			</c:forEach>
			<tr>
				<th colspan="3" class="section">
					<strong>News and Event Categories</strong>
				</th>										
			</tr>			
			</table>	
			<div class="pull-left" >
				<button class="btn btn-primary" onclick="assign();">Update Access</button>
			</div>	
		</div>
	</div>
<form method="post" action="" id="accessForm" name="accessForm">
	<input type="text" id="managementFilesAccess" name="managementFilesAccess" value="${empty param.rID?'':thisRole.getAccessManagementPages()}" />
	<input type="text" id="managementFilesApprove" name="managementFilesApprove" value="${empty param.rID?'':thisRole.getApproveManagementPages()}" />
	<input type="text" id="generatedPagesAccess" name="generatedPagesAccess" />
	<input type="text" id="generatedPagesApprove" name="generatedPagesApprove" />
	<input type="text" id="categoriesAccess" name="categoriesAccess" />
	<input type="text" id="categoriesApprove" name="categoriesApprove" />
	<input type="text" id="roleID" name="roleID" value="${param.rID}"/>
</form>
<div class="modal fade span7" id="newRoleModal" tabIndex="-1" role="dialog"  aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">New Role</h4>
        </div>
        <div class="modal-body">			
			<div class="form-group">
				<label for="roleName">Name</label>
				<div class="form-control">
				<input type="text" id="roleName" name="roleName" maxlength="100">
				</div>				
			</div>
			<div class="form-group">
				<label for="roleSubsite">For Subsite</label>
				<div class="form-control">
					<select id="roleSubsite" name="roleSubsite">
						<c:forEach items="${SubsiteFacade.getAllSubsites()}" var="ss">
							<option value="${ss.id}" data-sID="${ss.id}">${ss.name}</option>
						</c:forEach>						
					</select>
				</div>				
			</div>
			<div class="form-group">
				<label for="roleDesc">Description</label>
				<div class="form-control">
					<textarea id="roleDesc" name="roleDesc" rows="5" ></textarea>
				</div>				
			</div>				        	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
          <button type="button" class="btn btn-primary" onclick="createRole();">Ok</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  
  <div class="modal fade span7" id="newSubsiteModal" tabIndex="-1" role="dialog"  aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4 class="modal-title">New Subsite</h4>
        </div>
        <div class="modal-body">			
			<div class="form-group">
				<label for="subsiteName">Name</label>
				<div class="form-control">
				<input type="text" id="subsiteName" name="subsiteName" maxlength="100">
				</div>				
			</div>			
			<div class="form-group">
				<label for="subsiteDesc">Description</label>
				<div class="form-control">
					<textarea id="subsiteDesc" name="subsiteDesc" rows="5" ></textarea>
				</div>				
			</div>				        	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
          <button type="button" class="btn btn-primary" onclick="createSubsite();">Ok</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
</body>
<script>
function toggleThis(oName,txtName,obj)
{	
	var fld = $("#" + txtName);
		
	if(obj.checked)
		addThis(oName,fld);
	else
	{
		removeThis(oName,fld);
		//chkbx.removeAttr("checked");
	}
}


function addThis(txt,f)
{
	
	if(f.val() == "")
		f.val(txt);
	else
		f.val(f.val() + "," + txt);
}


function removeThis(txt,f)
{	
	f.val(f.val().replace(txt + ",",""));
	f.val(f.val().replace("," + txt,""));	
	f.val(f.val().replace(txt,""));
}

function openNewModal(n)
{
	$("#new" + n + "Modal").modal('show');
}

function createRole()
{
	$.ajax({

		type : "POST",
		url : "../AjaxToDB.do",
		async : false,
		data : {
			oName : "Role",			
			setName : $("#roleName").val(),
			setDescription : $("#roleDesc").val(),
			objSubsite: $("#roleSubsite option:selected").attr('data-sID'),			
			objUser : $("#objUser").val()
		},
		success : function(ObjID, status)
				{
					$.ajax({
						url : "../Reloader.do?o=Role",
						success : function() {
							location.reload();
							//say("<font color='red'>New Role created!</font>");
						}
					});
					$("#newRoleModal").modal('hide');
				},
		error: function(){ say("<font color='red'>Error adding new Role!</font>");}
	});
}


function createSubsite()
{
	$.ajax({

		type : "POST",
		url : "../AjaxToDB.do",
		async : false,
		data : {
			oName : "Subsite",			
			setName : $("#subsiteName").val(),
			setDescription : $("#subsiteDesc").val()					
		},
		success : function(ObjID, status)
				{
					$.ajax({
						url : "../Reloader.do?o=Subsite",
						success : function(){location.reload();}  //say("<font color='green'>New Subsite Added!</font>");}												
					});
					$("#newSubsiteModal").modal('hide');
				},
		error: function(){say("<font color='red'>Error adding new Subsite!</font>");}
	});
}

function say(x)
{
	$("#msg").html(x);
}

function assign()
{
	$.ajax({
		type : "POST",
		url : "../AjaxToDB.do",
		async : false,
		data : {
			oName: "Role",
			id : $("#roleID").val(),
			setAccessManagementPages: $("#managementFilesAccess").val(),
			setApproveManagementPages: $("#managementFilesApprove").val()
		},
		success : function(ObjID, status)
				{
					$.ajax({
						url : "../Reloader.do?o=Role",
						success : function(){say("<font color='green'>Acccess Assigned!</font>");}												
					});					
				},
		error: function(){say("<font color='red'>Error assigning access!</font>");}
	});
}

$(function()
{
	var mfs = "";
	if($("#managementFilesAccess").val() != "")
		mfs = $("#managementFilesAccess").val().split(",");
		
	for(var i=0; i< mfs.length; i++)
		$("input[id='" + mfs[i] + "*mf_access']").attr('checked','checked');
	
	if($("#managementFilesApprove").val() != "")
		mfs = $("#managementFilesApprove").val().split(",");
		
	for(var i=0; i< mfs.length; i++)
		$("input[id='" + mfs[i] + "*mf_approve']").attr('checked','checked');
});

</script>
</html>